import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/confirmation_dialog_helper.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/dialogs/error_dialog.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/mixins/save_id_details_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/customer_info_card.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/nic_details_card.dart';
import 'package:ekyc/widgets/review_screen_buttons.dart';
import 'package:ekyc/widgets/signature_widget.dart';
import 'package:flutter/cupertino.dart';
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
      ref.read(idReviewScreenConfirmationProvider.notifier).update((state) => false);
      ref.watch(saveIdentityDetailsLoading.notifier).update((state) => false);
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
                _signature(),
                SizedBox(height: 24.h),
                CustomCheckboxTile(
                  value: ref.watch(idReviewScreenConfirmationProvider),
                  onChanged: (value) {
                    ref.read(idReviewScreenConfirmationProvider.notifier).update((state) => value!);
                  },
                  title: Strings.reviewScreenCheckboxTitle,
                  fontSize: 12.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ReviewScreenButtons(
                    disable: ref.watch(idReviewScreenConfirmationProvider) != true,
                    loadingProvider: saveIdentityDetailsLoading,
                    onExit: () {
                      _uploadDetails(true);
                    },
                    onNext: () {
                      _uploadDetails(false);
                      // showDialogError(context);
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

  Widget _signature() {
    final selectedDocsListProvider = ref.watch(idDocFrontScanDocResultProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SignatureWidget(
        dateTime: selectedDocsListProvider?.currentDateTime ?? "",
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

        String firstname = ref.watch(extractedFirstNameProvider) ?? "";
        String surname = ref.watch(extractedSurNameProvider) ?? "";

        print("-----------------------------------------");
        print(firstname);
        print(surname);

        // RegExp regex = RegExp(r'^[a-zA-Z\s]+$');
        // if (regex.hasMatch(firstname) && regex.hasMatch(surname)) {
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
              // context.pop();

              if (isExit) {
                context.pop();
              }
            },
            onError: () {
              showDialogError(context);
            });
        // } else {
        //   context.showErrorSnackBar(message: Strings.errorInFullnameInDoc);
        // }
      },
    );
  }

  void showDialogError(BuildContext context) {
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return const ErrorDialog();
      },
    );
  }
}
