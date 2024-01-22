import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class AddDocumentButton extends StatelessWidget {
  final Function() onPressed;
  const AddDocumentButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: TextButton.icon(
        onPressed: onPressed,
        icon: Icon(Icons.add),
        label: Text(
          Strings.addMoreDocuments,
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
