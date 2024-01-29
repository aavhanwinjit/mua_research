import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/theme/custom_border_style.dart';
import 'package:flutter/material.dart';

class CustomDrowDownField extends StatelessWidget {
  final String? Function(String?)? validator;
  final Function(String?)? onChanged;
  final List<DropdownMenuItem<String>>? items;
  final String? value;
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
      child: DropdownButtonFormField<String>(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        menuMaxHeight: 300.0,
        dropdownColor: white,
        borderRadius: BorderRadius.circular(16),
        value: value,
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          filled: true,
          fillColor: white,
          labelText: labelText,
          labelStyle: const TextStyle(
            color: textGrayColor,
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
