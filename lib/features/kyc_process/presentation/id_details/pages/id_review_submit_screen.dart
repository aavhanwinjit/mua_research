import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/confirmation_dialog_helper.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/mixins/save_id_details_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/customer_info_card.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/nic_details_card.dart';
import 'package:ekyc/widgets/review_screen_buttons.dart';
import 'package:ekyc/widgets/signature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class IDReviewSubmitScreen extends ConsumerStatefulWidget {
  const IDReviewSubmitScreen({super.key});

  @override
  ConsumerState<IDReviewSubmitScreen> createState() => _ReviewSubmitScreenState();
}

class _ReviewSubmitScreenState extends ConsumerState<IDReviewSubmitScreen>
    with SaveIDDetailsMixin, AgentApplicationsMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(confirmationProvider.notifier).update((state) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.reviewAndSubmit,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const CustomerInfoCard(),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const NICDetailsCard(),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const SignatureWidget(),
                ),
                SizedBox(height: 24.h),
                CustomCheckboxTile(
                  value: ref.watch(confirmationProvider),
                  onChanged: (value) {
                    ref.read(confirmationProvider.notifier).update((state) => value!);
                  },
                  title: Strings.reviewScreenCheckboxTitle,
                  fontSize: 12.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ReviewScreenButtons(
                    disable: ref.watch(confirmationProvider) != true,
                    loadingProvider: saveIdentityDetailsLoading,
                    onExit: () {
                      _uploadDetails(true);
                    },
                    onNext: () {
                      _uploadDetails(false);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _uploadDetails(bool isExit) {
    ConfirmationDialogHelper.showConfirmationDialog(
      context,
      title: Strings.confirmDetails,
      content: Strings.documentUploadConfirmationDialogText,
      onConfirm: () async {
        // pop the confirmation dialog box
        context.pop();

        await saveIdentityDetails(
            context: context,
            ref: ref,
            onSuccess: () async {
              resetPageNumber(ref);

              await getAgentApplications(
                context: context,
                ref: ref,
              );

              ref.watch(saveIdentityDetailsLoading.notifier).update((state) => false);

              context.pop();
              context.pop();

              if (isExit) {
                context.pop();
              }
            });
      },
    );
  }
}
