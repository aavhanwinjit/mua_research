import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/signature_source_actionsheet_helper.dart';
import 'package:ekyc/features/auth_profile/presentation/widgets/info_widget.dart';
import 'package:ekyc/features/signature/presentation/providers/signature_provider.dart';
import 'package:ekyc/widgets/custom_profile_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class AuthProfileScreen extends ConsumerStatefulWidget {
  const AuthProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthProfileScreenState();
}

class _AuthProfileScreenState extends ConsumerState<AuthProfileScreen> {
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
                  disable: ref.watch(signatureProvider) == null,
                  onTap: () {
                    context.go(AppRoutes.createPINFaceIdscreen);
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _profileCard() {
    // final ValidateOtpResponseModel? validateOtpResponseProvider = ref.read(validateOTPResponseProvider);

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
          _nameImageWidget(),
          SizedBox(height: 15.h),
          const InfoWidget(title: Strings.email, value: "arjun@maubank.mu"),
          SizedBox(height: 16.h),
          const InfoWidget(title: Strings.mobileNo, value: "+230 5 123 4567"),
          SizedBox(height: 16.h),
          const InfoWidget(title: Strings.address, value: "Sand Tours Ltd Temple Rd,Quartier Militaire,Mauritius"),
          SizedBox(height: 16.h),
          const InfoWidget(title: Strings.companyName, value: "Mauritius Union Assurance Cy Ltd"),
          SizedBox(height: 24.h),
          _signatureBox(),
          SizedBox(height: 24.h),
        ],
      ),
    );
  }

  Widget _nameImageWidget() {
    return Row(
      children: [
        CustomProfileImageWidget(
          userName: "Arjun Kumar",
          size: 62.w,
          fontSize: 24.sp,
        ),
        SizedBox(width: 12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Arjun Kumar",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.sp,
                color: black,
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              "Assistant Branch Manager",
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
          onPressed: () {
            pickImage();
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
                      child: const Text(
                        Strings.addSignature,
                        style: TextStyle(
                          color: primaryBlueColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ),
    );
  }

  // void _showActionSheet() {
  //   showCupertinoModalPopup<void>(
  //     context: context,
  //     builder: (BuildContext context) => CupertinoActionSheet(
  //       cancelButton: CupertinoActionSheetAction(
  //         onPressed: () {
  //           context.pop();
  //         },
  //         isDefaultAction: true,
  //         child: Text(
  //           Strings.cancel,
  //           style: TextStyle(
  //             color: iosButtonBlueTextColor,
  //           ),
  //         ),
  //       ),
  //       actions: <CupertinoActionSheetAction>[
  //         CupertinoActionSheetAction(
  //           onPressed: () {
  //             context.pop();
  //             context.pushNamed(AppRoutes.signatureScreen);
  //           },
  //           child: Text(
  //             Strings.digitalSignature,
  //             style: TextStyle(
  //               color: iosButtonBlueTextColor,
  //             ),
  //           ),
  //         ),
  //         CupertinoActionSheetAction(
  //           onPressed: () {
  //             pickImage();
  //           },
  //           child: Text(
  //             Strings.uploadSignatureImage,
  //             style: TextStyle(
  //               color: iosButtonBlueTextColor,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  void pickImage() async {
    XFile? result = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 1500,
      maxWidth: 1500,
    );

    if (result != null) {
      final list = await result.readAsBytes();
      ref.read(signatureProvider.notifier).update((state) => list);

      context.pop();
    }
  }
}
