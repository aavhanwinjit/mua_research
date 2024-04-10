import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class RemoveDocumentButton extends StatelessWidget {
  final Function() onPressed;
  const RemoveDocumentButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          Strings.removeDocument,
          style: TextStyle(
            color: primaryColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
