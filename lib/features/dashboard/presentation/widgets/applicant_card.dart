import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/date_time_formatter.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/status_chip.dart';
import 'package:ekyc/theme/custom_shadows.dart';
import 'package:ekyc/widgets/custom_profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ApplicantCard extends StatelessWidget {
  final AgentApplicationsModel application;

  const ApplicantCard({super.key, required this.application});

  @override
  Widget build(BuildContext context) {
    final String fullName = "${application.idDocFirstName ?? ""} ${application.idDocOtherName ?? ""}";

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
                  userName: fullName,
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
                        fullName,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: black,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        DateTimeFormatter.getApplicationCardDateTime(application.crd),
                        style: TextStyle(
                          color: textGrayColor2,
                          fontSize: MediaQuery.of(context).size.width>480?10.sp: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 12.w),
                _referenceNumberWidget(context),
              ],
            ),
          ),
          const Divider(
            height: 0,
            color: borderColor,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                StatusChip(status: application.applicationStatus),
                _resumeWidget(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _referenceNumberWidget(context) {
    return SizedBox(
      width: 85.w,
      child: Column(
        children: [
          Text(
            Strings.referenceNo,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.sp,
              color: textGrayColor2,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            application.applicationRefNo ?? "-",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: black,
              fontSize: MediaQuery.of(context).size.width > 480 ? 9.sp : 12.sp,
            ),
          ),
        ],
      ),
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
          const Icon(
            Icons.chevron_right,
            color: primaryColor,
          ),
        ],
      ),
    );
  }
}
