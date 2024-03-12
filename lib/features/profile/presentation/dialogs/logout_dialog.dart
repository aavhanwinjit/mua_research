import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/logout_mixin.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class LogoutDialogHelper with LogoutMixin {
  void showLogoutDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text(Strings.logout),
        content: const Text(Strings.logoutConfirmationText),
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
              logout(context);
            },
            child: const Text(Strings.yes),
          ),
        ],
      ),
    );
  }
}
