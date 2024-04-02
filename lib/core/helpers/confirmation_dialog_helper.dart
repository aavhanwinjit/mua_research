import 'package:ekyc/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class ConfirmationDialogHelper {
  static void showConfirmationDialog(
    BuildContext context, {
    required String title,
    required String content,
    required Function onConfirm,
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
              context.pop();
            },
            child: const Text(Strings.no),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () async {
              onConfirm();
            },
            child: const Text(Strings.yes),
          ),
        ],
      ),
    );
  }
}
