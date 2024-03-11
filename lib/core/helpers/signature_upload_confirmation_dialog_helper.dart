import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/signature/presentation/mixins/signature_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class SignatureUploadConfirmationDialogHelper with SignatureMixin {
  static void showSignatureUploadDialog(BuildContext context, {required Function onConfirm}) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(Strings.updateSignature),
        content: const Text("Are you sure you want to proceed to update the signature?"),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () {
              context.pop();
            },
            child: const Text('No'),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () async {
              onConfirm();
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
