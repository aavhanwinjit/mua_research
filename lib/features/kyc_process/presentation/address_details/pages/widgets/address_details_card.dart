import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';

class AddressDetailsCard extends StatelessWidget {
  const AddressDetailsCard({super.key});

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
                  Strings.addressDetails,
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
          _infoWidget(),
          SizedBox(height: 24.h),
          _imageRow(),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Divider(
              height: 0,
              color: borderColor,
            ),
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.insuredDocuments,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.h),
          _infoWidget2(),
          SizedBox(height: 24.h),
          _imageRow2(),
        ],
      ),
    );
  }

  Widget _infoWidget() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.surname,
                  value: "Sharma",
                ),
                SizedBox(height: 24),
                InfoTile(
                  title: Strings.billDate,
                  value: "21 Dec 2023",
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.otherName,
                  value: "Devika",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoWidget2() {
    return Padding(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.surname,
                  value: "Sharma",
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InfoTile(
                  title: Strings.billDate,
                  value: "21 Dec 2023",
                ),
              ],
            ),
          ),
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
          Text(
            Strings.nicCard,
            style: TextStyle(color: textGrayColor2),
          ),
          SizedBox(height: 5),
          _imageWidget(),
        ],
      ),
    );
  }

  Widget _imageRow2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Strings.nicCard,
            style: TextStyle(color: textGrayColor2),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              _imageWidget(),
              SizedBox(width: 16.w),
              _imageWidget(),
            ],
          ),
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
