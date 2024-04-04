import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class InsuredDocumentsScreen extends ConsumerStatefulWidget {
  const InsuredDocumentsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddressDetailsScreenState();
}

class _AddressDetailsScreenState extends ConsumerState<InsuredDocumentsScreen> {
  String? dropdownValue;

  List<String> items = [
    "Birth Certificate",
    "Marriage Certificate",
    "Divorce Certificate",
    "Lease Agreement",
    "NIC ID of Landlord",
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
          backIcon: Icons.close,
          title: Strings.uploadInsuredDocuments,
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
                    provider: insuredDocProofFilePathProvider,
                    label: Strings.insuredDocumentContainerLabel,
                    cameraScreenTitle: Strings.scanDocuments,
                    cameraScreenDescription: Strings.insuredDocCameraLabel,
                    reviewScreenTitle: Strings.uploadInsuredDocuments,
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
      Strings.specifyDocumentType,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _title() {
    return Text(
      Strings.uploadProofOfRelationship,
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
          context.pushNamed(AppRoutes.addressReviewSubmitScreen);
        },
        label: Strings.next,
      ),
    );
  }
}
