import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/widgets/info_tile.dart';
import 'package:flutter/material.dart';

class NICDetailsCard extends StatelessWidget {
  const NICDetailsCard({super.key});

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
                  Strings.nicCard,
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
          //information
          _infoWidget(),
          SizedBox(height: 24.h),
          //NIC image
          _imageRow(),
          SizedBox(height: 16.h),
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
                  title: Strings.nicNumber,
                  value: "S0808739500254",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
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
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          ImageConstants.idImage,
          height: 100.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
