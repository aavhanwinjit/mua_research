import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_category_enums.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/motor_insurance_document_element/motor_insurance_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/common_mixins/scan_document_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/document_category_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/insurance_stage_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/mixins/get_motor_insurance_doc_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_doc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/selected_motor_insurance_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/widgets/dropdown_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/widgets/motor_insurance_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container_2.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/buttons/remove_document_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MotorDocumentScreen extends ConsumerStatefulWidget {
  const MotorDocumentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PolicyDocumentsScreenState();
}

class _PolicyDocumentsScreenState extends ConsumerState<MotorDocumentScreen>
    with GetMotorInsuranceDocTypeMixin, ScanDocumentMixin {
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setSelectedDocumentCategory();
      ref.watch(motorInsuranceDocsTypesListLoading.notifier).update((state) => false);
      // ref
      //     .watch(selectedMotorInsuranceDocTypeProvider.notifier)
      //     .update((state) => null);
      // ref
      //     .watch(motorInsuranceProofFilePathProvider.notifier)
      //     .update((state) => null);
      ref.watch(motorInsuranceDocOCRApiResponse.notifier).update((state) => null);
      ref.watch(motorInsuranceDocOCRLoadingProvider.notifier).update((state) => false);
      ref.watch(ocrNameMatched.notifier).update((state) => true);
      ref.watch(motorInsuranceOtherNameProvider.notifier).update((state) => null);
      ref.watch(motorInsuranceSurnameProvider.notifier).update((state) => null);

      final selectedDocsListProvider = ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);
      selectedDocsListProvider.clearList();

      selectedDocsListProvider.addElementToList();

      getMotorInsuranceDocumentTypes(context: context, ref: ref);
    });
  }

  void setSelectedDocumentCategory() {
    final documentCategoryNotifier = ref.watch(documentCategoryNotifierProvider.notifier);
    ref.watch(documentCategoryNotifierProvider);

    final List<DocumentCategoryModel> documentCategoryList = documentCategoryNotifier.documentCattegoryList();
    final DocumentCategoryModel documentCategory = documentCategoryList
        .where((element) => element.documentCategory == DocumentCategoryEnums.Motor.toString().split('.').last)
        .toList()
        .first;

    ref.read(selectedDocumentCategoryProvider.notifier).update((state) => documentCategory);
  }

  @override
  Widget build(BuildContext context) {
    final bool motorInsuranceDocTypeLoading = ref.watch(motorInsuranceDocsTypesListLoading);
    final motorInsuranceDocTypesNotifier = ref.watch(motorInsuranceDocsTypesNotifierProvider.notifier);
    ref.watch(motorInsuranceDocsTypesNotifierProvider);

    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.motorDocuments,
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
                  if (motorInsuranceDocTypeLoading) const MotorInsuranceDetailsLoadingWidget(),
                  if (!motorInsuranceDocTypeLoading) ...[
                    if (motorInsuranceDocTypesNotifier.haveList()) ...[
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
      Strings.motorDocsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _documentWidgetList() {
    final selectedDocsListProvider = ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);
    ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider);
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: selectedDocsListProvider.list().length,
      itemBuilder: (context, index) {
        MotorInsuranceDocumentElement item = selectedDocsListProvider.list()[index];
        return _documentElement(item, index);
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 36.h);
      },
    );
  }

  Widget _documentElement(MotorInsuranceDocumentElement item, int index) {
    final selectedDocsListProvider = ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);
    ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DropdownWidget(item: item, index: index),
        SizedBox(height: 24.h),

        // show textfield if HP is selected
        if (item.documentElement?.documentCode == DocumentCodes.HRP.toString().split('.').last) ...[
          CustomTextFormField(
            label: Strings.registrationNumber,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              selectedDocsListProvider.updateElementsRegistrationNumber(index: index, registrationNumber: value.trim());
              selectedDocsListProvider.updateElementsFilePath(filePath: null, index: index);
            },
            // validator: (selectedKycType?.kycTypeId == KYCType.MOTOR_INSURANCE ||
            //         selectedKycType?.kycTypeId == KYCType.NON_MOTOR_INSURANCE)
            //     ? (value) {
            //         if (value!.trim().isEmpty) {
            //           return Strings.quoteNumberValidationString;
            //         }
            //         return null;
            //       }
            //     : null,
          ),
          SizedBox(height: 24.h),
          //
        ],

        DocumentUploadContainer2(
            filePath: item.motorDocImagePath,
            documentCode: item.documentElement?.documentCode ?? "",
            onChange: (String path, ScanDocumentResponseBody? response) async {
              selectedDocsListProvider.updateElementsFilePath(filePath: path, index: index);
              selectedDocsListProvider.updateElementScanResponse(scanResponse: response, index: index);

              context.pop();
            },
            clearFile: () {
              selectedDocsListProvider.clearElementsFilePath(index: index);
            },
            label: Strings.motorDocsContainerLabel,
            cameraScreenTitle: Strings.scanDocuments,
            cameraScreenDescription: Strings.insuredDocCameraLabel,
            reviewScreenTitle: Strings.uploadMotorInsuranceDocuments,
            disable: (item.documentElement == null) ||
                (item.documentElement?.documentCode == DocumentCodes.HRP.toString().split('.').last &&
                    (item.registrationNumber == null || item.registrationNumber!.isEmpty)),
            disableCallback: () {
              if (item.documentElement?.documentCode == DocumentCodes.HRP.toString().split('.').last &&
                  (item.registrationNumber == null || item.registrationNumber!.isEmpty)) {
                context.showErrorSnackBar(message: Strings.enterRegistrationNumber);
              } else {
                context.showErrorSnackBar(message: Strings.selectDocumentType);
              }
            },
            registrationNumber: item.documentElement?.documentCode == DocumentCodes.HRP.toString().split('.').last
                ? item.registrationNumber
                : null),
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
            if ((selectedDocsListProvider.list().length - 1) == index)
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

  // Widget _dropdownWidget(MotorInsuranceDocumentElement item, int index) {
  //   final selectedDocsListProvider = ref.read(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);
  //   ref.read(selectedMotorInsuranceDocTypeListNotifierProvider);

  //   final motorInsuranceDocTypesNotifier = ref.read(motorInsuranceDocsTypesNotifierProvider.notifier);
  //   ref.read(motorInsuranceDocsTypesNotifierProvider);

  //   List<MotorInsuranceDocumentTypeModel> list =
  //       List.from(motorInsuranceDocTypesNotifier.motorInsuranceDocsTypesList());

  //   // if (selectedDocsListProvider.haveList()) {
  //   //   selectedDocsListProvider.list().forEach(
  //   //     (element) {
  //   //       list.removeWhere((e) => e.mDocumentTypeId == element.documentElement?.mDocumentTypeId);
  //   //     },
  //   //   );
  //   // }

  //   // return CustomDrowDownField(
  //   //   value: item.documentElement,
  //   //   labelText: Strings.selectDocument,
  //   //   validator: (value) {
  //   //     return value == null ? Strings.selectDocument : null;
  //   //   },
  //   //   onChanged: (value) {
  //   //     selectedDocsListProvider.updateElementsSelectedDocType(
  //   //         index: index, element: value as MotorInsuranceDocumentTypeModel);
  //   //   },
  //   //   items: list.map((MotorInsuranceDocumentTypeModel value) {
  //   //     return DropdownMenuItem<MotorInsuranceDocumentTypeModel>(
  //   //       value: value,
  //   //       child: Text(
  //   //         value.motorInsuranceDocType ?? "-",
  //   //         style: TextStyle(
  //   //           fontSize: 14.sp,
  //   //         ),
  //   //       ),
  //   //     );
  //   //   }).toList(),
  //   // );
  // }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        disable: buttonDisableCheck(),
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadMotorDocuments);
        },
        onTap: () {
          final selectedDocsListProvider = ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);

          // selectedDocsListProvider.list().forEach(
          //   (element) {
          //     if (element.documentElement!.documentCode == DocumentCodes.HRP.toString().split('.').last) {
          //       if (element.scanResponse!.ocrResponse!.documentdata!.kycStatus != "Success") {
          //         context.showErrorSnackBar(message: "Horse power kyc failed. Enter correct registration number");
          //       } else {
          //         context.pushNamed(AppRoutes.motorDocsReviewSubmitScreen);
          //       }
          //     } else {
          //       context.pushNamed(AppRoutes.motorDocsReviewSubmitScreen);
          //     }
          //   },
          // );

          bool result = selectedDocsListProvider.list().any((element) {
            if (element.documentElement!.documentCode == DocumentCodes.HRP.toString().split('.').last) {
              if (element.scanResponse!.ocrResponse!.documentdata!.kycStatus != "Success") {
                return false;
              } else {
                return true;
              }
            } else {
              return true;
            }
          });

          if (result == true) {
            context.pushNamed(AppRoutes.motorDocsReviewSubmitScreen);
          } else {
            context.showErrorSnackBar(message: Strings.horsePowerKYCFailed);
          }
        },
        label: Strings.next,
      ),
    );
  }

  bool buttonDisableCheck() {
    final selectedDocsListProvider = ref.watch(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);

    if (selectedDocsListProvider.list().isEmpty) {
      return true;
    }

    return selectedDocsListProvider.list().any((element) {
      if (element.motorDocImagePath == null || element.scanResponse == null || element.documentElement == null) {
        return true;
      } else {
        return false;
      }
    });
  }
}
