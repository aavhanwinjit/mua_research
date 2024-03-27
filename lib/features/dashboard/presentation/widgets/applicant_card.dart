import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/date_time_formatter.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/status_chip.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/theme/custom_shadows.dart';
import 'package:ekyc/widgets/custom_profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ApplicantCard extends ConsumerWidget {
  final AgentApplicationModel application;

  const ApplicantCard({super.key, required this.application});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  userName: _getApplicantName(),
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
                        _getApplicantName(),
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
                          fontSize: MediaQuery.of(context).size.width > 480 ? 10.sp : 12.sp,
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
                _resumeWidget(context, ref),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getApplicantName() {
    if (application.idDocOtherName == null && application.idDocSurname == null) {
      return application.mobileNumber ?? "";
    } else {
      final String fullName = "${application.idDocOtherName ?? ""} ${application.idDocSurname ?? ""}";
      return fullName;
    }
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

  Widget _resumeWidget(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        ref.watch(selectedApplicationProvider.notifier).update((state) => application);

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
