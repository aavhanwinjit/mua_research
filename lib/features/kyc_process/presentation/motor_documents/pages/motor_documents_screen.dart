import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_docs_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MotorDocumentScreen extends ConsumerStatefulWidget {
  const MotorDocumentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PolicyDocumentsScreenState();
}

class _PolicyDocumentsScreenState extends ConsumerState<MotorDocumentScreen> {
  String? dropdownValue;

  List<String> items = [
    'Deed of Sales Registered',
    'Driving License',
    'Horse Power',
    'Proposal Form Motor',
    'Survey Report',
    'Claim History',
    'Alteration Form',
    'Renewal Notice Motor',
    'Request for Cancellation',
    'Credit Authorisation Form',
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
          title: Strings.motorDocuments,
        ),
        bottomNavigationBar: _bottomNavBarWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _subTitle(),
                  SizedBox(height: 20.h),
                  _dropdownWidget(),
                  SizedBox(height: 24.h),
                  DocumentUploadContainer(
                    provider: motorDocFilePathProvider,
                    label: Strings.motorDocsContainerLabel,
                    cameraScreenTitle: Strings.scanDocuments,
                    cameraScreenDescription: Strings.motorDocCameraLabel,
                    reviewScreenTitle: Strings.motorDocuments,
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AddDocumentButton(onPressed: () {}),
                    ],
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
      Strings.motorDocsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
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
        dropdownValue = value as String;
        setState(() {});
      },
      items: items.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              value,
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        onTap: () {
          context.pushNamed(AppRoutes.motorDocsReviewSubmitScreen);
        },
        label: Strings.next,
      ),
    );
  }
}
