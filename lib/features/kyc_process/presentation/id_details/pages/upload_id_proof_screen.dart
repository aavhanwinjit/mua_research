import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/mixins/get_id_details_doc_type_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/mixins/google_ml_kit_ocr_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_docs_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/widgets/upload_id_proof_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
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
      ref.watch(nicCardFrontFilePathProvider.notifier).update((state) => null);
      ref.watch(passportFrontFilePathProvider.notifier).update((state) => null);
      ref.watch(nicCardBackFilePathProvider.notifier).update((state) => null);
      ref.watch(passportBackFilePathProvider.notifier).update((state) => null);

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
        DocumentUploadContainer(
          provider: (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
              ? nicCardFrontFilePathProvider
              : passportFrontFilePathProvider,
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
        DocumentUploadContainer(
          provider: (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
              ? nicCardBackFilePathProvider
              : passportBackFilePathProvider,
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
        ),
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
        disable: _disableNextButtonCondition(),
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadBothDocuments);
        },
        onTap: () {
          final selectedApplication = ref.watch(selectedApplicationProvider);

          if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
            performNICCardOCR(
              ref: ref,
              context: context,
              onSuccess: () {
                context.pushNamed(AppRoutes.idReviewSubmitScreen);
              },
            );
          } else {
            // perform OCR on passport
            context.showSnackBar(message: "OCR on passport is under development");
          }
        },
        label: Strings.next,
      ),
    );
  }

  bool _disableNextButtonCondition() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
      final nicCardFrontSide = ref.watch(nicCardFrontFilePathProvider);
      final nicCardBackSide = ref.watch(nicCardBackFilePathProvider);

      if (nicCardFrontSide == null || nicCardBackSide == null) {
        return true;
      } else {
        return false;
      }
    } else {
      final passportFrontSide = ref.watch(passportFrontFilePathProvider);
      final passportBackSide = ref.watch(passportBackFilePathProvider);

      if (passportFrontSide == null || passportBackSide == null) {
        return true;
      } else {
        return false;
      }
    }
  }

  bool _checkIfFrontImageIsUploaded() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
      final nicCardFrontSide = ref.watch(nicCardFrontFilePathProvider);

      if (nicCardFrontSide == null) {
        return true;
      } else {
        return false;
      }
    } else {
      final passportFrontSide = ref.watch(passportFrontFilePathProvider);

      if (passportFrontSide == null) {
        return true;
      } else {
        return false;
      }
    }
  }

  bool _checkIfBackImageIsUploaded() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
      final nicCardBackSide = ref.watch(nicCardBackFilePathProvider);

      if (nicCardBackSide == null) {
        return true;
      } else {
        return false;
      }
    } else {
      final passportBackSide = ref.watch(passportBackFilePathProvider);

      if (passportBackSide == null) {
        return true;
      } else {
        return false;
      }
    }
  }
}
