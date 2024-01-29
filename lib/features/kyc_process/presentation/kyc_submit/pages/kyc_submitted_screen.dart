import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/theme/custom_shadows.dart';
import 'package:ekyc/widgets/buttons/custom_outline_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class KYCSubmittedScreen extends StatelessWidget {
  const KYCSubmittedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(ImageConstants.pageBgImage),
          Container(
            padding: EdgeInsets.all(20.w),
            height: double.infinity,
            width: double.infinity,
            child: Column(
              children: [
                const Spacer(),
                _titleWidget(),
                _cardWidget(),
                const Spacer(),
                _noteWidget(),
                SizedBox(height: 40.h),
                _buttons(context),
              ],
            ),
          ),
        ],
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
            context.go(AppRoutes.dashboardScreen);
          },
        ),
      ],
    );
  }

  Widget _cardWidget() {
    return Container(
      padding: EdgeInsets.all(20.w),
      margin: EdgeInsets.all(20.w),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: CustomShadows.kycSubmitCardShadow,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: Strings.kycCompleted1,
          style: TextStyle(
            color: textGrayColor2,
            fontSize: 14.sp,
            fontFamily: Strings.nunitoFont,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: "R1234",
              style: TextStyle(
                color: textGrayColor2,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                fontFamily: Strings.nunitoFont,
                height: 1.5,
              ),
            ),
            TextSpan(
              text: Strings.kycCompleted2,
              style: TextStyle(
                color: textGrayColor2,
                fontSize: 14.sp,
                fontFamily: Strings.nunitoFont,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _noteWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: Strings.kycNote1,
          style: TextStyle(
            color: textGrayColor2,
            fontSize: 12.sp,
            fontFamily: Strings.nunitoFont,
          ),
          children: [
            TextSpan(
              text: Strings.kycNote2,
              style: TextStyle(
                color: textGrayColor2,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                fontFamily: Strings.nunitoFont,
              ),
            ),
            TextSpan(
              text: Strings.kycNote3,
              style: TextStyle(
                color: textGrayColor2,
                fontSize: 12.sp,
                fontFamily: Strings.nunitoFont,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _titleWidget() {
    return Column(
      children: [
        Container(
          height: 90.h,
          width: 90.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: primaryColor,
          ),
          child: const Center(
            child: Icon(
              Icons.check_rounded,
              color: white,
              size: 50,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          Strings.kycSubmittedSuccessfully,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: white,
            fontWeight: FontWeight.bold,
            fontSize: 26.sp,
          ),
        ),
      ],
    );
  }
}
