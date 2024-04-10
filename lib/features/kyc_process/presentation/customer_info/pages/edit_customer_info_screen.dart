import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/customer_info/providers/customer_info_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/customer_info/providers/edit_customer_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditCustomerInfoScreen extends ConsumerStatefulWidget {
  const EditCustomerInfoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditConstomerInfoScreenState();
}

class _EditConstomerInfoScreenState extends ConsumerState<EditCustomerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.editCustomerInfo,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  Strings.editCustomerInfoSubtitle,
                  style: TextStyle(color: textGrayColor2, fontSize: 12.sp),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: Strings.surname,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Text(
                  Strings.enterNameAsPerDoc,
                  style: TextStyle(
                    color: textGrayColor2,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: Strings.otherName,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Text(
                  Strings.enterNameAsPerDoc,
                  style: TextStyle(
                    color: textGrayColor2,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: Strings.contactNo,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  Strings.maritalStatus,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomRadioTile(
                        title: Strings.single,
                        value: MaritalStatus.SINGLE,
                        groupValue: ref.watch(customerInfoMaritalStatusProvider),
                        onChange: () {
                          ref.watch(customerInfoMaritalStatusProvider.notifier).update((state) => MaritalStatus.SINGLE);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomRadioTile(
                        title: Strings.married,
                        value: MaritalStatus.MARRIED,
                        groupValue: ref.watch(customerInfoMaritalStatusProvider),
                        onChange: () {
                          ref
                              .watch(customerInfoMaritalStatusProvider.notifier)
                              .update((state) => MaritalStatus.MARRIED);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  Strings.whatIsNationality,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomRadioTile(
                        title: Strings.mauritian,
                        value: NationalityType.Mauritian,
                        groupValue: ref.watch(customerInfoNationalityTypeProvider),
                        onChange: () {
                          ref
                              .watch(customerInfoNationalityTypeProvider.notifier)
                              .update((state) => NationalityType.Mauritian);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomRadioTile(
                        title: Strings.nonMauritian,
                        value: NationalityType.NonMauritian,
                        groupValue: ref.watch(customerInfoNationalityTypeProvider),
                        onChange: () {
                          ref
                              .watch(customerInfoNationalityTypeProvider.notifier)
                              .update((state) => NationalityType.NonMauritian);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: Strings.nicIdNo,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: Strings.policyNo,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: CustomPrimaryButton(
                  label: Strings.update,
                  onTap: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
