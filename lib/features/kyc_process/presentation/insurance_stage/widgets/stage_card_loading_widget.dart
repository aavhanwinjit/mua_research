import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class StageCardLoadingWidget extends StatelessWidget {
  const StageCardLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Column(
        children: [
          _loadingWidget(),
          SizedBox(height: 16.h),
          _loadingWidget(),
          SizedBox(height: 16.h),
          _loadingWidget(),
          SizedBox(height: 16.h),
          _loadingWidget(),
        ],
      ),
    );
  }

  Widget _loadingWidget() {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: Colors.red,
      ),
    );
  }
}
