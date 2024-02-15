import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/request/login_by_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/response/login_by_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/login_by_mpin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MPINLoginScreen extends ConsumerStatefulWidget {
  const MPINLoginScreen({super.key});

  @override
  ConsumerState<MPINLoginScreen> createState() => _CreatePinScreenState();
}

class _CreatePinScreenState extends ConsumerState<MPINLoginScreen> {
  String pin = "";
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
            Column(
              children: [
                _subHeading(),
                SizedBox(height: 24.h),
                _maskedPinTextField(),
                if (wrongPin) ...[
                  SizedBox(height: 12.h),
                  _wrongPinText(),
                  _forgotPinButton(),
                ],
                _useBiometricButton(),
              ],
            ),
            Column(
              children: [
                _pinKeypad(),
                _keypadLastRow(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Text(
      "${Strings.hi} Aman Sharma",
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
      onPressed: () {},
      child: const Text(
        Strings.forgotPin,
        style: TextStyle(
          color: primaryBlueColor,
        ),
      ),
    );
  }

  Widget _useBiometricButton() {
    return TextButton(
      onPressed: () {},
      child: const Text(
        Strings.useTouchId,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          decorationColor: primaryColor,
        ),
      ),
    );
  }

  Widget _keypadLastRow() {
    return Row(
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

                ref.watch(loginPINProvider.notifier).update((state) => pin);

                if (pin.length == 6) {
                  Future.delayed(const Duration(seconds: 2), () {
                    _loginByMPIN();
                  });
                }
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
                if ((pin.length < 6) && (pin.isNotEmpty)) {
                  setState(() {
                    pin = pin.substring(0, pin.length - 1);
                  });
                  debugPrint(pin);
                }
                ref.watch(loginPINProvider.notifier).update((state) => pin);
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
    );
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

  Widget _maskedPinTextField() {
    final String pin = ref.watch(loginPINProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) {
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
        },
      ),
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

                    ref.watch(loginPINProvider.notifier).update((state) => pin);

                    if (pin.length == 6) {
                      Future.delayed(const Duration(seconds: 2), () {
                        _loginByMPIN();
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

  void _loginByMPIN() async {
    final deviceInfo = await DeviceInformationHelper().generateDeviceInformation();

    LoginbyMpinRequestModel request = LoginbyMpinRequestModel(
      deviceId: deviceInfo.deviceId,
      deviceToken: "499dddb0-5ab1-4d04-90b6-87aadd4599ee",
      mPin: pin,
    );

    debugPrint("request in login by mpin.to json: ${request.toJson()}");

    final response = await getIt<LoginByMpin>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (LoginbyMpinResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // take to dashboard
        } else {
          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }
}