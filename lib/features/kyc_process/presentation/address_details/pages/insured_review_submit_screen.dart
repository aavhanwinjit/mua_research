import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/confirmation_dialog_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/mixins/save_por_docs_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/insured_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/insured_doc_details_card.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/customer_info_card.dart';
import 'package:ekyc/widgets/review_screen_buttons.dart';
import 'package:ekyc/widgets/signature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InsuredReviewSubmitScreen extends ConsumerStatefulWidget {
  const InsuredReviewSubmitScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InsuredReviewSubmitScreenState();
}

class _InsuredReviewSubmitScreenState extends ConsumerState<InsuredReviewSubmitScreen>
    with SavePORDocsMixin, AgentApplicationsMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(insuredReviewScreenConfirmationProvider.notifier).update((state) => false);
      ref.watch(saveInsuredDetailsLoading.notifier).update((state) => false);
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
                  child: const InsuredDocDetailsCard(),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const SignatureWidget(),
                ),
                SizedBox(height: 24.h),
                CustomCheckboxTile(
                  value: ref.watch(insuredReviewScreenConfirmationProvider),
                  onChanged: (value) {
                    ref.read(insuredReviewScreenConfirmationProvider.notifier).update((state) => value!);
                  },
                  title: Strings.reviewScreenCheckboxTitle,
                  fontSize: 12.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ReviewScreenButtons(
                    disable: ref.watch(insuredReviewScreenConfirmationProvider) != true,
                    loadingProvider: saveInsuredDetailsLoading,
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

  void _uploadDetails(bool isExit) async {
    bool isSurnameMissing = _checkIfSurnameMissingInAnyDocuments();

    if (isSurnameMissing == true) {
      context.showErrorSnackBar(message: Strings.surnamesForSelectedDocuments);
      return;
    }

    ConfirmationDialogHelper.showConfirmationDialog(
      context,
      title: Strings.confirmDetails,
      content: Strings.documentUploadConfirmationDialogText,
      onConfirm: () async {
        // pop the confirmation dialog box
        context.pop();

        await savePORDocuments(
          context: context,
          ref: ref,
          onSuccess: () async {
            resetPageNumber(ref);

            await getAgentApplications(
              context: context,
              ref: ref,
            );

            ref.watch(saveInsuredDetailsLoading.notifier).update((state) => false);

            context.pop();
            context.pop();
            context.go(AppRoutes.kycSubmittedScreen);

            // if (isExit) {
            //   context.pop();
            // }
          },
        );
      },
    );
  }

  bool _checkIfSurnameMissingInAnyDocuments() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    return selectedDocsListProvider
        .list()
        .any((element) => element.extractedLastName == null || element.extractedLastName!.isEmpty);
  }
}
