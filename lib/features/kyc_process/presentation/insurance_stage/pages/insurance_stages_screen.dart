import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/insurance_button_type.dart';
import 'package:ekyc/core/constants/enums/kyc_type_enums.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/widgets/insurance_stage_card.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/widgets/buttons/custom_outline_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InsuranceStagesScreen extends ConsumerStatefulWidget {
  const InsuranceStagesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => InsuranceStagesScreenState();
}

class InsuranceStagesScreenState extends ConsumerState<InsuranceStagesScreen> {
  @override
  Widget build(BuildContext context) {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Scaffold(
      backgroundColor: primaryBlueColor,
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.lifeInsuranceTitle,
        blueBackground: true,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.only(top: 20.h),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.sp),
              topRight: Radius.circular(24.sp),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.kycSubmission,
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: black,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    Strings.insuranceStageScreenSubtitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: textGrayColor2,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  InsuranceStageCard(
                    title: Strings.identityIdDetails,
                    subTitle: Strings.idDetailsSubtitle,
                    buttonType: getIDDetailsCardStatus().buttonType,
                    onTap: getIDDetailsCardStatus().onTap,
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.addressDetails,
                    subTitle: Strings.addressDetailsSubtitle,
                    buttonType: getAddressDetailsCardStatus().buttonType,
                    onTap: getAddressDetailsCardStatus().onTap,
                  ),
                  SizedBox(height: 16.h),

                  // Show Policy Docs Card only if application is of type Life Insurance
                  if (selectedApplication?.kycTypeId == KYCType.LIFE_INSURANCE)
                    InsuranceStageCard(
                      title: Strings.policyDocumentsOptional,
                      subTitle: Strings.policyDocSubtitle,
                      buttonType: getPolicyDocsCardStatus().buttonType,
                      onTap: getPolicyDocsCardStatus().onTap,
                    ),

                  // // Show Policy Docs Card only if application is of type Motor Insurance
                  // if (selectedApplication?.kycTypeId == KYCType.MOTOR_INSURANCE)
                  //   InsuranceStageCard(
                  //     title: Strings.motorDocuments,
                  //     subTitle: Strings.motorDocSubtitle,
                  //     onTap: () {
                  //       context.pushNamed(AppRoutes.motorDocsScreen);
                  //     },
                  //   ),

                  // // Show Policy Docs Card only if application is of type Non-Motor Insurance
                  // if (selectedApplication?.kycTypeId == KYCType.NON_MOTOR_INSURANCE)
                  //   InsuranceStageCard(
                  //     title: Strings.nonMotorDocuments,
                  //     subTitle: Strings.nonMotorDocSubtitle,
                  //     onTap: () {
                  //       context.pushNamed(AppRoutes.nonMotorDocsScreen);
                  //     },
                  //   ),

                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.additionalDocsOptional,
                    subTitle: Strings.additionalDocsSubtitle,
                    buttonType: getAdditionalDocsCardStatus().buttonType,
                    onTap: () {
                      context.pushNamed(AppRoutes.additionalDocsScreen);
                    },
                  ),
                  SizedBox(height: 24.h),
                  if (selectedApplication?.isIdVerificationCompleted == true) _buttons(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttons(BuildContext context) {
    return Column(
      children: [
        CustomOutlineIconButton(
          label: Strings.downloadPDF,
          iconString: ImageConstants.pdfIcon,
          onTap: () {},
        ),
        SizedBox(height: 16.h),
        CustomPrimaryButton(
          label: Strings.goToDashboard,
          onTap: () {
            // context.go(AppRoutes.kycSubmittedScreen);
            context.pop();
          },
        ),
      ],
    );
  }

  ({InsuranceButtonType buttonType, Function()? onTap}) getIDDetailsCardStatus() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.isIdVerificationCompleted == false) {
      return (
        buttonType: InsuranceButtonType.active,
        onTap: () {
          context.pushNamed(AppRoutes.uploadIDproofScreen);
        },
      );
    } else {
      return (
        buttonType: InsuranceButtonType.completed,
        onTap: null,
      );
    }
  }

  ({InsuranceButtonType buttonType, Function()? onTap}) getAddressDetailsCardStatus() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.isIdVerificationCompleted == false) {
      return (
        buttonType: InsuranceButtonType.inactive,
        onTap: null,
      );
    } else if (selectedApplication?.isAddressVerificationCompleted == false) {
      return (
        buttonType: InsuranceButtonType.active,
        onTap: () {
          context.pushNamed(AppRoutes.addressDetailsScreen);
        },
      );
    } else if (selectedApplication?.porRequired == true &&
        selectedApplication?.isPorDocVerificationCompleted == false) {
      return (
        buttonType: InsuranceButtonType.active,
        onTap: () {
          context.pushNamed(AppRoutes.addressDetailsScreen);
        },
      );
    } else if (selectedApplication?.isAddressVerificationCompleted == true) {
      return (
        buttonType: InsuranceButtonType.completed,
        onTap: null,
      );
    } else {
      return (
        buttonType: InsuranceButtonType.inactive,
        onTap: null,
      );
    }
  }

  ({InsuranceButtonType buttonType, Function()? onTap}) getPolicyDocsCardStatus() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.kycTypeId == KYCType.LIFE_INSURANCE) {
      if (selectedApplication?.isIdVerificationCompleted == false) {
        return (
          buttonType: InsuranceButtonType.inactive,
          onTap: null,
        );
      } else if (selectedApplication?.isPolicyDocVerificationCompleted == false) {
        return (
          buttonType: InsuranceButtonType.active,
          onTap: () {
            context.pushNamed(AppRoutes.policyDocumentScreen);
          },
        );
      } else if (selectedApplication?.isPolicyDocVerificationCompleted == true) {
        return (
          buttonType: InsuranceButtonType.completed,
          onTap: null,
        );
      } else {
        return (
          buttonType: InsuranceButtonType.inactive,
          onTap: null,
        );
      }
    } else {
      return (
        buttonType: InsuranceButtonType.inactive,
        onTap: null,
      );
    }
  }

  ({InsuranceButtonType buttonType, Function()? onTap}) getAdditionalDocsCardStatus() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.isIdVerificationCompleted == false) {
      return (
        buttonType: InsuranceButtonType.inactive,
        onTap: null,
      );
    } else if (selectedApplication?.isAdditionalDocVerificationCompleted == false) {
      return (
        buttonType: InsuranceButtonType.active,
        onTap: () {
          context.pushNamed(AppRoutes.additionalDocsScreen);
        },
      );
    } else if (selectedApplication?.isAdditionalDocVerificationCompleted == true) {
      return (
        buttonType: InsuranceButtonType.completed,
        onTap: null,
      );
    } else {
      return (
        buttonType: InsuranceButtonType.inactive,
        onTap: null,
      );
    }
  }
}
