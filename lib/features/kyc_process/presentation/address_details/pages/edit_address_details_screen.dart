import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/address_details_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/disabled_fields_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditAddressDetailsScreen extends ConsumerStatefulWidget {
  const EditAddressDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditAddressDetailsScreenState();
}

class _EditAddressDetailsScreenState extends ConsumerState<EditAddressDetailsScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? surname;
  String? otherName;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setData();
    });
  }

  void setData() {
    final String? addressOtherName = ref.watch(addressOtherNameProvider);
    final String? addressSurname = ref.watch(addressSurnameProvider);

    surname = addressSurname;
    otherName = addressOtherName;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    String? addressOtherName = ref.watch(addressOtherNameProvider);
    String? addressSurname = ref.watch(addressSurnameProvider);

    ScanDocumentResponseBody? ocrResponse = ref.watch(addressDocOCRApiResponse);

    final AddressDocumentTypeModel? selectedAddressDocType = ref.watch(selectedAddressDocTypeProvider);

    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.editIDDetailsScreenTitle,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            KeyboardHelper.onScreenTap(context);
          },
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.enterFollowingDetailsEditScreen,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: textGrayColor2,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      initialValue: addressSurname,
                      label: Strings.surname,
                      onChanged: (value) {
                        surname = value.trim();
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return Strings.surnameValidationString;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      Strings.enterNameAsPerDoc,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: textGrayColor,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      initialValue: addressOtherName,
                      label: Strings.otherName,
                      onChanged: (value) {
                        otherName = value.trim();
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return Strings.otherNameValidationString;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      Strings.enterNameAsPerDoc,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: textGrayColor,
                      ),
                    ),
                    if (selectedAddressDocType?.documentCode == "UTB") ...[
                      SizedBox(height: 24.h),
                      CustomTextFormField(
                        initialValue: ocrResponse?.ocrResponse?.documentdata?.billDate,
                        label: Strings.billDate,
                        enabled: false,
                      ),
                    ],
                    SizedBox(height: 24.h),
                    const DisabledFieldsWidget(),
                    SizedBox(height: 50.h),
                    CustomPrimaryButton(
                      label: Strings.update,
                      onTap: _updateData,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _updateData() {
    KeyboardHelper.hideKeyboard(context);

    if (!formKey.currentState!.validate()) {
      return;
    }

    ref.watch(addressOtherNameProvider.notifier).update((state) => otherName);
    ref.watch(addressSurnameProvider.notifier).update((state) => surname);

    context.pop();
  }
}
