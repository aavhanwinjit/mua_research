import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_policy_document_types/response/get_policy_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/policy_document_element.dart/policy_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/address_details_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/mixins/get_policy_docs_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/policy_doc_type_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/policy_documents_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/selected_policy_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container_2.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/buttons/remove_document_button.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PolicyDocumentsScreen extends ConsumerStatefulWidget {
  const PolicyDocumentsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PolicyDocumentsScreenState();
}

class _PolicyDocumentsScreenState extends ConsumerState<PolicyDocumentsScreen> with GetPolicyDocsTypesMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(policyDocsTypesListLoading.notifier).update((state) => false);

      final selectedDocsListProvider = ref.watch(selectedPolicyDocTypeListNotifierProvider.notifier);
      selectedDocsListProvider.clearList();

      selectedDocsListProvider.addElementToList();

      getPolicyDocumentTypes(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool policyDocTypeLoading = ref.watch(policyDocsTypesListLoading);

    final policyDocTypesNotifier = ref.watch(policyDocTypeNotifierProvider.notifier);
    ref.watch(policyDocTypeNotifierProvider);

    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.policyDocuments,
        ),
        bottomNavigationBar: !policyDocTypeLoading ? _bottomNavBarWidget() : null,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _subTitle(),
                  SizedBox(height: 20.h),
                  if (policyDocTypeLoading) const AddressDetailsLoadingWidget(),
                  if (!policyDocTypeLoading) ...[
                    if (policyDocTypesNotifier.haveList()) ...[
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
    final selectedDocsListProvider = ref.watch(selectedPolicyDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPolicyDocTypeListNotifierProvider);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: selectedDocsListProvider.list().length,
      itemBuilder: (context, index) {
        PolicyDocumentElement item = selectedDocsListProvider.list()[index];

        return _documentElement(item, index);
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 36.h);
      },
    );
  }

  Widget _documentElement(PolicyDocumentElement item, int index) {
    final selectedDocsListProvider = ref.watch(selectedPolicyDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPolicyDocTypeListNotifierProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _dropdownWidget(item, index),
        SizedBox(height: 24.h),
        DocumentUploadContainer2(
          filePath: item.filePath,
          documentCode: item.documentElement?.documentCode ?? "",
          onChange: (String path, ScanDocumentResponseBody? response) async {
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

            // show add doc button only for the first element in the list
            if (index == 0)
              // if ((selectedDocsListProvider.list().length - 1) == index)
              AddDocumentButton(
                onPressed: () {
                  // only 2 docs are allowed to add
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

  Widget _dropdownWidget(PolicyDocumentElement item, int index) {
    final selectedDocsListProvider = ref.watch(selectedPolicyDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPolicyDocTypeListNotifierProvider);

    final policyDocTypesNotifier = ref.watch(policyDocTypeNotifierProvider.notifier);
    ref.watch(policyDocTypeNotifierProvider);

    return CustomDrowDownField(
      value: item.documentElement,
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
        selectedDocsListProvider.updateElementsFilePath(filePath: null, index: index);

        selectedDocsListProvider.updateElementsSelectedDocType(index: index, element: value as PolicyDocumentTypeModel);
      },
      items: policyDocTypesNotifier.list().map((PolicyDocumentTypeModel value) {
        return DropdownMenuItem<PolicyDocumentTypeModel>(
          value: value,
          child: Text(
            value.policyDocTypes ?? "-",
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
        disable: buttonDisableCheck(),
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadPolicyDocuments);
        },
        onTap: () {
          context.pushNamed(AppRoutes.pdReviewSubmitScreen);
        },
        label: Strings.next,
      ),
    );
  }

  bool buttonDisableCheck() {
    final selectedDocsListProvider = ref.watch(selectedPolicyDocTypeListNotifierProvider.notifier);

    if (selectedDocsListProvider.list().isEmpty) {
      return true;
    }

    return selectedDocsListProvider.list().any((element) {
      if (element.filePath == null || element.scanResponse == null || element.documentElement == null) {
        return true;
      } else {
        return false;
      }
    });
  }
}
