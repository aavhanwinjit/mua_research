import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/mixins/google_ml_kit_ocr_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
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

class _UploadIDdetailsScreenState extends ConsumerState<UploadIDdetailsScreen> with GoogleMLKitOCRMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(nicCardFrontFilePathProvider.notifier).update((state) => null);
      ref.watch(passportFrontFilePathProvider.notifier).update((state) => null);
      ref.watch(nicCardBackFilePathProvider.notifier).update((state) => null);
      ref.watch(passportBackFilePathProvider.notifier).update((state) => null);
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.identityIdDetails,
      ),
      bottomNavigationBar: _bottomNavBarWidget(),
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
                if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last)
                  const CustomRadioTile(
                    title: Strings.nicCard,
                    value: true,
                    groupValue: true,
                  ),
                if (selectedApplication?.nationality == NationalityType.NonMauritian.toString().split('.').last)
                  const CustomRadioTile(
                    title: Strings.passport,
                    value: true,
                    groupValue: true,
                  ),
                SizedBox(height: 24.h),
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
                ),
              ],
            ),
          ),
        ),
      ),
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
}
