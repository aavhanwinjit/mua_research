import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/widgets/insurance_stage_card.dart';
import 'package:ekyc/widgets/buttons/custom_outline_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InsuranceStagesScreen extends ConsumerStatefulWidget {
  const InsuranceStagesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      InsuranceStagesScreenState();
}

class InsuranceStagesScreenState extends ConsumerState<InsuranceStagesScreen> {
  @override
  Widget build(BuildContext context) {
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
                    onTap: () {
                      context.pushNamed(AppRoutes.uploadIDproofScreen);
                    },
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.addressDetails,
                    subTitle: Strings.addressDetailsSubtitle,
                    onTap: () {
                      context.pushNamed(AppRoutes.addressDetailsScreen);
                    },
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.policyDocumentsOptional,
                    subTitle: Strings.policyDocSubtitle,
                    onTap: () {
                      context.pushNamed(AppRoutes.policyDocumentScreen);
                    },
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.motorDocuments,
                    subTitle: Strings.motorDocSubtitle,
                    onTap: () {
                      context.pushNamed(AppRoutes.motorDocsScreen);
                    },
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.nonMotorDocuments,
                    subTitle: Strings.nonMotorDocSubtitle,
                    onTap: () {
                      context.pushNamed(AppRoutes.nonMotorDocsScreen);
                    },
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.additionalDocsOptional,
                    subTitle: Strings.additionalDocsSubtitle,
                    onTap: () {
                      context.pushNamed(AppRoutes.additionalDocsScreen);
                    },
                  ),
                  SizedBox(height: 24.h),
                  _buttons(context),
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
          label: Strings.done,
          onTap: () {
            context.go(AppRoutes.kycSubmittedScreen);
          },
        ),
      ],
    );
  }
}
