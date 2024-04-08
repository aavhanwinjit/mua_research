import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/mixins/get_address_doc_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_docs_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/address_details_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/common_mixins/scan_document_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
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
      ref.watch(selectedAddressDocTypeProvider.notifier).update((state) => null);
      ref.watch(addressProofFilePathProvider.notifier).update((state) => null);
      ref.watch(addressDocOCRApiResponse.notifier).update((state) => null);
      ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);

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
                  // const AddressDetailsLoadingWidget(),
                  if (addressDocTypeLoading) const AddressDetailsLoadingWidget(),
                  if (!addressDocTypeLoading) ...[
                    if (addressDocTypesNotifier.haveList()) ...[
                      _dropdownWidget(),
                      SizedBox(height: 24.h),
                      DocumentUploadContainer(
                        provider: addressProofFilePathProvider,
                        disable: ref.watch(selectedAddressDocTypeProvider) == null,
                        disableCallback: () {
                          context.showErrorSnackBar(message: Strings.selectDocumentType);
                        },
                        cameraScreenTitle: Strings.scanDocuments,
                        label: Strings.addressDocumentContainerLabel,
                        cameraScreenDescription: Strings.addressDocCameraLabel,
                        reviewScreenTitle: Strings.addressDetails,
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

    return CustomDrowDownField(
      value: ref.watch(selectedAddressDocTypeProvider),
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
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
        disable: ref.watch(addressProofFilePathProvider) == null,
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadAddressProof);
        },
        onTap: () async {
          final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

          await scanDocument(
            context: context,
            ref: ref,
            documentType: selectedAddressDocType?.documentCode,
            loadingProvider: addressDocOCRLoadingProvider,
            onSuccess: (ScanDocumentResponseBody? response) {
              ref.watch(addressDocOCRApiResponse.notifier).update((state) => response);
              ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
              context.pushNamed(AppRoutes.addressReviewSubmitScreen);
            },
          );
        },
        label: Strings.next,
      ),
    );
  }

  void onSuccess(ScanDocumentResponseBody? response) {
    final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

    if (selectedAddressDocType?.documentCode == "UTB") {
      if(response?.ocrResponse != null){
        // check different conditions for ocr status
      }
    } else {
      ref.watch(addressDocOCRApiResponse.notifier).update((state) => response);
      ref.watch(addressDocOCRLoadingProvider.notifier).update((state) => false);
      context.pushNamed(AppRoutes.addressReviewSubmitScreen);
    }
  }
}
