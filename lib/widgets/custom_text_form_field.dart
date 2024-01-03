import 'package:ekyc/core/constants/color/color_constants.dart';
import 'package:ekyc/theme/custom_border_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? label;
  final Color? labelColor;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  final double? width;
  final double? height;
  final String hint;
  final String? prefixText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final void Function()? onTap;
  final Color? textColor;
  final bool? obscureText;
  final bool? autofocus;
  final int? maxLength;

  const CustomTextFormField({
    super.key,
    this.controller,
    this.label,
    this.labelColor,
    this.validator,
    this.onSaved,
    this.onChanged,
    this.width,
    this.height,
    this.prefixText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.readOnly,
    this.onTap,
    this.textColor,
    this.obscureText,
    required this.hint,
    this.autofocus,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: autofocus ?? false,
      onChanged: onChanged,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.done,
      cursorColor: black,
      style: TextStyle(
        fontSize: 16.sp,
      ),
      maxLength: maxLength,
      decoration: InputDecoration(
        fillColor: white,
        filled: true,
        prefixText: prefixText,
        prefixStyle: TextStyle(
          color: black,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        counterText: "",
        hintText: hint,
        hintStyle: TextStyle(
          color: textGrayColor,
        ),
        labelText: label,
        labelStyle: TextStyle(
          color: textGrayColor,
        ),
        floatingLabelStyle: TextStyle(
          color: textGrayColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: CustomBorderStyle.customTextFieldBorder,
        focusedBorder: CustomBorderStyle.customTextFieldBorder,
        enabledBorder: CustomBorderStyle.customTextFieldBorder,
        errorBorder: CustomBorderStyle.customTextFieldErrorBorder,
        disabledBorder: CustomBorderStyle.customTextFieldBorder,
      ),
    );
  }
}
