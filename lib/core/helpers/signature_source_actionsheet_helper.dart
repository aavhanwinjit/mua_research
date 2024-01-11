import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
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
          child: Text(
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
            child: Text(
              Strings.digitalSignature,
              style: TextStyle(
                color: iosButtonBlueTextColor,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: onPressed,
            child: Text(
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
          child: Text(
            Strings.cancel,
            style: TextStyle(
              color: iosButtonBlueTextColor,
            ),
          ),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: onCameraPressed,
            child: Text(
              Strings.takePhotoFromCamera,
              style: TextStyle(
                color: iosButtonBlueTextColor,
              ),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: onLibraryPressed,
            child: Text(
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
}
