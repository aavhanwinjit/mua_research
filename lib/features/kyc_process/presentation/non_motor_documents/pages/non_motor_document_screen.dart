import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_category_enums.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/non_motor_insurance_document_element/non_motor_insurance_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/document_category_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/insurance_stage_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/mixins/get_non_motor_insurance_doc_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/non_motor_insurance_doc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/non_motor_insurance_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/selected_non_motor_insurance_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/widgets/non_motor_insurance_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container_2.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/dropdown_widget_non_motor.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/buttons/remove_document_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NonMotorDocumentScreen extends ConsumerStatefulWidget {
  const NonMotorDocumentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PolicyDocumentsScreenState();
}

class _PolicyDocumentsScreenState extends ConsumerState<NonMotorDocumentScreen> with GetNonMotorInsuranceDocTypeMixin {
  String? dropdownValue;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setSelectedDocumentCategory();
      ref.watch(nonMotorInsuranceDocsTypesListLoading.notifier).update((state) => false);
      // ref
      //     .watch(selectedMotorInsuranceDocTypeProvider.notifier)
      //     .update((state) => null);
      // ref
      //     .watch(motorInsuranceProofFilePathProvider.notifier)
      //     .update((state) => null);
      ref.watch(nonMotorInsuranceDocOCRApiResponse.notifier).update((state) => null);
      ref.watch(nonMotorInsuranceDocOCRLoadingProvider.notifier).update((state) => false);
      ref.watch(ocrNameMatched.notifier).update((state) => true);
      ref.watch(nonMotorInsuranceOtherNameProvider.notifier).update((state) => null);
      ref.watch(nonMotorInsuranceSurnameProvider.notifier).update((state) => null);

