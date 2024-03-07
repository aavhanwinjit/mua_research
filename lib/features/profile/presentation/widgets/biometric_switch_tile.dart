import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/biometric_auth_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/logout_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/registration_mixin.dart';
import 'package:ekyc/features/profile/presentation/widgets/options_tile.dart';
import 'package:ekyc/features/splash_screen/presentation/providers/launch_details_providers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BiometricSwitchTile extends ConsumerStatefulWidget {
  const BiometricSwitchTile({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BiometricSwitchTileState();
}

class _BiometricSwitchTileState extends ConsumerState<BiometricSwitchTile>
    with RegistrationMixin, LogoutMixin, BiometricAuthMixin {
  @override
  Widget build(BuildContext context) {
    final isFPLogin = ref.watch(isFPLoginProvider);

    return OptionsTile(
      icon: ImageConstants.fingerPrintIcon,
      title: Strings.screenLock,
      subtitle: Strings.biometricAndScreenlock,
      trailing: CupertinoSwitch(
        value: isFPLogin,
        activeColor: iosSwitchColor,
        onChanged: (bool? value) {
          if (value == false) {
            deRegisterFingerprint(context: context, ref: ref);
          } else {
            _biometricAuthentication();
          }
        },
      ),
    );
  }

  Future<void> _biometricAuthentication() async {
    await setFingerPrint(
      context: context,
      ref: ref,
      onSuccess: () {},
      successNavigation: () {
        ref.watch(isFPLoginProvider.notifier).update((state) => true);
      },
    );

    // await authenticateWithBiometric(
    //   onAuthenticated: () async {
    //     await setFingerPrint(
    //       context: context,
    //       ref: ref,
    //       onSuccess: () {},
    //     );
    //   },
    //   onAuthenticationFailure: (String error) {
    //     context.showErrorSnackBar(message: error);
    //   },
    // );
  }
}
