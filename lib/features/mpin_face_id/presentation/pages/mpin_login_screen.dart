import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/biometric_auth_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/mixins/login_mixin.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/masked_pin_textfield.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/pin_keypad.dart';
import 'package:ekyc/features/mpin_face_id/presentation/providers/mpin_providers.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/mixins/agent_details_mixin.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:ekyc/features/splash_screen/presentation/providers/launch_details_providers.dart';
import 'package:ekyc/models/agent_login_details/agent_login_details_response_model.dart';
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
    with BiometricAuthMixin, LoginMixin, AgentDetailsMixin {
  bool wrongPin = false;
  String name = "";

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(mpinLoadingProvider.notifier).update((state) => false);
      ref.read(agentDetailsLoadingProvider.notifier).update((state) => false);
      ref.read(loginPINProvider.notifier).update((state) => "");
    });

    getAgentName();
  }

  getAgentName() async {
    name = await LocalDataHelper.getAgentName();
    setState(() {});
  }

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
            const Spacer(),
            MaskedPinTextfield(provider: loginPINProvider),

            if (ref.watch(mpinLoadingProvider) || ref.watch(agentDetailsLoadingProvider)) ...[
              const Spacer(),
              _loader(),
            ],

            const Spacer(),
            if (wrongPin) ...[
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
                callback: () => Future.delayed(
                  const Duration(seconds: 2),
                  () {
                    loginByMPIN(
                      context: context,
                      ref: ref,
                      onSuccess: onLoginSuccess,
                      onWrongPin: () {
                        ref.watch(loginPINProvider.notifier).update((state) => "");
                        wrongPin = true;
                        setState(() {});
                      },
                      onFailure: () {
                        ref.watch(loginPINProvider.notifier).update((state) => "");
                        setState(() {});
                      },
                    );
                  },
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _loader() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            backgroundColor: white,
          ),
        ),
      ],
    );
  }

  Widget _title() {
    // final launchDetailsProvider = ref.watch(launchDetailsResponseProvider);
    // final name = launchDetailsProvider?.body?.responseBody?.agentData?.loginData?.name;

    return Text(
      "${Strings.hi} $name",
      style: TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _subHeading() {
    return Text(
      Strings.verifypin,
      style: TextStyle(
        fontSize: 14.sp,
      ),
    );
  }

  Widget _wrongPinText() {
    return Text(
      Strings.wrongPin,
      style: TextStyle(
        color: errorTextRed,
        fontSize: 14.sp,
      ),
    );
  }

  Widget _forgotPinButton() {
    return TextButton(
      onPressed: () {
        forgotPin(context: context, ref: ref);
      },
      child: Text(
        Strings.forgotPin,
        style: TextStyle(
          color: primaryBlueColor,
          fontSize: 14.sp,
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
            child: Text(
              Strings.useTouchId,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: primaryColor,
                fontSize: 12.sp,
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

  Future<void> _biometricAuthentication() async {
    // loginByFP(
    //   context: context,
    //   ref: ref,
    //   onSuccess: onLoginSuccess,
    // );

    await authenticateWithBiometric(
      onAuthenticated: () {
        loginByFP(
          context: context,
          ref: ref,
          onSuccess: onLoginSuccess,
        );
      },
      onAuthenticationFailure: (String error) {
        context.showErrorSnackBar(message: Strings.biometricAuthenticationFailed);
      },
    );
  }

  void onLoginSuccess(AgentLoginDetailsResponseModel? agentDetails) async {
    ref.read(agentLoginDetailsProvider.notifier).update((state) => agentDetails);

    ref.watch(userLoggedInProvider.notifier).update((state) => true);

    ref.watch(mpinLoadingProvider.notifier).update((state) => false);

    await getAgentDetails(
      context,
      ref,
      onSuccess: (GetAgentDetailsResponseModel? agentDetails) {
        ref.watch(loginPINProvider.notifier).update((state) => "");
        ref.watch(agentDetailsResponseProvider.notifier).update((state) => agentDetails);
        ref
            .watch(agentSignaturePathProvider.notifier)
            .update((state) => agentDetails?.body?.responseBody?.signaturePath);

        ref.watch(agentDetailsLoadingProvider.notifier).update((state) => false);

        context.go(AppRoutes.dashboardScreen);
      },
    );
  }
}