      final selectedDocsListProvider = ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);
      selectedDocsListProvider.clearList();

      selectedDocsListProvider.addElementToList();

      getNonMotorInsuranceDocumentTypes(context: context, ref: ref);
    });
  }

  void setSelectedDocumentCategory() {
    final documentCategoryNotifier = ref.watch(documentCategoryNotifierProvider.notifier);
    ref.watch(documentCategoryNotifierProvider);

    final List<DocumentCategoryModel> documentCategoryList = documentCategoryNotifier.documentCattegoryList();
    final DocumentCategoryModel documentCategory = documentCategoryList
        .where((element) => element.documentCategory == DocumentCategoryEnums.NonMotor.toString().split('.').last)
        .toList()
        .first;

    ref.read(selectedDocumentCategoryProvider.notifier).update((state) => documentCategory);
  }

  @override
  Widget build(BuildContext context) {
    final bool nonMotorInsuranceDocTypeLoading = ref.watch(nonMotorInsuranceDocsTypesListLoading);

    final nonMotorInsuranceDocTypesNotifier = ref.watch(nonMotorInsuranceDocsTypesNotifierProvider.notifier);
    ref.watch(nonMotorInsuranceDocsTypesNotifierProvider);

    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.nonMotorDocuments,
        ),
        bottomNavigationBar: _bottomNavBarWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _subTitle(),
                  SizedBox(height: 20.h),
                  if (nonMotorInsuranceDocTypeLoading) const NonMotorInsuranceDetailsLoadingWidget(),
                  if (!nonMotorInsuranceDocTypeLoading) ...[
                    if (nonMotorInsuranceDocTypesNotifier.haveList()) ...[
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

  Widget _subTitle() {
    return Text(
      Strings.nonMotorDocsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _documentWidgetList() {
    final selectedDocsListProvider = ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);
    ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: selectedDocsListProvider.list().length,
      itemBuilder: (context, index) {
        NonMotorInsuranceDocumentElement item = selectedDocsListProvider.list()[index];
        return _documentElement(item, index);
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 36.h);
      },
    );
  }

  Widget _documentElement(NonMotorInsuranceDocumentElement item, int index) {
    final selectedDocsListProvider = ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);
    ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider);

    final nonMotorInsuranceDocTypesNotifier = ref.read(nonMotorInsuranceDocsTypesNotifierProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownWidgetNonMotor(item: item, index: index),
        SizedBox(height: 24.h),
        DocumentUploadContainer2(
          uploadGeneratedPdfDoc: true,
          // pdfPath: item.nonMotorDocPdfPath,
          // onChangePdf: (String path, ScanDocumentResponseBody? response) async {
          //   selectedDocsListProvider.updateElementsPdfFilePath(filePath: path, index: index);
          //   selectedDocsListProvider.updateElementScanResponse2(scanResponse: response, index: index);

          //   context.pop();
          // },
          // clearPdf: () {
          //   selectedDocsListProvider.clearElementsPdfFilePath(index: index);
          // },
          filePath: item.nonMotorDocImagePath,
          documentCode: item.documentElement?.documentCode ?? "",
          onChange: (String path, ScanDocumentResponseBody? response) async {
            selectedDocsListProvider.updateElementsFilePath(filePath: path, index: index);
            selectedDocsListProvider.updateElementScanResponse(scanResponse: response, index: index);

            context.pop();
          },
          clearFile: () {
            selectedDocsListProvider.clearElementsFilePath(index: index);
          },
          label: Strings.nonMotorDocsContainerLabel,
          cameraScreenTitle: Strings.scanDocuments,
          cameraScreenDescription: Strings.insuredDocCameraLabel,
          reviewScreenTitle: Strings.uploadMotorInsuranceDocuments,
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
            // show add doc button only for the last element in the list
            if ((selectedDocsListProvider.list().length - 1) == index &&
                index != nonMotorInsuranceDocTypesNotifier.nonMotorInsuranceDocsTypesList().length - 1)
              // if (index == 0)
              AddDocumentButton(
                onPressed: () {
                  // only 2 docs are allowed to add
                  // if (selectedDocsListProvider.list().length < 2) {
                  selectedDocsListProvider.addElementToList();
                  // } else {
                  //   context.showErrorSnackBar(message: Strings.only2Documents);
                  // }
                },
              ),
          ],
        ),
      ],
    );
  }

  // Widget _dropdownWidget(NonMotorInsuranceDocumentElement item, int index) {
  //   final selectedDocsListProvider = ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);
  //   ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider);

  //   final nonMotorInsuranceDocTypesNotifier = ref.watch(nonMotorInsuranceDocsTypesNotifierProvider.notifier);
  //   ref.watch(nonMotorInsuranceDocsTypesNotifierProvider);

  //   return CustomDrowDownField(
  //     value: item.documentElement,
  //     labelText: Strings.selectDocument,
  //     validator: (value) {
  //       return value == null ? Strings.selectDocument : null;
  //     },
  //     onChanged: (value) {
  //       selectedDocsListProvider.updateElementsSelectedDocType(
  //           index: index, element: value as NonMotorInsuranceDocumentTypeModel);
  //     },
  //     items: nonMotorInsuranceDocTypesNotifier
  //         .nonMotorInsuranceDocsTypesList()
  //         .map((NonMotorInsuranceDocumentTypeModel value) {
  //       return DropdownMenuItem<NonMotorInsuranceDocumentTypeModel>(
  //         value: value,
  //         child: Text(
  //           value.nonMotorInsuranceDocType ?? "-",
  //           style: TextStyle(
  //             fontSize: 14.sp,
  //           ),
  //         ),
  //       );
  //     }).toList(),
  //   );
  // }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        disable: buttonDisableCheck(),
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadNonMotorDocuments);
        },
        onTap: () {
          context.pushNamed(AppRoutes.nonMotorDocsReviewSubmitScreen);
        },
        label: Strings.next,
      ),
    );
  }

  bool buttonDisableCheck() {
    final selectedDocsListProvider = ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);

    if (selectedDocsListProvider.list().isEmpty) {
      return true;
    }

    return selectedDocsListProvider.list().any((element) {
      if (element.nonMotorDocImagePath == null || element.scanResponse == null || element.documentElement == null) {
        return true;
      } else {
        return false;
      }
    });
  }
}
