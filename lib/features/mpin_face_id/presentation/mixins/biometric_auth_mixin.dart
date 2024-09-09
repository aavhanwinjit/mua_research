import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as error_code;
import 'package:local_auth/local_auth.dart';

mixin BiometricAuthMixin {
  Future<void> authenticateWithBiometric({
    required VoidCallback onAuthenticated,
    required ValueChanged<String> onAuthenticationFailure,
  }) async {
    final LocalAuthentication auth = LocalAuthentication();

    try {
      final List<BiometricType> availableBiometrics = await auth.getAvailableBiometrics();

      if (availableBiometrics.isEmpty) {
        debugPrint("No Biometric Available");
        onAuthenticationFailure.call(Strings.noBiometricsAvailable);
        return;
      }

      debugPrint("Available Biometrics: $availableBiometrics");

      AuthenticationOptions authenticationOptions = const AuthenticationOptions(stickyAuth: true);

      // authenticate
      final bool didAuthenticate = await auth.authenticate(
        localizedReason: Strings.biometricDialogBoxSubtitle,
        options: authenticationOptions,
      );

      debugPrint("didAuthenticate: $didAuthenticate");

      // check if authenticated
      if (didAuthenticate) {
        onAuthenticated.call();
      } else {
        onAuthenticationFailure.call(Strings.biometricAuthenticationFailed);
      }
    } on PlatformException catch (e) {
      if (e.code == error_code.passcodeNotSet) {
        onAuthenticationFailure.call("${e.code} ${e.message}");
      }
      debugPrint("error: $e");
    }
  }
}
