import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/storage/storage_manager.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/profile/data/models/de_register_fingerprint/request/de_register_fingerprint_response_model.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
import 'package:ekyc/features/profile/domain/usecases/de_register_fingerprint.dart';
import 'package:ekyc/features/profile/domain/usecases/logout.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

mixin LogoutMixin {
  Future<void> logout(BuildContext context) async {
    final response = await getIt<Logout>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (LogoutResponseModel success) async {
        if (success.status?.isSuccess == true) {
          getIt<AppStorageManager>().clearStorage();
          sessionID = "";

          context.go(AppRoutes.loginScreen);
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> deRegisterFingerprint(BuildContext context) async {
    final response = await getIt<DeRegisterFingerprint>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (DeRegisterFingerprintResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // getIt<AppStorageManager>().clearStorage();

          // context.go(AppRoutes.loginScreen);
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
