import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/core/utils/extensions/string_extensions.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/masked_pin_textfield.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/pin_keypad.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreatePinScreen extends ConsumerStatefulWidget {
  const CreatePinScreen({super.key});

  @override
  ConsumerState<CreatePinScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends ConsumerState<CreatePinScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(createPINProvider.notifier).update((state) => "");
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        context.pop(true);
      },
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: "",
          onPressed: () {
            context.pop(true);
          },
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  Strings.createPin,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //subtitle
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  Strings.createPinSubtitle,
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ),
              const Spacer(),
              MaskedPinTextfield(provider: createPINProvider),
              const Spacer(),
              //PIN keypad
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: PinKeypad(
                  provider: createPINProvider,
                  callback: _validatePin,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void _validatePin() async {
    final bool isValid = ref.watch(createPINProvider).validatePin();

    if (!isValid) {
      context.showErrorSnackBar(message: Strings.pinValidationFailed);
      ref.watch(createPINProvider.notifier).update((state) => "");
    } else {
      final bool? result = await context.pushNamed(AppRoutes.confirmPINScreen);

      if (result == true) {
        ref.watch(createPINProvider.notifier).update((state) => "");
      }
    }
  }
}
