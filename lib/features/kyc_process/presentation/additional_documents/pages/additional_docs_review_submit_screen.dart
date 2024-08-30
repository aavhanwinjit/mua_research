import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/confirmation_dialog_helper.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/mixins/save_additional_details_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/additional_docs_review_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/selected_additional_doc_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/widgets/additional_docs_card.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/customer_info_card.dart';
import 'package:ekyc/widgets/review_screen_buttons.dart';
import 'package:ekyc/widgets/signature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AdditionalDocsReviewSubmitScreen extends ConsumerStatefulWidget {
  const AdditionalDocsReviewSubmitScreen({super.key});

  @override
  ConsumerState<AdditionalDocsReviewSubmitScreen> createState() => _ReviewSubmitScreenState();
}

class _ReviewSubmitScreenState extends ConsumerState<AdditionalDocsReviewSubmitScreen>
    with AgentApplicationsMixin, SaveAdditionalDetailsMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(additionalDocsReviewScreenConfirmationProvider.notifier).update((state) => false);
      ref.watch(saveAdditionalDetailsLoading.notifier).update((state) => false);
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
                  child: const AdditionalDocsCard(),
                ),
                SizedBox(height: 24.h),
                _signature(),
                SizedBox(height: 24.h),
                CustomCheckboxTile(
                  value: ref.watch(additionalDocsReviewScreenConfirmationProvider),
                  onChanged: (value) {
                    ref.read(additionalDocsReviewScreenConfirmationProvider.notifier).update((state) => value!);
                  },
                  title: Strings.reviewScreenCheckboxTitle,
                  fontSize: 12.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ReviewScreenButtons(
                    disable: ref.watch(additionalDocsReviewScreenConfirmationProvider) != true,
                    loadingProvider: saveAdditionalDetailsLoading,
                    onNext: () {
                      _uploadDetails(false);
                    },
                    onExit: () {
                      _uploadDetails(true);
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
    final selectedDocsListProvider = ref.watch(selectedAdditionalDocListNotifierProvider.notifier);
    ref.watch(selectedAdditionalDocListNotifierProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SignatureWidget(
        dateTime: selectedDocsListProvider.list().last.scanResponse?.currentDateTime ?? "",
      ),
    );
  }

  void _uploadDetails(bool isExit) async {
    ConfirmationDialogHelper.showConfirmationDialog(
      context,
      title: Strings.confirmDetails,
      content: Strings.documentUploadConfirmationDialogText2,
      onConfirm: () async {
        // pop the confirmation dialog box
        context.pop();

        await saveAdditionalDetails(
          context: context,
          ref: ref,
          onSuccess: () async {
            resetPageNumber(ref);

            await getAgentApplications(
              context: context,
              ref: ref,
            );

            ref.watch(saveAdditionalDetailsLoading.notifier).update((state) => false);

            context.pop();
            context.pop();

            if (isExit) {
              context.pop();
            }
          },
        );
      },
    );
  }
}
