import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/auth_profile/presentation/providers/auth_profile_provider.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/usecases/set_agent_mpin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/set_agent_mpin_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ConfirmPINScreen extends ConsumerStatefulWidget {
  const ConfirmPINScreen({super.key});

  @override
  ConsumerState<ConfirmPINScreen> createState() => _ConfirmPINScreenState();
}

class _ConfirmPINScreenState extends ConsumerState<ConfirmPINScreen> {
  String pin = "";

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
            pin.length == 6
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
      mobileNo: validateOTPResponse?.mobileNumber,
      mpin: ref.read(createPINProvider),
      signaturePath: authProfileResponse?.fileName,
    );
    final response = await getIt<SetAgentMPIN>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        // handle failure
      },
      (SetAgentMpinResponseModel success) async {
        // ref.read(authProfileProvider.notifier).update((state) => success);

        context.pushNamed(AppRoutes.onboardSuccessScreen);
      },
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
            10,
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
                      if (index != 9) {
                        setState(() {
                          pin += "${index + 1}";
                        });
                      } else {
                        setState(() {
                          pin += "0";
                        });
                      }
                      debugPrint(pin);
                      if (pin.length == 6) {
                        //navigate
                        Future.delayed(const Duration(seconds: 2), () {
                          _setAgentMPIN();
                        });
                      }
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    index == 9 ? "0" : "${index + 1}",
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
}
