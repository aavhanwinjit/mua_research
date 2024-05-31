import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class KycTypeLoadingWidget extends StatelessWidget {
  const KycTypeLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          children: [
            _loadingItem(),
            SizedBox(width: 12.w),
            _loadingItem(),
            SizedBox(width: 12.w),
            _loadingItem(),
          ],
        ),
      ),
    );
  }

  Widget _loadingItem() {
    return Expanded(
      child: Container(
        height: 125,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sp),
          color: Colors.red,
        ),
      ),
    );
  }
}
