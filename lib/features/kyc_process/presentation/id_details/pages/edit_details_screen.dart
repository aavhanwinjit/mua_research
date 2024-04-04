import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditDetailsScreen extends ConsumerStatefulWidget {
  const EditDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditDetailsScreenState();
}

class _EditDetailsScreenState extends ConsumerState<EditDetailsScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? surname;
  String? otherName;
  String? idCardNumber;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      setData();
    });
  }

  void setData() {
    String? extractedFirstName = ref.watch(extractedFirstNameProvider);
    String? extractedSurName = ref.watch(extractedSurNameProvider);
    String? extractedIdNumber = ref.watch(extractedNICIDNumberProvider);

    surname = extractedSurName;
    otherName = extractedFirstName;
    idCardNumber = extractedIdNumber;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    String? extractedFirstName = ref.watch(extractedFirstNameProvider);
    String? extractedSurName = ref.watch(extractedSurNameProvider);
    String? extractedIdNumber = ref.watch(extractedNICIDNumberProvider);

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
                      initialValue: extractedSurName,
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
                      initialValue: extractedFirstName,
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
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      initialValue: extractedIdNumber,
                      label: Strings.nicIdNo,
                      onChanged: (value) {
                        idCardNumber = value.trim();
                        setState(() {});
                      },
                      validator: (value) {
                        if (value!.trim().isEmpty) {
                          return Strings.nicIdNoValidationString;
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      initialValue: selectedApplication?.mobileNumber,
                      enabled: false,
                      maxLength: 8,
                      onChanged: (value) {},
                      keyboardType: TextInputType.phone,
                      hint: Strings.mobileNo,
                      label: Strings.mobileNo,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      prefixIcon: _prefix(context),
                    ),
                    SizedBox(height: 24.h),
                    if (selectedApplication?.emailId != null) ...[
                      CustomTextFormField(
                        initialValue: selectedApplication?.emailId,
                        enabled: false,
                        label: Strings.emailOptional,
                        onChanged: (value) {},
                      ),
                      SizedBox(height: 24.h),
                    ],
                    Text(
                      Strings.maritalStatus,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: black,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    _maritalStatusRadioButtons(),
                    SizedBox(height: 24.h),
                    Text(
                      Strings.whatIsNationality,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                        color: black,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    _nationalityRadioButtons(),
                    if (selectedApplication?.quoteNumber != null) ...[
                      SizedBox(height: 24.h),
                      CustomTextFormField(
                        enabled: false,
                        initialValue: selectedApplication?.quoteNumber,
                        label: Strings.quoteNumber,
                        onChanged: (value) {},
                      ),
                    ],
                    if (selectedApplication?.policyNumber != null) ...[
                      SizedBox(height: 24.h),
                      CustomTextFormField(
                        enabled: false,
                        initialValue: selectedApplication?.policyNumber,
                        label: Strings.policyNoOptional,
                        onChanged: (value) {},
                      ),
                    ],
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

  Widget _prefix(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: "  +230",
            style: TextStyle(
              color: black,
              fontSize: 16.sp,
            ),
            children: [
              TextSpan(
                text: "  | ",
                style: TextStyle(
                  color: textGrayColor,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _maritalStatusRadioButtons() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Row(
      children: [
        Expanded(
          child: CustomRadioTile(
            title: Strings.single,
            value: selectedApplication?.maritalStatus,
            groupValue: MaritalStatus.SINGLE.toString().split('.').last,
            onChange: () {},
          ),
        ),
        Expanded(
          child: CustomRadioTile(
            title: Strings.married,
            value: selectedApplication?.maritalStatus,
            groupValue: MaritalStatus.MARRIED.toString().split('.').last,
            onChange: () {},
          ),
        ),
      ],
    );
  }

  Widget _nationalityRadioButtons() {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Row(
      children: [
        Expanded(
          child: CustomRadioTile(
            title: Strings.mauritian,
            value: selectedApplication?.nationality,
            groupValue: NationalityType.Mauritian.toString().split('.').last,
            onChange: () {},
          ),
        ),
        Expanded(
          child: CustomRadioTile(
            title: Strings.nonMauritian,
            value: selectedApplication?.nationality,
            groupValue: NationalityType.NonMauritian.toString().split('.').last,
            onChange: () {},
          ),
        ),
      ],
    );
  }

  void _updateData() {
    KeyboardHelper.hideKeyboard(context);

    if (!formKey.currentState!.validate()) {
      return;
    }

    ref.watch(extractedFirstNameProvider.notifier).update((state) => otherName);
    ref.watch(extractedSurNameProvider.notifier).update((state) => surname);
    ref.watch(extractedNICIDNumberProvider.notifier).update((state) => idCardNumber);

    context.pop();
  }
}
