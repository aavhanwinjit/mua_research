import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DisabledFieldsWidget extends ConsumerWidget {
  const DisabledFieldsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        _maritalStatusRadioButtons(ref),
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
        _nationalityRadioButtons(ref),
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
      ],
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

  Widget _maritalStatusRadioButtons(WidgetRef ref) {
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

  Widget _nationalityRadioButtons(WidgetRef ref) {
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
}
