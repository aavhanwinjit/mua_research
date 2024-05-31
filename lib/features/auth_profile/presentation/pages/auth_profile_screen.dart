import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/signature_source_actionsheet_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/auth_profile/presentation/providers/auth_profile_provider.dart';
import 'package:ekyc/features/auth_profile/presentation/widgets/info_widget.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:ekyc/features/login_otp/presentation/providers/otp_provider.dart';
import 'package:ekyc/features/signature/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/signature/presentation/mixins/signature_mixin.dart';
import 'package:ekyc/features/signature/presentation/providers/signature_provider.dart';
import 'package:ekyc/widgets/custom_profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AuthProfileScreen extends ConsumerStatefulWidget {
  const AuthProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthProfileScreenState();
}

class _AuthProfileScreenState extends ConsumerState<AuthProfileScreen> with SignatureMixin {
  @override
  void initState() {
    super.initState();
    ref.read(authProfileScreenLoadingProvider.notifier).update((state) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: primaryBlueColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 25.w, right: 25.w, top: ScreenUtil().statusBarHeight),
            child: Column(
              children: [
                SizedBox(height: 40.h),
                _profileCard(),
                SizedBox(height: 40.h),
                CustomPrimaryButton(
                  loading: ref.watch(authProfileScreenLoadingProvider),
                  disable: ref.watch(signatureProvider) == null,
                  disabledOnTap: () {
                    context.showErrorSnackBar(message: Strings.uploadSignature);
                  },
                  onTap: () async {
                    await saveSignature(
                        context: context,
                        ref: ref,
                        loadingProvider: authProfileScreenLoadingProvider,
                        onSuccess: (SaveFileResponseModel success) {
                          ref.read(authProfileProvider.notifier).update((state) => success);

                          ref.read(authProfileScreenLoadingProvider.notifier).update((state) => false);

                          context.pushReplacementNamed(AppRoutes.selectPINorBiometricScreen);
                        });
                  },
                  label: Strings.contn,
                ),
                SizedBox(height: 16.h),
                CustomOutlineButton(
                  primary: false,
                  disable: false,
                  onTap: () {
                    context.go(AppRoutes.loginScreen);
                  },
                  label: Strings.thatsNotMe,
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileCard() {
    final ValidateOtpResponseModel? validateOtpResponseProvider = ref.read(validateOTPResponseProvider);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20.h,
                width: 90.w,
                decoration: BoxDecoration(
                  color: primaryBlueColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Strings.welcomeString.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: Strings.isodoraFont,
                  fontSize: 16.sp,
                  color: textGrayColor2,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.h),
          _nameImageWidget(
            agentName: validateOtpResponseProvider?.body?.responseBody?.agentName ?? "-",
            designation: validateOtpResponseProvider?.body?.responseBody?.designation ?? "-",
          ),
          SizedBox(height: 15.h),
          InfoWidget(title: Strings.email, value: validateOtpResponseProvider?.body?.responseBody?.emailId ?? "-"),
          SizedBox(height: 16.h),
          InfoWidget(
              title: Strings.mobileNo,
              value: "+230 ${validateOtpResponseProvider?.body?.responseBody?.mobileNumber ?? "-"}"),
          SizedBox(height: 16.h),
          InfoWidget(title: Strings.address, value: validateOtpResponseProvider?.body?.responseBody?.address ?? "-"),
          SizedBox(height: 16.h),
          InfoWidget(
              title: Strings.agencyName, value: validateOtpResponseProvider?.body?.responseBody?.agencyName ?? "-"),
          SizedBox(height: 16.h),
          CompanyInfoWidget(companies: validateOtpResponseProvider?.body?.responseBody?.companies),
          // InfoWidget(
          //     title: Strings.companyName, value: validateOtpResponseProvider?.body?.responseBody?.companyName ?? "-"),
          SizedBox(height: 24.h),
          _signatureBox(),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _nameImageWidget({required String agentName, required String designation}) {
    return Row(
      children: [
        CustomProfileImageWidget(
          userName: agentName,
          size: 62.w,
          fontSize: 24.sp,
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              agentName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
                color: black,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              designation,
              style: TextStyle(
                color: textGrayColor2,
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _signatureBox() {
    final signature = ref.watch(signatureProvider);

    return InkWell(
      onTap: () {
        ActionSheetHelper.showSignatureSourceActionSheet(
          context,
          onDigitalSignaturePressed: () {
            context.pop();
            context.pushNamed(AppRoutes.signatureScreen);
          },
          onPickSignatureImagePressed: () {
            pickSignature(
              context: context,
              ref: ref,
              onSuccess: () {},
            );
          },
        );
      },
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: primaryBlueColor,
        radius: const Radius.circular(12),
        dashPattern: const [8, 4],
        strokeWidth: 1,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: SizedBox(
            height: 100.h,
            width: double.infinity,
            child: Center(
              child: signature != null
                  ? Image.memory(
                      signature,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    )
                  : Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                      decoration: BoxDecoration(
                        color: primaryBlueColor.withOpacity(0.16),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        Strings.addSignature,
                        style: TextStyle(
                          color: primaryBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
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
