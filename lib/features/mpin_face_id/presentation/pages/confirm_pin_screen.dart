import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/storage/storage_key.dart';
import 'package:ekyc/core/storage/storage_manager.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/auth_profile/presentation/providers/auth_profile_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_agent_mpin.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_fingerprint.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/biometric_auth_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ConfirmPINScreen extends ConsumerStatefulWidget {
  const ConfirmPINScreen({super.key});

  @override
  ConsumerState<ConfirmPINScreen> createState() => _ConfirmPINScreenState();
}

class _ConfirmPINScreenState extends ConsumerState<ConfirmPINScreen> with BiometricAuthMixin {
  String pin = "";
  bool successVal = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBarHelper.showCustomAppbar(context: context, title: ""),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                Strings.confirmPin,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                Strings.createPinSubtitle,
                style: TextStyle(),
              ),
            ),
            const SizedBox(height: 50),
            _maskedPinTextField(),
            const SizedBox(height: 30),
            successVal
                ? Container(
                    color: primaryGreenColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: const Center(
                      child: Text(
                        "PIN successfully set. Your account is now secured.",
                        style: TextStyle(
                          color: white,
                        ),
                      ),
                    ),
                  )
                : const SizedBox(height: 10),
            const SizedBox(height: 10),
            _pinKeypad(),
            // pin keypad last row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: SizedBox(
                    height: 70,
                    width: 70,
                    child: Container(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: primaryBlueColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        if (pin.length < 6) {
                          setState(() {
                            pin += "0";
                          });

                          debugPrint(pin);
                        }

                        ref.watch(createPINProvider.notifier).update((state) => pin);

                        if (pin.length == 6) {
                          //navigate
                          context.pushNamed(AppRoutes.confirmPINScreen);
                        }
                        // if (pin.length < 6) {
                        //   if (index != 9) {
                        //     ref.watch(createPINProvider.notifier).update(
                        //           (state) => "$state${index + 1}",
                        //         );
                        //   } else {
                        //     ref.watch(createPINProvider.notifier).update(
                        //           (state) => "${state}0",
                        //         );
                        //   }
                        //   debugPrint(pin);

                        //   if (pin.length == 6) {
                        //     context.pushNamed(AppRoutes.confirmPINScreen);
                        //   }
                        // }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        "0",
                        style: TextStyle(
                          color: primaryBlueColor,
                          fontSize: 36.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: primaryBlueColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: MaterialButton(
                      onPressed: () {
                        if (pin.isNotEmpty) {
                          setState(() {
                            pin = pin.substring(0, pin.length - 1);
                          });
                          debugPrint(pin);
                        }
                        ref.watch(confirmPINProvider.notifier).update((state) => pin);
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: const Icon(
                        Icons.backspace,
                        color: primaryBlueColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _maskedPinTextField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(6, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 12,
            width: 12,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: index + 1 <= pin.length ? primaryBlueColor : white,
              border: Border.all(
                color: primaryBlueColor,
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _pinKeypad() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: List.generate(
            9,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  color: primaryBlueColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: MaterialButton(
                  onPressed: () {
                    if (pin.length < 6) {
                      setState(() {
                        pin += "${index + 1}";
                      });

                      debugPrint(pin);
                    }

                    ref.watch(confirmPINProvider.notifier).update((state) => pin);

                    if (pin.length == 6) {
                      //navigate
                      Future.delayed(const Duration(seconds: 2), () {
                        _setAgentMPIN();
                        // context.pushNamed(AppRoutes.onboardSuccessScreen);
                      });
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    "${index + 1}",
                    style: TextStyle(
                      color: primaryBlueColor,
                      fontSize: 36.sp,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _setAgentMPIN() async {
    final validateOTPResponse = ref.read(validateOTPResponseProvider);
    final authProfileResponse = ref.read(authProfileProvider);

    SetAgentMpinRequestModel request = SetAgentMpinRequestModel(
      confirmMpin: ref.read(confirmPINProvider),
      mobileNo: validateOTPResponse?.body?.responseBody?.mobileNumber,
      mPIN: ref.read(createPINProvider),
      signaturePath: authProfileResponse?.body?.responseBody?.fileName,
    );

    debugPrint("request in set agent mpin.to json: ${request.toJson()}");

    final response = await getIt<SetAgentMPIN>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (SetAgentMpinResponseModel success) async {
        if (success.status?.isSuccess == true) {
          successVal = true;
          setState(() {});
          ref.read(agentLoginDetailsProvider.notifier).update((state) => success.body?.responseBody);
          // ref.read(setAgentMpinResponseProvider.notifier).update((state) => success);

          // store the auth token
          await _storeDeviceToken(success.body?.responseBody?.deviceToken);
          await _storeAuthToken(success.body?.responseBody?.authToken?.token);
          await _storeSessionId(success.body?.responseBody?.authToken?.sessionId);

          final biometricSelected = ref.watch(biometricSelectedProvider);

          if (biometricSelected) {
            _biometricAuthentication();
          } else {
            context.go(AppRoutes.onboardSuccessScreen);
          }
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> _biometricAuthentication() async {
    await _setFingerPrint();

    // await authenticateWithBiometric(
    //   onAuthenticated: () async {
    //     await _setFingerPrint();

    //     // context.pushNamed(AppRoutes.onboardSuccessScreen);
    //   },
    //   onAuthenticationFailure: (String error) {
    //     context.pushNamed(AppRoutes.onboardSuccessScreen);
    //     context.showErrorSnackBar(message: error);
    //   },
    // );
  }

  Future<void> _setFingerPrint() async {
    final String deviceToken = await _getDeviceToken();

    final response = await getIt<SetFingerPrint>().call(null, deviceToken);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (LoginByFpResponseModel success) async {
        // if (success.status?.isSuccess == true) {
        //   successVal = true;
        //   setState(() {});
        //   ref.read(agentLoginDetailsProvider.notifier).update((state) => success.body?.responseBody);
        //   // ref.read(setAgentMpinResponseProvider.notifier).update((state) => success);

        //   // store the auth token
        //   await _storeDeviceToken(success.body?.responseBody?.deviceToken);
        //   await _storeAuthToken(success.body?.responseBody?.authToken?.token);
        //   await _storeSessionId(success.body?.responseBody?.authToken?.sessionId);

        //   final biometricSelected = ref.watch(biometricSelectedProvider);

        //   if (biometricSelected) {
        //     _biometricAuthentication();
        //   } else {
        //     context.pushNamed(AppRoutes.onboardSuccessScreen);
        //   }
        // } else {
        //   context.showErrorSnackBar(
        //     message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
        //   );
        // }
      },
    );
  }

  Future<void> _storeDeviceToken(String? deviceToken) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.DEVICE_TOKEN, data: deviceToken);
  }

  Future<void> _storeAuthToken(String? authToken) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.AUTH_TOKEN, data: authToken);
  }

  Future<void> _storeSessionId(String? sessionId) async {
    await getIt<AppStorageManager>().storeString(key: StorageKey.SESSION_ID, data: sessionId);
  }

  Future<String> _getDeviceToken() async {
    final String? authToken = await getIt<AppStorageManager>().getString(key: StorageKey.AUTH_TOKEN);

    return authToken ?? "";
  }
}
