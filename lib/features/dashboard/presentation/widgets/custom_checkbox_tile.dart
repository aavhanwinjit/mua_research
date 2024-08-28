import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomCheckboxTile extends ConsumerWidget {
  final bool value;
  final Function(bool?) onChanged;
  final String title;
  final double? fontSize;
  final bool? squeez;

  const CustomCheckboxTile({
    this.fontSize,
    required this.value,
    required this.onChanged,
    required this.title,
    this.squeez = false,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: squeez == true ? 40 : null,
      child: CheckboxListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
        value: value,
        onChanged: onChanged,
        activeColor: primaryBlueColor,
        checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: const BorderSide(
            color: textGrayColor,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: fontSize ?? 14.sp,
            color: value ? black : textGrayColor2,
          ),
        ),
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
