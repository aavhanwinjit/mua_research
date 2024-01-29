import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/id_proof_enums.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UploadIDdetailsScreen extends ConsumerStatefulWidget {
  const UploadIDdetailsScreen({super.key});

  @override
  ConsumerState<UploadIDdetailsScreen> createState() => _UploadIDdetailsScreenState();
}

class _UploadIDdetailsScreenState extends ConsumerState<UploadIDdetailsScreen> {
  @override
  Widget build(BuildContext context) {
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
                CustomRadioTile(
                  title: Strings.nicCard,
                  value: IdProofType.NIC_CARD,
                  groupValue: ref.watch(idProofTypeProvider),
                  onChange: () {
                    ref.watch(idProofTypeProvider.notifier).update((state) => IdProofType.NIC_CARD);
                  },
                ),
                SizedBox(height: 16.h),
                CustomRadioTile(
                  title: Strings.passport,
                  value: IdProofType.PASSPORT,
                  groupValue: ref.watch(idProofTypeProvider),
                  onChange: () {
                    ref.watch(idProofTypeProvider.notifier).update((state) => IdProofType.PASSPORT);
                  },
                ),
                SizedBox(height: 24.h),
                const DocumentUploadContainer(
                  label: Strings.idDocumentFrontContainerLabel,
                  cameraScreenDescription: Strings.idDocumentFrontCameraLabel,
                  reviewScreenTitle: Strings.identityIdDetails,
                ),
                SizedBox(height: 24.h),
                const DocumentUploadContainer(
                  label: Strings.idDocumentBackContainerLabel,
                  cameraScreenDescription: Strings.idDocumentBackCameraLabel,
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
        onTap: () {
          context.pushNamed(AppRoutes.idReviewSubmitScreen);
        },
        label: Strings.next,
      ),
    );
  }
}
