import 'dart:convert';

import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/signature_source_actionsheet_helper.dart';
import 'package:ekyc/core/helpers/signature_upload_confirmation_dialog_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:ekyc/features/signature/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/signature/presentation/mixins/signature_mixin.dart';
import 'package:ekyc/features/signature/presentation/providers/signature_base64_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignatureContainer extends ConsumerStatefulWidget {
  const SignatureContainer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SignatureWidgetState();
}

class SignatureWidgetState extends ConsumerState<SignatureContainer> with SignatureMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getSignature(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final signatureBase64 = ref.watch(signatureBase64Provider);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.signature,
              style: TextStyle(
                color: textGrayColor2,
                fontSize: 14.sp,
              ),
            ),
            InkWell(
              onTap: () {
                _changeSignature();
              },
              child: const Icon(
                Icons.chevron_right,
                color: textGrayColor2,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        DottedBorder(
          color: borderColor,
          radius: const Radius.circular(7),
          borderType: BorderType.RRect,
          dashPattern: const <double>[8, 4],
          child: Center(
            child: signatureBase64 == null
                ? SizedBox(
                    height: 100.h,
                  )
                : Image.memory(
                    base64Decode(signatureBase64),
                    height: 100.h,
                  ),
          ),
        ),
      ],
    );
  }

  void _changeSignature() {
    ActionSheetHelper.showSignatureSourceActionSheet(
      context,
      onDigitalSignaturePressed: () {
        context.pop();
        context.pushNamed(
          AppRoutes.signatureScreen,
          extra: () {
            SignatureUploadConfirmationDialogHelper.showSignatureUploadDialog(
              context,
              onConfirm: () async {
                await saveSignature(
                  context: context,
                  ref: ref,
                  loadingProvider: signatureLoadingProvider,
                  onSuccess: (SaveFileResponseModel success) async {
                    context.showSnackBar(message: success.status?.message ?? "");

                    ref.watch(signatureLoadingProvider.notifier).update((state) => false);

                    context.pop();
                    context.pop();

                    await onSignatureUpdateSuccess(success.body?.responseBody?.fileName);
                  },
                );
              },
            );
          },
        );
      },
      onPickSignatureImagePressed: () {
        pickSignature(
          context: context,
          ref: ref,
          onSuccess: () {
            // confirmation dialog
            SignatureUploadConfirmationDialogHelper.showSignatureUploadDialog(
              context,
              onConfirm: () async {
                await saveSignature(
                  loadingProvider: signatureLoadingProvider,
                  context: context,
                  ref: ref,
                  onSuccess: (SaveFileResponseModel success) async {
                    context.showSnackBar(message: success.status?.message ?? "");

                    ref.watch(signatureLoadingProvider.notifier).update((state) => false);

                    context.pop();

                    await onSignatureUpdateSuccess(success.body?.responseBody?.fileName);
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  Future<void> onSignatureUpdateSuccess(String? filePath) async {
    ref.watch(agentSignaturePathProvider.notifier).update((state) => filePath);

    await getSignature(context: context, ref: ref);
  }
}
