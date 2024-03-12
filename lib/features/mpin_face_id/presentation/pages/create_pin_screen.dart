import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBarHelper.showCustomAppbar(context: context, title: ""),
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
            const SizedBox(height: 50),
            MaskedPinTextfield(provider: createPINProvider),
            const SizedBox(height: 80),
            //PIN keypad
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: PinKeypad(
                provider: createPINProvider,
                callback: () => context.pushNamed(AppRoutes.confirmPINScreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
