import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AddressDetailsScreen extends ConsumerStatefulWidget {
  const AddressDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddressDetailsScreenState();
}

class _AddressDetailsScreenState extends ConsumerState<AddressDetailsScreen> {
  String? dropdownValue;

  List<String> items = [
    "Utility Bill",
    "Light Bill",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.addressDetails,
        ),
        bottomNavigationBar: _bottomNavBarWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(),
                  SizedBox(height: 8.h),
                  _subTitle(),
                  SizedBox(height: 20.h),
                  _dropdownWidget(),
                  SizedBox(height: 24.h),
                  DocumentUploadContainer(
                    label: Strings.addressDocumentContainerLabel,
                    cameraScreenDescription: Strings.addressDocCameraLabel,
                    reviewScreenTitle: Strings.addressDetails,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _subTitle() {
    return Text(
      Strings.addressDetailsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _title() {
    return Text(
      Strings.uploadAddressProof,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: black,
      ),
    );
  }

  Widget _dropdownWidget() {
    return CustomDrowDownField(
      value: dropdownValue,
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
        dropdownValue = value;
        setState(() {});
      },
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        onTap: () {
          context.pushNamed(AppRoutes.insuredDocumentScreen);
        },
        label: Strings.next,
      ),
    );
  }
}
