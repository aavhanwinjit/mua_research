import 'dart:convert';
import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/helpers/kyc_status_dialog_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/mixins/get_address_doc_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_docs_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/address_details_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/common_mixins/scan_document_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddressDetailsScreen extends ConsumerStatefulWidget {
  const AddressDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddressDetailsScreenState();
}

class _AddressDetailsScreenState extends ConsumerState<AddressDetailsScreen>
    with GetAddressDocTypeMixin, ScanDocumentMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(addressDocsTypesListLoading.notifier).update((state) => false);
      ref.watch(selectedAddressDocTypeProvider.notifier).update((state) => null);
      ref.watch(addressProofFilePathProvider.notifier).update((state) => null);
      ref.watch(addressDocOCRApiResponse.notifier).update((state) => null);
      ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
      ref.watch(ocrNameMatched.notifier).update((state) => true);
      ref.watch(addressOtherNameProvider.notifier).update((state) => null);
      ref.watch(addressSurnameProvider.notifier).update((state) => null);
      ref.watch(addressTextProvider.notifier).update((state) => null);

      getAddressDocumentTypes(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool addressDocTypeLoading = ref.watch(addressDocsTypesListLoading);

    final addressDocTypesNotifier = ref.watch(addressDocsTypesNotifierProvider.notifier);
    ref.watch(addressDocsTypesNotifierProvider);

    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.addressDetails,
        ),
        bottomNavigationBar: !addressDocTypeLoading ? _bottomNavBarWidget() : null,
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
                  if (addressDocTypeLoading) const AddressDetailsLoadingWidget(),
                  if (!addressDocTypeLoading) ...[
                    if (addressDocTypesNotifier.haveList()) ...[
                      _dropdownWidget(),
                      SizedBox(height: 24.h),
                      DocumentUploadContainer(
                        documentCode: ref.watch(selectedAddressDocTypeProvider)?.documentCode,
                        provider: addressProofFilePathProvider,
                        disable: ref.watch(selectedAddressDocTypeProvider) == null,
                        disableCallback: () {
                          context.showErrorSnackBar(message: Strings.selectDocumentType);
                        },
                        cameraScreenTitle: Strings.scanDocuments,
                        label: Strings.addressDocumentContainerLabel,
                        cameraScreenDescription: Strings.addressDocCameraLabel,
                        reviewScreenTitle: Strings.addressDetails,
                        hideClearButton: ref.watch(addressDocOCRLoadingProvider),
                      ),
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
      Strings.addressDetailsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _title() {
    return Text(
      Strings.uploadAddressProof,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: black,
      ),
    );
  }

  Widget _dropdownWidget() {
    final addressDocTypesNotifier = ref.watch(addressDocsTypesNotifierProvider.notifier);
    ref.watch(addressDocsTypesNotifierProvider);

    bool loading = ref.watch(addressDocOCRLoadingProvider);

    return CustomDrowDownField(
      value: ref.watch(selectedAddressDocTypeProvider),
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: loading == true
          ? null
          : (value) {
              ref.watch(addressProofFilePathProvider.notifier).update((state) => null);
              ref.watch(selectedAddressDocTypeProvider.notifier).update((state) => value as AddressDocumentTypeModel);
            },
      items: addressDocTypesNotifier.addressDocsTypesList().map((AddressDocumentTypeModel value) {
        return DropdownMenuItem<AddressDocumentTypeModel>(
          value: value,
          child: Text(
            value.addressDocType?.trim() ?? "-",
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
        loading: ref.watch(addressDocOCRLoadingProvider),
        disable: ref.watch(addressProofFilePathProvider) == null,
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadAddressProof);
        },
        onTap: () async {
          final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

          final String? addressProofFilePath = ref.watch(addressProofFilePathProvider);
          File addressProofFile = File(addressProofFilePath ?? "");
          final List<int> addressProofFileBytes = await addressProofFile.readAsBytes() as List<int>;
          final String addressProofFileBase64 = base64Encode(addressProofFileBytes);

          await scanDocument(
            context: context,
            ref: ref,
            documentType: selectedAddressDocType?.documentCode,
            loadingProvider: addressDocOCRLoadingProvider,
            onSuccess: (ScanDocumentResponseBody? response) {
              onSuccess(response);
            },
            base64Image: addressProofFileBase64,
          );
        },
        label: Strings.next,
      ),
    );
  }

  void onSuccess(ScanDocumentResponseBody? response) {
    final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

    debugPrint("selectedAddressDocType?.documentCode: ${selectedAddressDocType?.documentCode}");

    if (selectedAddressDocType?.documentCode == DocumentCodes.UTB.toString().split('.').last) {
      if (response?.ocrResponse != null) {
        // check different conditions for ocr status

        final Documentdata? documentData = response?.ocrResponse?.documentdata;

        if (documentData?.kycStatus == "Success" &&
            documentData?.billDate != null &&
            documentData!.billDate!.isNotEmpty &&
            documentData.isFirstNameAvailable == true &&
            documentData.isLastNameAvailable == true) {
          ref.watch(addressDocOCRApiResponse.notifier).update((state) => response);
          _setCustomerName(response);
          ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
          context.pushNamed(AppRoutes.addressReviewSubmitScreen);
        } else if (documentData?.kycStatus == "Failed" &&
            documentData?.billDate != null &&
            documentData!.billDate!.isNotEmpty &&
            documentData.kycStatusMsg != null &&
            documentData.kycStatusMsg!.contains("The uploaded bill should be of last 3 months only")) {
          ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
          // Block the user here itself
          KycStatusDialogHelper.showOldBillDateDialog(context, content: documentData.kycStatusMsg ?? "");
          return;
        } else if (documentData?.kycStatus == "Failed" &&
            documentData?.billDate != null &&
            documentData!.billDate!.isNotEmpty &&
            documentData.kycStatusMsg != null &&
            documentData.kycStatusMsg!.contains("Could not detect any bill date")) {
          ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
          // Block the user here itself
          KycStatusDialogHelper.showOldBillDateDialog(context, content: documentData.kycStatusMsg ?? "");
          return;
        } else if (documentData?.kycStatus == "Failed" &&
            documentData?.billDate != null &&
            documentData!.billDate!.isNotEmpty &&
            documentData.isFirstNameAvailable == false &&
            documentData.isLastNameAvailable == true &&
            documentData.kycStatusMsg!.contains("First name did not match in the document")) {
          //allow to navigate but tell agent that the name is not matched
          ref.watch(addressDocOCRApiResponse.notifier).update((state) => response);
          _setCustomerName(response);
          ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
          ref.watch(ocrNameMatched.notifier).update((state) => false);
          context.pushNamed(AppRoutes.addressReviewSubmitScreen);
        } else if (documentData?.kycStatus == "Failed" &&
            documentData?.billDate != null &&
            documentData!.billDate!.isNotEmpty &&
            documentData.isFirstNameAvailable == true &&
            documentData.isLastNameAvailable == false &&
            documentData.kycStatusMsg!.contains("KYC validation failed")) {
          //allow to navigate but tell agent that the name is not matched
          ref.watch(addressDocOCRApiResponse.notifier).update((state) => response);
          _setCustomerName(response);
          ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
          ref.watch(ocrNameMatched.notifier).update((state) => false);
          context.pushNamed(AppRoutes.addressReviewSubmitScreen);
        } else if (documentData?.kycStatus == "Failed" &&
            documentData?.billDate != null &&
            documentData!.billDate!.isNotEmpty &&
            documentData.isFirstNameAvailable == false &&
            documentData.isLastNameAvailable == false &&
            documentData.kycStatusMsg ==
                "KYC validation failed. First name did not match in the document. Last name did not match in the document.") {
          //allow to navigate but tell agent that the name is not matched
          ref.watch(addressDocOCRApiResponse.notifier).update((state) => response);
          _setCustomerName(response);
          ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
          ref.watch(ocrNameMatched.notifier).update((state) => false);
          context.pushNamed(AppRoutes.addressReviewSubmitScreen);
        }
      }
    } else {
      ref.watch(addressDocOCRApiResponse.notifier).update((state) => response);
      _setCustomerName(response);
      ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
      context.pushNamed(AppRoutes.addressReviewSubmitScreen);
    }
  }

  void _setCustomerName(ScanDocumentResponseBody? response) {
    final AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    final String? firstName = selectedApplication?.idDocOtherName;
    final String? surname = selectedApplication?.idDocSurname;

    if (response?.ocrResponse?.documentdata?.isFirstNameAvailable == true) {
      ref.watch(addressOtherNameProvider.notifier).update((state) => firstName);
    }

    if (response?.ocrResponse?.documentdata?.isLastNameAvailable == true) {
      ref.watch(addressSurnameProvider.notifier).update((state) => surname);
    }

    if (response?.ocrResponse?.documentdata?.address != null &&
        response!.ocrResponse!.documentdata!.address!.isNotEmpty) {
      ref.watch(addressTextProvider.notifier).update((state) => response.ocrResponse?.documentdata?.address);
    }
  }
}
