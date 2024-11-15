import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/confirmation_dialog_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/mixins/save_por_docs_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/insured_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/upload_por_docs_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/insured_doc_details_card.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/customer_info_card.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
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
                _signature(),
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

  Widget _signature() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPorDocTypeListNotifierProvider);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SignatureWidget(
        dateTime: selectedDocsListProvider.list().last.scanResponse?.currentDateTime ?? "",
      ),
    );
  }

  void _uploadDetails(bool isExit) async {
    bool isSurnameMissing = _checkIfSurnameMissingInAnyDocuments();

    if (isSurnameMissing == true) {
      context.showErrorSnackBar(message: Strings.surnamesForSelectedDocuments);
      return;
    }

    bool surnameMatched = isSurnameMatched();

    if (surnameMatched == false) {
      context.showErrorSnackBar(message: Strings.surnameMismatched);
      return;
    }

    ConfirmationDialogHelper.showConfirmationDialog(
      context,
      title: Strings.confirmDetails,
      content: Strings.insuredDetailsConfirmationString,
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
              // onSuccess: (List<AgentApplicationModel> applicationList) {
              //   AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

              //   AgentApplicationModel? updatedApplication = applicationList.firstWhereOrNull(
              //     (element) {
              //       return element.applicationRefNo == selectedApplication?.applicationRefNo;
              //     },
              //   );

              //   ref.watch(selectedApplicationProvider.notifier).update((state) => updatedApplication);
              // },
            );

            ref.watch(saveInsuredDetailsLoading.notifier).update((state) => false);
            ref.watch(porDocUploadProcess.notifier).update((state) => false);

            // pop back to upload insured documents screen
            context.pop();
            // pop back to insurance stage screen
            context.pop();
            AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);
            if (selectedApplication!.kycTypeId == 1) {
              context.go(AppRoutes.kycSubmittedScreen);
            } else {
              context.pop();
            }

            // if (isExit) {
            //   context.pop();
            // }
          },
        );
      },
    );
  }

  bool isSurnameMatched() {
    AgentApplicationModel? selectedApplication = ref.watch(selectedApplicationProvider);

    debugPrint(
        "selectedApplication?.addressDocumentTypes?.documentCode: ${selectedApplication?.addressDocumentTypes?.documentCode}");

    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
    ref.watch(selectedPorDocTypeListNotifierProvider);

    if (selectedApplication?.addressDocumentTypes?.documentCode == DocumentCodes.LAA.toString().split('.').last) {
      return true;
    } else if (selectedDocsListProvider.list().any(
          (element) =>
              element.documentElement?.documentCode == DocumentCodes.NIL.toString().split('.').last ||
              element.documentElement?.documentCode == DocumentCodes.PSL.toString().split('.').last,
        )) {
      return true;
    } else {
      final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

      final surnameMatched = selectedDocsListProvider.list().any(
        (element) {
          if (element.extractedLastName == selectedApplication?.addressDocSurname) {
            return true;
          } else {
            return false;
          }
        },
      );

      return surnameMatched;
    }
  }

  bool _checkIfSurnameMissingInAnyDocuments() {
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    return selectedDocsListProvider
        .list()
        .any((element) => element.extractedLastName == null || element.extractedLastName!.isEmpty);
  }
}
