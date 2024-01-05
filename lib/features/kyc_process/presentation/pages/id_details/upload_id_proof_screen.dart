import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UploadIDdetailsScreen extends StatefulWidget {
  const UploadIDdetailsScreen({super.key});

  @override
  State<UploadIDdetailsScreen> createState() => _UploadIDdetailsScreenState();
}

class _UploadIDdetailsScreenState extends State<UploadIDdetailsScreen> {
  int idType = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.identityIdDetails,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Upload Identity Proof",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Please specify the type of identification document you are uploading.",
                  ),
                ),
                Row(
                  children: [
                    Radio.adaptive(
                      activeColor: primaryBlueColor,
                      value: 1,
                      groupValue: idType,
                      onChanged: (int? i) {
                        setState(() {
                          idType = 1;
                        });
                      },
                    ),
                    Text(
                      "National ID Card (NIC)",
                    ),
                  ],
                ),
                Row(
                  children: [
                    Radio.adaptive(
                      activeColor: primaryBlueColor,
                      value: 2,
                      groupValue: idType,
                      onChanged: (int? i) {
                        setState(() {
                          idType = 1;
                        });
                      },
                    ),
                    Text(
                      "Passport",
                    ),
                  ],
                ),
                SizedBox(height: 20),
                uploadPhotoBox("Upload front side photo"),
                SizedBox(height: 20),
                uploadPhotoBox("Upload back side photo"),
                SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: CustomPrimaryButton(
                    disable: false,
                    label: 'Next',
                    onTap: () => context.pushNamed(AppRoutes.reviewSubmitScreen),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  uploadPhotoBox(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: DottedBorder(
        color: primaryBlueColor,
        strokeWidth: 1,
        dashPattern: const <double>[5, 4],
        borderType: BorderType.RRect,
        radius: Radius.circular(16),
        child: InkWell(
          onTap: () => context.pushNamed(AppRoutes.confirmUploadOrRetakeScreen),
          child: Container(
            height: 225.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConstants.cameraImage,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(label),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
