import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/masked_pin_textfield.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/pin_keypad.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class OldPinScreen extends ConsumerStatefulWidget {
  const OldPinScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _OldPinScreenState();
}

class _OldPinScreenState extends ConsumerState<OldPinScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.watch(oldPINProvider.notifier).update((state) => "");
    });
  }

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
                Strings.currectPin,
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
                Strings.currentPinSubtitle,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            ),
            const Spacer(),
            MaskedPinTextfield(provider: oldPINProvider),
            const Spacer(),
            //PIN keypad
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: PinKeypad(
                provider: oldPINProvider,
                callback: () async {
                  final bool? result = await context.pushNamed(AppRoutes.createPINScreen);

                  if (result == true) {
                    ref.watch(oldPINProvider.notifier).update((state) => "");
                  }
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
