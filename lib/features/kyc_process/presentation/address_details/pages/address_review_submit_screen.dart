import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/confirmation_dialog_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/mixins/save_address_details_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/widgets/address_details_card.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/customer_info_card.dart';
import 'package:ekyc/widgets/review_screen_buttons.dart';
import 'package:ekyc/widgets/signature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddressReviewSubmitScreen extends ConsumerStatefulWidget {
  const AddressReviewSubmitScreen({super.key});

  @override
  ConsumerState<AddressReviewSubmitScreen> createState() => _AddressReviewSubmitScreenState();
}

class _AddressReviewSubmitScreenState extends ConsumerState<AddressReviewSubmitScreen>
    with SaveAddressDetailsMixin, AgentApplicationsMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addreddScreenConfirmationProvider.notifier).update((state) => false);
      ref.watch(saveAddressDetailsLoading.notifier).update((state) => false);

      // final bool nameMatched = ref.watch(ocrNameMatched);

      // if (nameMatched == false) {
      //   // show name not matched dialog
      // }
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
                  child: const AddressDetailsCard(),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: const SignatureWidget(),
                ),
                SizedBox(height: 24.h),
                CustomCheckboxTile(
                  value: ref.watch(addreddScreenConfirmationProvider),
                  onChanged: (value) {
                    ref.read(addreddScreenConfirmationProvider.notifier).update((state) => value!);
                  },
                  title: Strings.reviewScreenCheckboxTitle,
                  fontSize: 12.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ReviewScreenButtons(
                    disable: ref.watch(addreddScreenConfirmationProvider) != true,
                    loadingProvider: saveAddressDetailsLoading,
                    onNext: () {
                      //   context.pushNamed(AppRoutes.insuredDocumentScreen);
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

  void _uploadDetails(bool isExit) {
    // check if surname, othername, address is filled
    final infoComplete = _isInformationFilled();

    if (infoComplete == false) {
      context.showErrorSnackBar(message: Strings.enterAddressInfo);
      return;
    }

    ConfirmationDialogHelper.showConfirmationDialog(
      context,
      title: Strings.confirmDetails,
      content: Strings.addressDetailsConfirmationString,
      onConfirm: () async {
        // pop the confirmation dialog box
        context.pop();

        // Details are of same customer. So we can mark the address stage as completed. (No need for POR)
        await _porNotRequired(isExit);
      },
      onReject: () async {
        context.pop();

        // Details are of different customer. (POR Required)

        if (isExit == true) {
          await _porRequiredButExitingAnyway(isExit);
        } else {
          // Show second dialog box if agent has selected continue to upload else just call the
          // address save api with POR as incomplete
          ConfirmationDialogHelper.showConfirmationDialog(
            context,
            title: Strings.insuredDocsRequiredDialogTitleString,
            content: Strings.insuredDocsRequiredDialogSubtitleString,
            positiveButtonTitle: Strings.uploadInsuredDocuments,
            negativeButtonTitle: Strings.saveAndUploadLater,
            onConfirm: () async {
              // pop the confirmation dialog box
              context.pop();

              await _porRequiredAndNavigatingToPORScreen();
            },
            onReject: () async {
              context.pop();

              // POR is required but Agent is exiting anyway. Status will be marked as POR missing.
              await _porRequiredButExitingAnyway(isExit);
            },
          );
        }
      },
    );
  }

  Future<void> _porNotRequired(bool isExit) async {
    await saveAddressDetails(
      context: context,
      ref: ref,
      porRequired: false,
      onSuccess: () async {
        resetPageNumber(ref);

        await getAgentApplications(
          context: context,
          ref: ref,
        );

        ref.watch(saveAddressDetailsLoading.notifier).update((state) => false);

        context.pop();
        context.pop();
        context.go(AppRoutes.kycSubmittedScreen);

        // if (isExit) {
        //   context.pop();
        // }
      },
    );
  }

  Future<void> _porRequiredButExitingAnyway(bool isExit) async {
    await saveAddressDetails(
      context: context,
      ref: ref,
      porRequired: true,
      onSuccess: () async {
        resetPageNumber(ref);

        await getAgentApplications(
          context: context,
          ref: ref,
        );

        ref.watch(saveAddressDetailsLoading.notifier).update((state) => false);

        context.pop();
        context.pop();

        if (isExit) {
          context.pop();
        }
      },
    );
  }

  Future<void> _porRequiredAndNavigatingToPORScreen() async {
    await saveAddressDetails(
      context: context,
      ref: ref,
      porRequired: true,
      onSuccess: () async {
        resetPageNumber(ref);

        await getAgentApplications(
          context: context,
          ref: ref,
        );

        ref.watch(saveAddressDetailsLoading.notifier).update((state) => false);

        context.pop();
        context.pop();
        context.pushNamed(AppRoutes.insuredDocumentScreen);
      },
    );
  }

  bool _isInformationFilled() {
    final String? addressOtherName = ref.watch(addressOtherNameProvider);
    final String? addressSurname = ref.watch(addressSurnameProvider);
    final String? addressText = ref.watch(addressTextProvider);

    bool otherNameFilled = false;
    bool surNameFilled = false;
    bool addressFilled = false;

    if (addressOtherName != null && addressOtherName.trim().isNotEmpty) {
      otherNameFilled = true;
    }

    if (addressSurname != null && addressSurname.trim().isNotEmpty) {
      surNameFilled = true;
    }

    if (addressText != null && addressText.trim().isNotEmpty) {
      addressFilled = true;
    }

    if (otherNameFilled && surNameFilled && addressFilled) {
      return true;
    }

    return false;
  }
}
