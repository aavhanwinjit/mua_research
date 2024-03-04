import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/url_launcher_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class ActionSheetHelper {
  static void showSignatureSourceActionSheet(
    BuildContext context, {
    required Function() onPressed,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            context.pop();
          },
          isDefaultAction: true,
          child: const Text(
            Strings.cancel,
            style: TextStyle(
              color: iosButtonBlueTextColor,
            ),
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              context.pop();
              context.pushNamed(AppRoutes.signatureScreen);
            },
            child: const Text(
              Strings.digitalSignature,
              style: TextStyle(
                color: iosButtonBlueTextColor,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: onPressed,
            child: const Text(
              Strings.uploadSignatureImage,
              style: TextStyle(
                color: iosButtonBlueTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void showImageSourceActionSheet(
    BuildContext context, {
    required Function() onLibraryPressed,
    required Function() onCameraPressed,
  }) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            context.pop();
          },
          isDefaultAction: true,
          child: const Text(
            Strings.cancel,
            style: TextStyle(
              color: iosButtonBlueTextColor,
            ),
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: onCameraPressed,
            child: const Text(
              Strings.takePhotoFromCamera,
              style: TextStyle(
                color: iosButtonBlueTextColor,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: onLibraryPressed,
            child: const Text(
              Strings.uploadFromLibrary,
              style: TextStyle(
                color: iosButtonBlueTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static void showContactUsActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          onPressed: () {
            context.pop();
          },
          isDefaultAction: true,
          child: const Text(
            Strings.cancel,
            style: TextStyle(
              color: iosButtonBlueTextColor,
            ),
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () {
              context.pop();
              UrlLauncherHelper.launchPhone();
            },
            child: const Text(
              Strings.helpContact,
              style: TextStyle(
                color: iosButtonBlueTextColor,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () {
              context.pop();
              UrlLauncherHelper.launchMail();
            },
            child: const Text(
              Strings.helpEmail,
              style: TextStyle(
                color: iosButtonBlueTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
