import 'package:ekyc/core/app_export.dart';
import 'package:flutter/cupertino.dart';

class ErrorDialogHelper {
  static void showErrorDialog(
    BuildContext context, {
    required String title,
    required String content,
    required Function onConfirm,
    String? positiveButtonTitle,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () async {
              onConfirm();
            },
            child: Text(positiveButtonTitle ?? Strings.yes),
          ),
        ],
      ),
    );
  }
}
