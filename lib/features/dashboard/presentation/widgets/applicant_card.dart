import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/date_time_formatter.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/status_chip.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:ekyc/theme/custom_shadows.dart';
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
                Container(
                  height: MediaQuery.of(context).size.width > 480 ? 32.w : 50.w,
                  width: MediaQuery.of(context).size.width > 480 ? 32.w : 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: primaryColor,
                    // color: lightOrange,
                  ),
                  child: Center(
                    child: Image.asset(
                      application.kycTypeId == 1
                          ? ImageConstants.lifeInsuranceImage
                          : application.kycTypeId == 2
                              ? ImageConstants.motorInsuranceImage
                              : ImageConstants.nonMotorInsuranceImage,
                      height: application.kycTypeId == 2 ? 22.h : 32.h,
                      color: white,
                    ),
                  ),
                ),
                // CustomProfileImageWidget(
                //   userName: _getApplicantName().initials,
                //   size: MediaQuery.of(context).size.width > 480 ? 32.w : 50.w,
                //   fontSize: 18.sp,
                //   primary: false,
                // ),
                SizedBox(width: 12.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _getApplicantName().name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width > 480 ? 13.sp : 16.sp,
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

  ({String name, String initials}) _getApplicantName() {
    if (application.idDocOtherName == null && application.idDocSurname == null) {
      return (name: application.mobileNumber ?? "", initials: "-");
    } else {
      final String fullName = "${application.idDocOtherName ?? ""} ${application.idDocSurname ?? ""}";
      return (name: fullName, initials: fullName);
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
              fontSize: MediaQuery.of(context).size.width > 480 ? 10.sp : 12.sp,
              color: textGrayColor2,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            application.applicationRefNo ?? "-",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: black,
              fontSize: MediaQuery.of(context).size.width > 480 ? 7.sp : 12.sp,
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
              fontSize: MediaQuery.of(context).size.width > 480 ? 10.sp : 12.sp,
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
