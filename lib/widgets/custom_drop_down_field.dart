import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/theme/custom_border_style.dart';
import 'package:flutter/material.dart';

class CustomDrowDownField extends StatelessWidget {
  final String? Function(Object?)? validator;
  final Function(Object?)? onChanged;
  final List<DropdownMenuItem<Object>>? items;
  final Object? value;
  final String? labelText;

  const CustomDrowDownField({
    super.key,
    this.validator,
    this.onChanged,
    this.items,
    this.value,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButtonFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        menuMaxHeight: 300.0,
        dropdownColor: white,
        isExpanded: true,
        borderRadius: BorderRadius.circular(16),
        value: value,
        icon: Icon(
          Icons.keyboard_arrow_down,
          size: 20.sp,
        ),
        items: items,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: white,
          labelText: labelText,
          labelStyle: TextStyle(
            color: textGrayColor,
            fontSize: 12.sp,
          ),
          border: CustomBorderStyle.customTextFieldBorder,
          focusedBorder: CustomBorderStyle.customTextFieldFocusedBorder,
          enabledBorder: CustomBorderStyle.customTextFieldBorder,
          errorBorder: CustomBorderStyle.customTextFieldBorder,
          disabledBorder: CustomBorderStyle.customTextFieldBorder,
        ),
      ),
    );
  }
}
