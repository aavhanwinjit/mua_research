import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/confirmation_dialog_helper.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/mixins/save_policy_documents_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/pd_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/selected_policy_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/widgets/policy_docs_card.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/customer_info_card.dart';
import 'package:ekyc/widgets/review_screen_buttons.dart';
import 'package:ekyc/widgets/signature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class PDReviewSubmitScreen extends ConsumerStatefulWidget {
  const PDReviewSubmitScreen({super.key});

  @override
  ConsumerState<PDReviewSubmitScreen> createState() => _ReviewSubmitScreenState();
}

class _ReviewSubmitScreenState extends ConsumerState<PDReviewSubmitScreen>
    with SavePolicyDocumentsMixin, AgentApplicationsMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(policyDocsReviewConfirmationProvider.notifier).update((state) => false);
      ref.watch(savePolicyDocumentLoadingProvider.notifier).update((state) => false);
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
                  child: const PolicyDocsCard(),
                ),
                SizedBox(height: 24.h),
                _signature(),
                SizedBox(height: 24.h),
                CustomCheckboxTile(
                  value: ref.watch(policyDocsReviewConfirmationProvider),
                  onChanged: (value) {
                    ref.read(policyDocsReviewConfirmationProvider.notifier).update((state) => value!);
                  },
                  title: Strings.reviewScreenCheckboxTitle,
                  fontSize: 12.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ReviewScreenButtons(
                    disable: ref.watch(policyDocsReviewConfirmationProvider) != true,
                    loadingProvider: savePolicyDocumentLoadingProvider,
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
    final selectedDocsListProvider = ref.watch(selectedPolicyDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPolicyDocTypeListNotifierProvider);

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

        await savePolicyDocuments(
          context: context,
          ref: ref,
          onSuccess: () async {
            resetPageNumber(ref);

            await getAgentApplications(
              context: context,
              ref: ref,
            );

            ref.watch(savePolicyDocumentLoadingProvider.notifier).update((state) => false);

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
