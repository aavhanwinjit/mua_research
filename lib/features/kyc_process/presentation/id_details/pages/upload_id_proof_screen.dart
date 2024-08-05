import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/mixins/get_id_details_doc_type_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/mixins/google_ml_kit_ocr_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_docs_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/widgets/upload_id_proof_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UploadIDdetailsScreen extends ConsumerStatefulWidget {
  const UploadIDdetailsScreen({super.key});

  @override
  ConsumerState<UploadIDdetailsScreen> createState() => _UploadIDdetailsScreenState();
}

class _UploadIDdetailsScreenState extends ConsumerState<UploadIDdetailsScreen>
    with GoogleMLKitOCRMixin, GetIDDetailsDocTypeMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(idDocFrontFilePathProvider.notifier).update((state) => null);
      ref.watch(idDocBackFilePathProvider.notifier).update((state) => null);

      // ref.watch(nicCardFrontFilePathProvider.notifier).update((state) => null);
      // ref.watch(passportFrontFilePathProvider.notifier).update((state) => null);
      // ref.watch(nicCardBackFilePathProvider.notifier).update((state) => null);
      // ref.watch(passportBackFilePathProvider.notifier).update((state) => null);

      getIdentityDocumentTypes(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool idDocTypeLoading = ref.watch(idDocsTypesListLoading);

    final idDocTypesNotifier = ref.watch(idDocsTypesNotifierProvider.notifier);
    ref.watch(idDocsTypesNotifierProvider);

    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.identityIdDetails,
      ),
      bottomNavigationBar: !idDocTypeLoading ? _bottomNavBarWidget() : null,
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
                if (idDocTypeLoading) const UploadIdProofLoadingWidget(),
                if (!idDocTypeLoading) ...[
                  if (idDocTypesNotifier.haveList()) ...[
                    _idDocTypesWidget(),
                    SizedBox(height: 24.h),
                    _docContainer(),
                  ],
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _idDocTypesWidget() {
    final idDocTypesNotifier = ref.watch(idDocsTypesNotifierProvider.notifier);
    ref.watch(idDocsTypesNotifierProvider);

    final selectedApplication = ref.watch(selectedApplicationProvider);

    return ListView.builder(
      itemCount: 1,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        IdentityDocumentTypeModel item;

        if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
          item = idDocTypesNotifier
              .idDocsTypesList()
              .where((element) => element.documentCode == DocumentCodes.NIC.toString().split('.').last)
              .toList()
              .first;
        } else {
          item = idDocTypesNotifier
              .idDocsTypesList()
              .where((element) => element.documentCode != DocumentCodes.NIC.toString().split('.').last)
              .toList()
              .first;
        }

        return CustomRadioTile(
          title: item.identityDocType ?? "-",
          value: true,
          groupValue: true,
        );
      },
    );
  }

  Widget _docContainer() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // DocumentUploadContainer(
        //   provider: idDocFrontFilePathProvider,
        //   label: Strings.idDocumentFrontContainerLabel,
        //   cameraScreenTitle: Strings.idCardCameraScreenTitleFront,
        //   cameraScreenDescription:
        //       (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
        //           ? Strings.idDocumentNicFrontCameraLabel
        //           : Strings.idDocumentPassportFrontCameraLabel,
        //   reviewScreenTitle: Strings.identityIdDetails,
        //   hideClearButton: !_checkIfBackImageIsUploaded(),
        // ),
        DocumentUploadContainer2(
          filePath: ref.watch(idDocFrontFilePathProvider),
          documentCode: (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
              ? DocumentCodes.NIC.toString().split('.').last
              : DocumentCodes.PSP.toString().split('.').last,
          onChange: (String path, ScanDocumentResponseBody? response) async {
            ref.watch(idDocFrontFilePathProvider.notifier).update((state) => path);
            ref.watch(idDocFrontScanDocResultProvider.notifier).update((state) => response);

            if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
              // if no values are recieved from scan document then show retry option
            }

            if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
              ref
                  .watch(extractedFirstNameProvider.notifier)
                  .update((state) => response?.ocrResponse?.documentdata?.firstName);
              ref
                  .watch(extractedSurNameProvider.notifier)
                  .update((state) => response?.ocrResponse?.documentdata?.lastName);
              ref
                  .watch(extractedNICIDNumberProvider.notifier)
                  .update((state) => response?.ocrResponse?.documentdata?.idNumber);
            } else {
              ref
                  .watch(extractedPassportFirstNameProvider.notifier)
                  .update((state) => response?.ocrResponse?.documentdata?.firstName);
              ref
                  .watch(extractedPassportSurNameProvider.notifier)
                  .update((state) => response?.ocrResponse?.documentdata?.lastName);
              ref
                  .watch(extractedPassportNumberProvider.notifier)
                  .update((state) => response?.ocrResponse?.documentdata?.idNumber);
            }

            // call ml kit ocr after scan docs
            // await _performOCR(onSuccess: () {
            //   context.pop();
            // });
            context.pop();
          },
          clearFile: () {
            ref.watch(idDocFrontFilePathProvider.notifier).update((state) => null);
          },
          label: Strings.idDocumentFrontContainerLabel,
          cameraScreenTitle: Strings.idCardCameraScreenTitleFront,
          cameraScreenDescription:
              (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
                  ? Strings.idDocumentNicFrontCameraLabel
                  : Strings.idDocumentPassportFrontCameraLabel,
          reviewScreenTitle: Strings.identityIdDetails,
          hideClearButton: !_checkIfBackImageIsUploaded(),
        ),
        SizedBox(height: 24.h),
        // (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
        //     ? DocumentUploadContainer(
        //         provider: idDocBackFilePathProvider,
        //         label: Strings.idDocumentBackContainerLabel,
        //         cameraScreenTitle: Strings.idCardCameraScreenTitleBack,
        //         cameraScreenDescription:
        //             (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
        //                 ? Strings.idDocumentNicBackCameraLabel
        //                 : Strings.idDocumentPassportBackCameraLabel,
        //         reviewScreenTitle: Strings.identityIdDetails,
        //         disable: _checkIfFrontImageIsUploaded(),
        //         disableCallback: () {
        //           context.showErrorSnackBar(message: Strings.selectFrontImageFirst);
        //         },
        //       )
        //     : Container(),
        (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
            ? DocumentUploadContainer2(
                filePath: ref.watch(idDocBackFilePathProvider),
                documentCode: (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
                    ? DocumentCodes.NIC.toString().split('.').last
                    : DocumentCodes.PSP.toString().split('.').last,
                onChange: (String path, ScanDocumentResponseBody? response) async {
                  ref.watch(idDocBackFilePathProvider.notifier).update((state) => path);
                  ref.watch(idDocBackScanDocResultProvider.notifier).update((state) => response);

                  context.pop();
                },
                clearFile: () {
                  ref.watch(idDocBackFilePathProvider.notifier).update((state) => null);
                },
                label: Strings.idDocumentBackContainerLabel,
                cameraScreenTitle: Strings.idCardCameraScreenTitleBack,
                cameraScreenDescription:
                    (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
                        ? Strings.idDocumentNicBackCameraLabel
                        : Strings.idDocumentPassportBackCameraLabel,
                reviewScreenTitle: Strings.identityIdDetails,
                disable: _checkIfFrontImageIsUploaded(),
                disableCallback: () {
                  context.showErrorSnackBar(message: Strings.selectFrontImageFirst);
                },
              )
            : Container(),
      ],
    );
  }

  Widget _subTitle() {
    return Text(
      Strings.idDetailsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _title() {
    return Text(
      Strings.uploadIdentityProof,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: black,
      ),
    );
  }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        loading: ref.watch(ocrLoadingProvider),
        disable: _disableNextButtonCondition(),
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadBothDocuments);
        },
        onTap: () async {
          final selectedApplication = ref.watch(selectedApplicationProvider);

          if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
            // check if the id number recieved from front ocr and back ocr are same

            ScanDocumentResponseBody? frontOCR = ref.read(idDocFrontScanDocResultProvider);
            ScanDocumentResponseBody? backOCR = ref.read(idDocBackScanDocResultProvider);

            String? frontNICNumber = frontOCR?.ocrResponse?.documentdata?.idNumber;
            String? backNICNumber = backOCR?.ocrResponse?.documentdata?.idNumber;

            if ((frontNICNumber != null && backNICNumber != null) &&
                (frontNICNumber.isNotEmpty || backNICNumber.isNotEmpty)) {
              if (frontNICNumber == backNICNumber) {
                context.pushNamed(AppRoutes.idReviewSubmitScreen);
              } else {
                context.showErrorSnackBar(message: Strings.idNumberNotMatching);
              }
            } else {
              context.showErrorSnackBar(message: Strings.idNumberNotFound);
              return;
            }
          } else {
            ScanDocumentResponseBody? passportOCR = ref.read(idDocFrontScanDocResultProvider);
            String? passportNumber = passportOCR?.ocrResponse?.documentdata?.idNumber;

            if (passportNumber != null && passportNumber.isNotEmpty) {
              context.pushNamed(AppRoutes.idReviewSubmitScreen);
            } else {
              context.showErrorSnackBar(message: Strings.idNumberNotFound);
            }
          }

          context.pushNamed(AppRoutes.idReviewSubmitScreen);

          // await _performOCR(
          //   onSuccess: () {
          //     context.pushNamed(AppRoutes.idReviewSubmitScreen);
          //   },
          // );
        },
        label: Strings.next,
      ),
    );
  }

  Future<void> _performOCR({required Function onSuccess}) async {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
      await performNICCardOCR(
        ref: ref,
        context: context,
        onSuccess: () {
          onSuccess();
        },
      );
    } else {
      // perform OCR on passport
      await performPassportOCR(
        ref: ref,
        context: context,
        onSuccess: () {
          onSuccess();
        },
      );
      // context.showSnackBar(message: "OCR on passport is under development");
    }
  }

  bool _disableNextButtonCondition() {
    final idCardFrontSide = ref.watch(idDocFrontFilePathProvider);
    final idCardBackSide = ref.watch(idDocBackFilePathProvider);
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
      if (idCardFrontSide == null || idCardBackSide == null) {
        return true;
      } else {
        return false;
      }
    } else {
      if (idCardFrontSide == null) {
        return true;
      } else {
        return false;
      }
    }
  }

  bool _checkIfFrontImageIsUploaded() {
    final idCardFrontSide = ref.watch(idDocFrontFilePathProvider);

    if (idCardFrontSide == null) {
      return true;
    } else {
      return false;
    }
  }

  bool _checkIfBackImageIsUploaded() {
    final idCardBackSide = ref.watch(idDocBackFilePathProvider);

    if (idCardBackSide == null) {
      return true;
    } else {
      return false;
    }
  }
}
