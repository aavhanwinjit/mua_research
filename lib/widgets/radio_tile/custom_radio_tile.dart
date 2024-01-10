import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomRadioTile extends StatelessWidget {
  final String title;
  final dynamic value;
  final dynamic groupValue;
  final Function() onChange;

  const CustomRadioTile({super.key, required this.title, this.value, this.groupValue, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChange,
      child: Row(
        children: [
          Image.asset(
            groupValue == value ? ImageConstants.radioOn : ImageConstants.radioOff,
            height: 18.sp,
          ),
          SizedBox(width: 8.sp),
          Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              color: black,
            ),
          ),
        ],
      ),
    );
  }
}
