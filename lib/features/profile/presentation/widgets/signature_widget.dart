import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/signature_source_actionsheet_helper.dart';
import 'package:ekyc/core/helpers/signature_upload_confirmation_dialog_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/profile/presentation/mixins/signature_mixin.dart';
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
  Widget build(BuildContext context) {
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
            child: Image.asset(
              ImageConstants.signatureImage,
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
        context.pushNamed(AppRoutes.signatureScreen, extra: true);
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
                await uploadSignature(
                  context: context,
                  ref: ref,
                  onSuccess: (SaveFileResponseModel success) {
                    context.showSnackBar(message: success.status?.message ?? "");
                    context.pop();
                  },
                );
              },
            );
          },
        );
      },
    );
  }

  // void pickSignature() async {
  //   XFile? result = await ImagePicker().pickImage(
  //     source: ImageSource.gallery,
  //     maxHeight: 1500,
  //     maxWidth: 1500,
  //   );

  //   if (result != null) {
  //     // final list = await result.readAsBytes();
  //     // ref.read(signatureProvider.notifier).update((state) => list);

  //     context.pop();
  //   }
  // }
}
