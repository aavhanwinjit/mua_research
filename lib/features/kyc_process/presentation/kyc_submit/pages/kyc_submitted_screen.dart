import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/theme/custom_shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class KYCSubmittedScreen extends ConsumerWidget {
  const KYCSubmittedScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                // const Spacer(),
                SizedBox(height: 63.h),
                _titleWidget(),
                SizedBox(height: 49.h),
                _cardWidget(ref),
                const Spacer(),
                // _noteWidget(),
                // const Spacer(),
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
        // CustomOutlineIconButton(
        //   label: Strings.downloadPDF,
        //   iconString: ImageConstants.pdfIcon,
        //   onTap: () {},
        // ),
        // SizedBox(height: 16.h),
        CustomPrimaryButton(
          label: Strings.done,
          onTap: () {
            context.go(AppRoutes.dashboardScreen);
          },
        ),
      ],
    );
  }

  Widget _cardWidget(WidgetRef ref) {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
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
              text: "${selectedApplication?.idDocOtherName} ${selectedApplication?.idDocSurname}",
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
            TextSpan(
              text: "${selectedApplication?.applicationRefNo}",
              style: TextStyle(
                color: textGrayColor2,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
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
