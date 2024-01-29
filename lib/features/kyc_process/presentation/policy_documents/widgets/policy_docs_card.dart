import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class PolicyDocsCard extends StatelessWidget {
  const PolicyDocsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //info box heading
          Padding(
            padding: EdgeInsets.only(left: 16.w, top: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.policyDocuments,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                // TextButton(
                //   onPressed: () => context.pushNamed(AppRoutes.editIDScreen),
                //   child: Text(
                //     Strings.edit,
                //     style: TextStyle(
                //       fontSize: 14.sp,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),

          SizedBox(height: 24.h),
          //NIC image
          _imageRow(),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  Widget _imageRow() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            Strings.nicCard,
            style: TextStyle(color: textGrayColor2),
          ),
          const SizedBox(height: 5),
          _imageWidget(),
        ],
      ),
    );
  }

  Widget _imageWidget() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        ImageConstants.idImage,
        height: 150.h,
        width: 150.h,
        fit: BoxFit.cover,
      ),
    );
  }
}
