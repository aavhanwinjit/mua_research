import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DashboardLoadingWidget extends StatelessWidget {
  const DashboardLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: Column(
        children: [
          _headingAndSearchBarLoadingWidget(),
          SizedBox(height: 25.h),
          _listView(),
        ],
      ),
    );
  }

  Widget _listView() {
    return Expanded(
      child: ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 80.h),
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 16.h),
        itemCount: 7,
      ),
    );
  }

  Widget _headingAndSearchBarLoadingWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
            ),
            height: 25.h,
            width: 150.w,
          ),
          SizedBox(height: 20.h),
          const CustomTextFormField(),
        ],
      ),
    );
  }
}
