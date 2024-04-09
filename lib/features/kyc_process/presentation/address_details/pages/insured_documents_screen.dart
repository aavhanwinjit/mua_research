import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/por_document_element/por_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/mixins/get_por_document_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/por_docs_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/upload_por_docs_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/address_details_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container_2.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/buttons/remove_document_button.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InsuredDocumentsScreen extends ConsumerStatefulWidget {
  const InsuredDocumentsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddressDetailsScreenState();
}

class _AddressDetailsScreenState extends ConsumerState<InsuredDocumentsScreen> with GetPORDocumentTypesMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(porDocsTypesListLoading.notifier).update((state) => false);

      final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
      selectedDocsListProvider.clearList();

      selectedDocsListProvider.addElementToList();

      getPORDocumentType(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool porDocTypeLoading = ref.watch(porDocsTypesListLoading);

    final porDocTypesNotifier = ref.watch(pORDocsTypesNotifierProvider.notifier);
    ref.watch(pORDocsTypesNotifierProvider);

    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          backIcon: Icons.close,
          title: Strings.uploadInsuredDocuments,
        ),
        bottomNavigationBar: !porDocTypeLoading ? _bottomNavBarWidget() : null,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(),
                  SizedBox(height: 8.h),
                  _subTitle(),
                  SizedBox(height: 20.h),
                  if (porDocTypeLoading) const AddressDetailsLoadingWidget(),
                  if (!porDocTypeLoading) ...[
                    if (porDocTypesNotifier.haveList()) ...[
                      _documentWidgetList(),
                    ],
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _documentWidgetList() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPorDocTypeListNotifierProvider);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: selectedDocsListProvider.list().length,
      itemBuilder: (context, index) {
        PORDocumentElement item = selectedDocsListProvider.list()[index];

        return _documentElement(item, index);
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 36.h);
      },
    );
  }

  Widget _documentElement(PORDocumentElement item, int index) {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPorDocTypeListNotifierProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _dropdownWidget(item, index),
        SizedBox(height: 24.h),
        DocumentUploadContainer2(
          filePath: item.filePath,
          documentCode: item.documentElement?.documentCode ?? "",
          onChange: (String path, ScanDocumentResponseBody? response) {
            selectedDocsListProvider.updateElementsFilePath(filePath: path, index: index);
            selectedDocsListProvider.updateElementScanResponse(scanResponse: response, index: index);

            context.pop();
          },
          clearFile: () {
            selectedDocsListProvider.clearElementsFilePath(index: index);
          },
          label: Strings.insuredDocumentContainerLabel,
          cameraScreenTitle: Strings.scanDocuments,
          cameraScreenDescription: Strings.insuredDocCameraLabel,
          reviewScreenTitle: Strings.uploadInsuredDocuments,
          disable: item.documentElement == null,
          disableCallback: () {
            context.showErrorSnackBar(message: Strings.selectDocumentType);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (index != 0)
              RemoveDocumentButton(
                onPressed: () {
                  selectedDocsListProvider.removeElementFromList(index);
                },
              ),
            const SizedBox(),
            if ((selectedDocsListProvider.list().length - 1) == index)
              AddDocumentButton(
                onPressed: () {
                  if (selectedDocsListProvider.list().length < 2) {
                    selectedDocsListProvider.addElementToList();
                  } else {
                    context.showErrorSnackBar(message: Strings.only2Documents);
                  }
                },
              ),
          ],
        ),
      ],
    );
  }

  Widget _subTitle() {
    return Text(
      Strings.specifyDocumentType,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _title() {
    return Text(
      Strings.uploadProofOfRelationship,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: black,
      ),
    );
  }

  Widget _dropdownWidget(PORDocumentElement item, int index) {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPorDocTypeListNotifierProvider);

    final porDocTypesNotifier = ref.watch(pORDocsTypesNotifierProvider.notifier);
    ref.watch(pORDocsTypesNotifierProvider);

    return CustomDrowDownField(
      value: item.documentElement,
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
        selectedDocsListProvider.updateElementsSelectedDocType(index: index, element: value as PORDocumentTypeModel);
      },
      items: porDocTypesNotifier.porDocsTypesList().map((PORDocumentTypeModel value) {
        return DropdownMenuItem<PORDocumentTypeModel>(
          value: value,
          child: Text(
            value.porDocType ?? "-",
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        onTap: () {
          // context.pushNamed(AppRoutes.addressReviewSubmitScreen);

          final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

          selectedDocsListProvider.list().forEach((element) {
            print(element.filePath);
          });
        },
        label: Strings.next,
      ),
    );
  }
}
