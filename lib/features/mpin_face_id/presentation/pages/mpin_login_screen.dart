import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/providers/session_id_provider.dart';
import 'package:ekyc/core/utils/api_error_codes.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/request/login_by_fp_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/request/login_by_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/response/login_by_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_fp.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_mpin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/biometric_auth_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/backspace_button.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/masked_pin_textfield.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/pin_keypad.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:ekyc/features/splash_screen/presentation/providers/launch_details_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MPINLoginScreen extends ConsumerStatefulWidget {
  const MPINLoginScreen({super.key});

  @override
  ConsumerState<MPINLoginScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends ConsumerState<MPINLoginScreen>
    with BiometricAuthMixin {
  bool wrongPin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: _appBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _title(),
            _subHeading(),
            SizedBox(height: 24.h),
            MaskedPinTextfield(provider: loginPINProvider),
            if (wrongPin) ...[
              SizedBox(height: 12.h),
              _wrongPinText(),
              _forgotPinButton(),
            ],
            _useBiometricButton(),
            //PIN keypad
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: PinKeypad(
                provider: loginPINProvider,
                callback: () => Future.delayed(const Duration(seconds: 2), () {
                  _loginByMPIN();
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    final launchDetailsProvider = ref.watch(launchDetailsResponseProvider);
    final name =
        launchDetailsProvider?.body?.responseBody?.agentData?.loginData?.name;

    return Text(
      "${Strings.hi} ${name ?? "-"}",
      style: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _subHeading() {
    return const Text(
      Strings.verifypin,
      style: TextStyle(),
    );
  }

  Widget _wrongPinText() {
    return const Text(
      Strings.wrongPin,
      style: TextStyle(
        color: errorTextRed,
      ),
    );
  }

  Widget _forgotPinButton() {
    return TextButton(
      onPressed: _forgotPin,
      child: const Text(
        Strings.forgotPin,
        style: TextStyle(
          color: primaryBlueColor,
        ),
      ),
    );
  }

  Widget _useBiometricButton() {
    final launchDetailsProvider = ref.watch(launchDetailsResponseProvider);
    final isFPLogin = launchDetailsProvider?.body?.responseBody?.agentData?.loginData?.isFpLogin ?? false;

    return isFPLogin
        ? TextButton(
            onPressed: _biometricAuthentication,
            child: const Text(
              Strings.useTouchId,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: primaryColor,
              ),
            ),
          )
        : const SizedBox();
  }

  AppBar _appBar() {
    return AppBar(
      scrolledUnderElevation: 0,
      actions: [
        Image.asset(
          ImageConstants.pngLogo,
          width: 68.w,
        ),
        SizedBox(width: 20.w),
      ],
      systemOverlayStyle: const SystemUiOverlayStyle(
        // statusBarColor: Colors.red,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
    );
  }

  void _loginByMPIN() async {
    final deviceInfo =
        await DeviceInformationHelper().generateDeviceInformation();

    final launchDetailsProvider = ref.watch(launchDetailsResponseProvider);

    final String mobileNo = launchDetailsProvider
            ?.body?.responseBody?.agentData?.loginData?.mobileNo ??
        "";

    final String deviceToken = await LocalDataHelper.getDeviceToken();

    LoginbyMpinRequestModel request = LoginbyMpinRequestModel(
      deviceId: deviceInfo.deviceId,
      deviceToken: deviceToken,
      mPin: ref.watch(loginPINProvider),
      mobileNo: mobileNo,
    );

    final response = await getIt<LoginByMpin>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(
            message: Strings.globalErrorGenericMessageOne);
      },
      (LoginbyMpinResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // ref.read(loginByMpinResponseProvider.notifier).update((state) => success);
          ref
              .read(agentLoginDetailsProvider.notifier)
              .update((state) => success.body?.responseBody);

          debugPrint("success.body?.responseBody?.isFpLogin: ${success.body?.responseBody?.isFpLogin}");

          await _setData(
            deviceToken: success.body?.responseBody?.deviceToken,
            authToken: success.body?.responseBody?.authToken?.token,
            sessionId: success.body?.responseBody?.authToken?.sessionId,
          );

          context.go(AppRoutes.dashboardScreen);
        } else if (success.status?.isSuccess == false &&
            success.status?.statusCode == ApiErrorCodes.inValidPin) {
          context.showErrorSnackBar(
            message: Strings.pinAuthenticationFailed,
          );
          ref.watch(loginPINProvider.notifier).update((state) => "");
          wrongPin = true;
          setState(() {});
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
          ref.watch(loginPINProvider.notifier).update((state) => "");
         
          setState(() {});
        }
      },
    );
  }

  Future<void> _biometricAuthentication() async {
    _loginByFP();
    // await authenticateWithBiometric(
    //   onAuthenticated: () {
    //     _loginByFP();
    //   },
    //   onAuthenticationFailure: (String error) {
    //     context.showErrorSnackBar(message: Strings.biometricAuthenticationFailed);
    //   },
    // );
  }

  void _loginByFP() async {
    final deviceInfo =
        await DeviceInformationHelper().generateDeviceInformation();

    final String deviceToken = await LocalDataHelper.getDeviceToken();
    final String fpToken = await LocalDataHelper.getFPToken();

    final launchDetailsProvider = ref.watch(launchDetailsResponseProvider);
    final String mobileNo = launchDetailsProvider
            ?.body?.responseBody?.agentData?.loginData?.mobileNo ??
        "";

    LoginByFpRequestModel request = LoginByFpRequestModel(
      deviceId: deviceInfo.deviceId,
      deviceToken: deviceToken,
      biometricStatus: true,
      fpDeviceToken: fpToken,
      mobileNo: mobileNo,
    );

    final response = await getIt<LoginByFP>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(
            message: Strings.globalErrorGenericMessageOne);
      },
      (LoginByFpResponseModel success) async {
        if (success.status?.isSuccess == true) {
          ref.read(agentLoginDetailsProvider.notifier).update((state) => success.body?.responseBody);

          debugPrint("success.body?.responseBody?.isFpLogin: ${success.body?.responseBody?.isFpLogin}");

          await _setData(
            deviceToken: success.body?.responseBody?.deviceToken,
            authToken: success.body?.responseBody?.authToken?.token,
            sessionId: success.body?.responseBody?.authToken?.sessionId,
            fpDeviceToken: success.body?.responseBody?.fpDeviceToken,
          );

          context.go(AppRoutes.dashboardScreen);
        } else {
          context.showErrorSnackBar(
            message:
                success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> _forgotPin() async {
    ref.watch(forgotPasswordSelectedProvider.notifier).update((state) => true);

    context.pushNamed(AppRoutes.loginScreen);
  }

  Future<void> _setData({
    required String? deviceToken,
    required String? authToken,
    required String? sessionId,
    String? fpDeviceToken,
  }) async {
    await LocalDataHelper.storeDeviceToken(deviceToken);
    await LocalDataHelper.storeAuthToken(authToken);
    await LocalDataHelper.storeSessionId(sessionId);

    if (fpDeviceToken != null) {
      await LocalDataHelper.storeFPToken(fpDeviceToken);
    }

    ref.watch(sessionIdProvider.notifier).update((state) => sessionId ?? "");
  }
}
