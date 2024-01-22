import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/status_chip.dart';
import 'package:ekyc/theme/custom_shadows.dart';
import 'package:ekyc/widgets/custom_profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ApplicantCard extends StatelessWidget {
  const ApplicantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: white,
        boxShadow: CustomShadows.applicantCardShadow,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              children: [
                CustomProfileImageWidget(
                  userName: "Arjun Kumar",
                  size: 50.w,
                  fontSize: 18.sp,
                  primary: false,
                ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Arjun Kumar",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: black,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        "10/06/23 • 10:40pm",
                        style: TextStyle(
                          color: textGrayColor2,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12.w),
                _referenceNumberWidget(),
              ],
            ),
          ),
          Divider(
            height: 0,
            color: borderColor,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatusChip(),
                _resumeWidget(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _referenceNumberWidget() {
    return Column(
      children: [
        Text(
          Strings.referenceNo,
          style: TextStyle(
            fontSize: 12.sp,
            color: textGrayColor2,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          "MUA2346654",
          style: TextStyle(
            color: black,
            fontSize: 12.sp,
          ),
        ),
      ],
    );
  }

  Widget _resumeWidget(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(AppRoutes.insuranceStagesScreen);
      },
      child: Row(
        children: [
          Text(
            Strings.resume,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 12.sp,
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
