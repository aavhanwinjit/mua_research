import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/helpers/signature_source_actionsheet_helper.dart';
import 'package:ekyc/features/mpin_face_id/presentation/mixins/logout_mixin.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:ekyc/features/profile/presentation/widgets/options_tile.dart';
import 'package:ekyc/widgets/custom_profile_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomerInfoScreenState();
}

class _CustomerInfoScreenState extends ConsumerState<ProfileScreen> with LogoutMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.profile,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _profileWidget(),
                  SizedBox(height: 24.h),
                  _optionsWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _optionsWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Column(
        children: [
          OptionsTile(
            icon: ImageConstants.fingerPrintIcon,
            title: Strings.screenLock,
            subtitle: Strings.biometricAndScreenlock,
            trailing: CupertinoSwitch(
              value: true,
              activeColor: iosSwitchColor,
              onChanged: (bool? value) {},
            ),
          ),
          const Divider(
            height: 0,
            color: borderColor,
          ),
          OptionsTile(
            icon: ImageConstants.keyIcon,
            title: Strings.changePin,
            subtitle: Strings.resetAppPin,
            trailing: const Icon(
              Icons.chevron_right,
              color: textGrayColor2,
            ),
            onTap: () {
              context.pushNamed(AppRoutes.createPINScreen);
            },
          ),
          const Divider(
            height: 0,
            color: borderColor,
          ),
          OptionsTile(
            icon: ImageConstants.callIcon,
            title: Strings.contactUs,
            subtitle: Strings.faq,
            trailing: const Icon(
              Icons.chevron_right,
              color: textGrayColor2,
            ),
            onTap: () {
              ActionSheetHelper.showContactUsActionSheet(context);
            },
          ),
          const Divider(
            height: 0,
            color: borderColor,
          ),
          OptionsTile(
            icon: ImageConstants.logoutIcon,
            title: Strings.logout,
            onTap: () {
              logout(context);
            },
          ),
          SizedBox(height: 8.h),
        ],
      ),
    );
  }

  Widget _profileWidget() {
    final GetAgentDetailsResponseModel? getAgentDetailsResponse = ref.watch(agentDetailsResponseProvider);
    final GetAgentDetailsResponseBody? agentDetails = getAgentDetailsResponse?.body?.responseBody;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _nameImageWidget(),
          SizedBox(height: 24.h),
          _infoTile(
            title: Strings.email,
            value: agentDetails?.emailId ?? "-",
          ),
          SizedBox(height: 16.h),
          _infoTile(
            title: Strings.mobileNo,
            value: agentDetails?.mobileNumber ?? "",
            // value: "+230 5 123 4567",
          ),
          SizedBox(height: 16.h),
          _infoTile(
            title: Strings.address,
            value: agentDetails?.address ?? "",
            // value: "Sand Tours Ltd Temple Rd,Quartier Militaire,Mauritius",
          ),
          SizedBox(height: 16.h),
          _infoTile(
            title: Strings.agencyName,
            value: agentDetails?.agencyName ?? "",
            // value: "Head office",
          ),
          SizedBox(height: 16.h),
          _infoTile(
            title: Strings.companyName,
            value:  agentDetails?.companies ?? "",
            // value: "Mauritius Union Assurance Cy Ltd",
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 24.h),
          _signatureWidget(),
        ],
      ),
    );
  }

  Widget _signatureWidget() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.signature,
              style: TextStyle(
                color: textGrayColor2,
                fontSize: 14.sp,
              ),
            ),
            InkWell(
              onTap: () {
                _changeSignature();
              },
              child: const Icon(
                Icons.chevron_right,
                color: textGrayColor2,
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
        DottedBorder(
          color: borderColor,
          radius: const Radius.circular(7),
          borderType: BorderType.RRect,
          dashPattern: const <double>[8, 4],
          child: Center(
            child: Image.asset(
              ImageConstants.signatureImage,
            ),
          ),
        ),
      ],
    );
  }

  void _changeSignature() {
    ActionSheetHelper.showSignatureSourceActionSheet(
      context,
      onPressed: () {
        pickSignature();
      },
    );
  }

  void _changeProfileImage() {
    ActionSheetHelper.showImageSourceActionSheet(
      context,
      onCameraPressed: pickProfileImageFromCamera,
      onLibraryPressed: pickProfileImageFromGallery,
    );
  }

  void pickSignature() async {
    XFile? result = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 1500,
      maxWidth: 1500,
    );

    if (result != null) {
      // final list = await result.readAsBytes();
      // ref.read(signatureProvider.notifier).update((state) => list);

      context.pop();
    }
  }

  void pickProfileImageFromGallery() async {
    XFile? result = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 1500,
      maxWidth: 1500,
    );

    if (result != null) {
      // final list = await result.readAsBytes();
      // ref.read(signatureProvider.notifier).update((state) => list);

      context.pop();
    }
  }

  void pickProfileImageFromCamera() async {
    XFile? result = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxHeight: 1500,
      maxWidth: 1500,
    );

    if (result != null) {
      // final list = await result.readAsBytes();
      // ref.read(signatureProvider.notifier).update((state) => list);

      context.pop();
    }
  }

  Widget _infoTile({required String title, required String value, FontWeight? fontWeight}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: textGrayColor2,
            fontSize: 14.sp,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }

  Widget _nameImageWidget() {
    return InkWell(
      onTap: () {
        _changeProfileImage();
      },
      child: Row(
        children: [
          CustomProfileImageWidget(
            userName: "Arjun Kumar",
            size: 62.w,
            fontSize: 24.sp,
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
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
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
