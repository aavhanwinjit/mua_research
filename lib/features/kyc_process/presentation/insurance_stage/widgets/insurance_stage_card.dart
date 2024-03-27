import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/widgets/insurance_stage_card_button.dart';
import 'package:flutter/material.dart';

class InsuranceStageCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final Function() onTap;

  const InsuranceStageCard({super.key, required this.title, required this.subTitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.w),
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: black,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    subTitle,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: textGrayColor2,
                    ),
                  ),
                ),
                const InsuranceStageCardButton.active(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
