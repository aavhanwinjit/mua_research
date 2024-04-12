import 'package:ekyc/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class ConfirmationDialogHelper {
  static void showConfirmationDialog(
    BuildContext context, {
    required String title,
    required String content,
    required Function onConfirm,
    Function? onReject,
    String? positiveButtonTitle,
    String? negativeButtonTitle,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              if (onReject != null) {
                onReject();
              } else {
                context.pop();
              }
            },
            child: Text(negativeButtonTitle ?? Strings.no),
          ),
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
