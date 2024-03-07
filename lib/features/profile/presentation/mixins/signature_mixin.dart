import 'dart:convert';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/file_type_enums.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/request/save_file_request_model.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/auth_profile/domain/usecases/save_file.dart';
import 'package:ekyc/features/signature/presentation/providers/signature_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

mixin SignatureMixin {
  void pickSignature({
    required BuildContext context,
    required WidgetRef ref,
    required Function onSuccess,
  }) async {
    XFile? result = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 1500,
      maxWidth: 1500,
    );

    if (result != null) {
      final list = await result.readAsBytes();
      ref.read(signatureProvider.notifier).update((state) => list);

      context.pop();

      onSuccess();
    }
  }

  Future<void> uploadSignature({
    required BuildContext context,
    required WidgetRef ref,
    required Function(SaveFileResponseModel success) onSuccess,
  }) async {
    final signatureBytes = ref.watch(signatureProvider) as List<int>;
    final String signatureBase64 = base64Encode(signatureBytes);

    final SaveFileRequestModel request = SaveFileRequestModel(
      fileName: "${FileType.SIGNATURE.toString().split('.').last}.png",
      fileString: signatureBase64,
      allowedFileId: 9,
    );

    final response = await getIt<SaveFile>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SaveFileResponseModel success) async {
        debugPrint("success in auth profile screen: $success");

        if (success.status?.isSuccess == true) {
          onSuccess(success);
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}
