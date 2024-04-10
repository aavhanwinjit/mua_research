import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String title;
  final String value;

  const InfoWidget({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: textGrayColor2,
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14.sp,
            color: black,
          ),
        ),
      ],
    );
  }
}

class CompanyInfoWidget extends StatelessWidget {
  final List<Company>? companies;
  const CompanyInfoWidget({super.key, this.companies});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.companyName,
          style: TextStyle(
            color: textGrayColor2,
            fontSize: 12.sp,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(height: 2.h),
        if (companies != null && companies!.isNotEmpty) ...[
          Text(
            companies!.first.companyName ?? "-",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          if (companies!.length > 1) ...[
            Text(
              "- - - - - - - - - - - - - - - - - - - - - - - ",
              style: TextStyle(
                color: black.withOpacity(0.2),
                height: 0,
              ),
            ),
            Text(
              companies![1].companyName ?? "-",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ],
        // Text(
        //   value,
        //   style: TextStyle(
        //     fontWeight: FontWeight.w600,
        //     fontSize: 14.sp,
        //     color: black,
        //   ),
        // ),
      ],
    );
  }
}
