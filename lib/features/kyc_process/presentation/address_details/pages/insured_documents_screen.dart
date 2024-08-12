import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_category_enums.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/por_document_element/por_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/mixins/get_por_document_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/por_docs_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/upload_por_docs_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/address_details_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/mixins/google_ml_kit_ocr_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/document_category_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/insurance_stage_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container_2.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/buttons/remove_document_button.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InsuredDocumentsScreen extends ConsumerStatefulWidget {
  const InsuredDocumentsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InsuredDocumentsScreenState();
}

class _InsuredDocumentsScreenState extends ConsumerState<InsuredDocumentsScreen>
    with GetPORDocumentTypesMixin, GoogleMLKitOCRMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setSelectedDocumentCategory();

      ref.watch(porDocsTypesListLoading.notifier).update((state) => false);
      ref.watch(porDocUploadProcess.notifier).update((state) => true);
      print("Updating POR document process provider");

      final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
      selectedDocsListProvider.clearList();

      selectedDocsListProvider.addElementToList();

      getPORDocumentType(context: context, ref: ref);
    });
  }

  void setSelectedDocumentCategory() {
    final documentCategoryNotifier = ref.watch(documentCategoryNotifierProvider.notifier);
    ref.watch(documentCategoryNotifierProvider);

    final List<DocumentCategoryModel> documentCategoryList = documentCategoryNotifier.documentCattegoryList();
    final DocumentCategoryModel documentCategory = documentCategoryList
        .where((element) => element.documentCategory == DocumentCategoryEnums.POR.toString().split('.').last)
        .toList()
        .first;

    ref.read(selectedDocumentCategoryProvider.notifier).update((state) => documentCategory);
  }

  @override
  Widget build(BuildContext context) {
    final bool porDocTypeLoading = ref.watch(porDocsTypesListLoading);

    final porDocTypesNotifier = ref.watch(pORDocsTypesNotifierProvider.notifier);
    ref.watch(pORDocsTypesNotifierProvider);
    print("provider value:");
    print(ref.watch(porDocUploadProcess));

    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        if (didPop) {
          return;
        } else {
          ref.watch(porDocUploadProcess.notifier).update((state) => false);
          print(" provider value:");
          print(ref.watch(porDocUploadProcess));
          context.pop();
        }
      },
      child: GestureDetector(
        onTap: () {
          KeyboardHelper.onScreenTap(context);
        },
        child: Scaffold(
          appBar: AppBarHelper.showCustomAppbar(
            context: context,
            backIcon: Icons.close,
            title: Strings.uploadInsuredDocuments,
            onPressed: () {
              ref.watch(porDocUploadProcess.notifier).update((state) => false);
              print(" provider value:");
              print(ref.watch(porDocUploadProcess));
              context.pop();
            },
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
          onChange: (String path, ScanDocumentResponseBody? response) async {
            selectedDocsListProvider.updateElementsFilePath(filePath: path, index: index);
            selectedDocsListProvider.updateElementScanResponse(scanResponse: response, index: index);
            // do google ml kit if nic card selected
            if (item.documentElement?.documentCode == DocumentCodes.NIL.toString().split('.').last) {
              // final ({String? firstName, String? lastName}) ocrResult =
              //     await performLandlordNICCardOCR(ref: ref, context: context, filePath: path);

              selectedDocsListProvider.updateElementOcrFirstNameAndLastName(
                  index: index, lastName: response?.ocrResponse?.documentdata?.lastName);
            }

            selectedDocsListProvider.updateElementIssueDate(
                index: index, issueDate: response?.ocrResponse?.documentdata?.issueDate);

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

            // show add doc button only for the last element in the list
            if ((selectedDocsListProvider.list().length - 1) == index)
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
        disable: buttonDisableCheck(),
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadInsuredDocuments);
        },
        onTap: () {
          if (checkIfUserIsMarried()) {
            final marriageCertSelected = checkIfMarriageCertIsSelected();

            if (marriageCertSelected == false) {
              context.showErrorSnackBar(message: Strings.uploadMarriageCertificate);
              return;
            }
          }

          bool leaseAgreementSelected = checkIfLeaseAgreementIsSelected();

          if (leaseAgreementSelected == true) {
            bool nicOfLandlordSelected = checkIfNICofLandlordIsSelected();

            if (nicOfLandlordSelected == false) {
              context.showErrorSnackBar(message: Strings.uploadNICofLandlord);
              return;
            }
          }

          _saveInsuredDocDataAndNavigate();
        },
        label: Strings.next,
      ),
    );
  }

  void _saveInsuredDocDataAndNavigate() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    selectedDocsListProvider.list().forEach((element) {
      if ((element.documentElement?.documentCode != DocumentCodes.NIL.toString().split('.').last) &&
          (element.scanResponse?.ocrResponse?.documentdata?.isLastNameAvailable == true)) {
        final selectedApplication = ref.watch(selectedApplicationProvider);

        element.extractedLastName = selectedApplication?.idDocSurname;
      }
    });

    context.pushNamed(AppRoutes.insuredReviewSubmitScreen);
  }

  bool checkIfUserIsMarried() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.maritalStatus == MaritalStatus.MARRIED.toString().split('.').last) {
      return true;
    }
    return false;
  }

  bool checkIfMarriageCertIsSelected() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    return selectedDocsListProvider
        .list()
        .any((element) => element.documentElement?.documentCode == DocumentCodes.MRC.toString().split('.').last);
  }

  bool checkIfLeaseAgreementIsSelected() {
    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.addressDocumentTypes?.documentCode == DocumentCodes.LAA.toString().split('.').last) {
      return true;
    }

    return false;
  }

  bool checkIfNICofLandlordIsSelected() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    return selectedDocsListProvider
        .list()
        .any((element) => element.documentElement?.documentCode == DocumentCodes.NIL.toString().split('.').last);
  }

  bool buttonDisableCheck() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

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
