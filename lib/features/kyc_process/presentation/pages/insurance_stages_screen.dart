import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/insurance_stage_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class InsuranceStagesScreen extends ConsumerStatefulWidget {
  const InsuranceStagesScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => InsuranceStagesScreenState();
}

class InsuranceStagesScreenState extends ConsumerState<InsuranceStagesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryBlueColor,
        appBar: AppBar(
          title: Text(
            Strings.lifeInsuranceTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.chevron_left),
          ),
        ),
        body: Container(
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
                    onTap: () {},
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.addressDetails,
                    subTitle: Strings.addressDetailsSubtitle,
                    onTap: () {},
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.policyDocuments,
                    subTitle: Strings.policyDocSubtitle,
                    onTap: () {},
                  ),
                  SizedBox(height: 16.h),
                  InsuranceStageCard(
                    title: Strings.additionalDocs,
                    subTitle: Strings.additionalDocsSubtitle,
                    onTap: () {},
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
