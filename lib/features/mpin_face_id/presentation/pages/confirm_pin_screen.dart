import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/auth_profile/presentation/providers/auth_profile_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_fingerprint/response/set_fingerprint_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_agent_mpin.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_fingerprint.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/biometric_auth_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/masked_pin_textfield.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/pin_keypad.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ConfirmPINScreen extends ConsumerStatefulWidget {
  const ConfirmPINScreen({super.key});

  @override
  ConsumerState<ConfirmPINScreen> createState() => _ConfirmPINScreenState();
}

class _ConfirmPINScreenState extends ConsumerState<ConfirmPINScreen>
    with BiometricAuthMixin {
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
            //Heading
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
            //Subtitle
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
            MaskedPinTextfield(provider: confirmPINProvider),
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
            //PIN keypad
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: PinKeypad(
                provider: confirmPINProvider,
                callback: () => Future.delayed(const Duration(seconds: 2), () {
                  _setAgentMPIN();
                }),
              ),
            ),
          ],
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
        context.showErrorSnackBar(
            message: Strings.globalErrorGenericMessageOne);
      },
      (SetAgentMpinResponseModel success) async {
        if (success.status?.isSuccess == true) {
          successVal = true;
          setState(() {});
          ref
              .read(agentLoginDetailsProvider.notifier)
              .update((state) => success.body?.responseBody);

          // store the auth token
          await _setData(
            deviceToken: success.body?.responseBody?.deviceToken,
            authToken: success.body?.responseBody?.authToken?.token,
            sessionId: success.body?.responseBody?.authToken?.sessionId,
          );

          final biometricSelected = ref.watch(biometricSelectedProvider);

          if (biometricSelected) {
            _biometricAuthentication();
          } else {
            context.go(AppRoutes.onboardSuccessScreen);
          }
        } else {
          context.showErrorSnackBar(
            message:
                success.status?.message ?? Strings.globalErrorGenericMessageOne,
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
    final response = await getIt<SetFingerPrint>().call(null);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(
            message: Strings.globalErrorGenericMessageOne);
      },
      (SetFingerprintResponseModel success) async {
        if (success.status?.isSuccess == true) {
          successVal = true;
          setState(() {});

          context.showSnackBar(
              message: success.body?.responseBody?.data?.message ?? "");

          // store the auth token
          await _setData(
            deviceToken: success.body?.responseBody?.data?.data?.deviceToken,
            authToken: success.body?.responseBody?.tokenData?.token,
            sessionId: success.body?.responseBody?.tokenData?.sessionId,
            fpToken: success.body?.responseBody?.data?.data?.id,
          );

          context.pushNamed(AppRoutes.onboardSuccessScreen);
        } else {
          context.showErrorSnackBar(
            message:
                success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> _setData({
    required String? deviceToken,
    required String? authToken,
    required String? sessionId,
    String? fpToken,
  }) async {
    await LocalDataHelper.storeDeviceToken(deviceToken);
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);

    if (fpToken != null) {
      await LocalDataHelper.storeFPToken(fpToken);
    }

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
