import 'package:ekyc/core/app_export.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class KycStatusDialogHelper {
  static void showOldBillDateDialog(
    BuildContext context, {
    required String content,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(Strings.kycFailed),
        content: Text(content),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () async {
              context.pop();
            },
            child: const Text(Strings.changeDocument),
          ),
        ],
      ),
    );
  }

  
}
