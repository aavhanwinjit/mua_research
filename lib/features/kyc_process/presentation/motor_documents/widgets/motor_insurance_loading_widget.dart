import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MotorInsuranceDetailsLoadingWidget extends StatelessWidget {
  const MotorInsuranceDetailsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
            height: 55.h,
            width: double.infinity,
          ),
          SizedBox(height: 24.h),
          _loadingWidget(),
        ],
      ),
    );
  }

  Widget _loadingWidget() {
    return Container(
      height: 157.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: Colors.red,
      ),
    );
  }
}
