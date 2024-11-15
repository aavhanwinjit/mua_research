import 'dart:ui' as ui;

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/signature/presentation/mixins/signature_mixin.dart';
import 'package:ekyc/features/signature/presentation/providers/signature_provider.dart';
import 'package:ekyc/theme/custom_shadows.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class SignatureScreen extends ConsumerStatefulWidget {
  final Function? uploadFunction;

  const SignatureScreen({
    super.key,
    this.uploadFunction,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignatureScreenState();
}

class _SignatureScreenState extends ConsumerState<SignatureScreen> with SignatureMixin {
  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: disabledButtonColor,
      appBar: _appBar(),
      bottomNavigationBar: _buttons(),
      body: _signaturePad(),
    );
  }

  Widget _signaturePad() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(20.w),
        decoration: BoxDecoration(
          boxShadow: CustomShadows.signatureCardShadow,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            8.sp,
          ),
          child: SfSignaturePad(
            key: signatureGlobalKey,
            backgroundColor: Colors.white,
            strokeColor: Colors.black,
            minimumStrokeWidth: 4.0,
            maximumStrokeWidth: 8.0,
          ),
        ),
      ),
    );
  }

  Widget _buttons() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h, left: 20.w, right: 20.w),
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: CustomOutlineButton(
              disable: false,
              onTap: () {
                _handleClearButtonPressed();
              },
              label: Strings.clear,
            ),
          ),
          SizedBox(width: 8.w),
          Flexible(
            flex: 3,
            child: CustomPrimaryButton(
              disable: false,
              onTap: () {
                _handleSaveButtonPressed();
              },
              label: Strings.save,
            ),
          ),
        ],
      ),
    );
  }

  void _handleClearButtonPressed() {
    signatureGlobalKey.currentState!.clear();
  }

  void _handleSaveButtonPressed() async {
    LoadingDialog.show(context);
    final data = await signatureGlobalKey.currentState!.toImage(pixelRatio: 3.0);
    final bytes = await data.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List list = bytes!.buffer.asUint8List();

    ref.read(signatureProvider.notifier).update((state) => list);

    LoadingDialog.hide(context);
    if (widget.uploadFunction != null) {
      // upload Signature api call
      widget.uploadFunction!();
    } else {
      context.pop();
    }
  }

  AppBar _appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text(
        Strings.signHere,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.sp,
          color: black,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            Icons.close,
            color: black,
          ),
        ),
      ],
      systemOverlayStyle: const SystemUiOverlayStyle(
        // statusBarColor: Colors.red,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
    );
  }
}

class LoadingDialog extends StatelessWidget {
  static void show(BuildContext context, {Key? key}) => showDialog<void>(
        context: context,
        useRootNavigator: false,
        barrierColor: Colors.black45,
        barrierDismissible: false,
        builder: (_) => LoadingDialog(key: key),
      ).then((_) => FocusScope.of(context).requestFocus(FocusNode()));

  static void hide(BuildContext context) => Navigator.pop(context);

  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: white,
          ),
        ),
      ],
    );
  }
}
