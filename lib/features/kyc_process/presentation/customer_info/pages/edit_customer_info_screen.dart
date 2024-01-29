import 'package:ekyc/core/app_export.dart';
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
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: const BackButton(
          color: black,
        ),
        title: const Text(
          "Edit Customer Information",
          style: TextStyle(
            color: black,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  "Enter the following details from the customer's insurance documentation.",
                  style: TextStyle(
                    color: textGrayColor2,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: 'Surname',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Text(
                  "Enter customer name as per NIC or Passport documents",
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
                  label: 'Other Name',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Text(
                  "Enter customer name as per NIC or Passport documents",
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
                  label: 'Contact No',
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  "Maritial Status",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
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
                        groupValue: ref.watch(maritalStatusProvider),
                        onChange: () {
                          ref.watch(maritalStatusProvider.notifier).update((state) => MaritalStatus.SINGLE);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomRadioTile(
                        title: Strings.married,
                        value: MaritalStatus.MARRIED,
                        groupValue: ref.watch(maritalStatusProvider),
                        onChange: () {
                          ref.watch(maritalStatusProvider.notifier).update((state) => MaritalStatus.MARRIED);
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
                        value: NationalityType.MAURITIAN,
                        groupValue: ref.watch(nationalityTypeProvider),
                        onChange: () {
                          ref.watch(nationalityTypeProvider.notifier).update((state) => NationalityType.MAURITIAN);
                        },
                      ),
                    ),
                    Expanded(
                      child: CustomRadioTile(
                        title: Strings.nonMauritian,
                        value: NationalityType.NON_MAURITIAN,
                        groupValue: ref.watch(nationalityTypeProvider),
                        onChange: () {
                          ref.watch(nationalityTypeProvider.notifier).update((state) => NationalityType.NON_MAURITIAN);
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
                  label: 'NIC ID Number',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: 'Policy ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 40,
                ),
                child: CustomPrimaryButton(
                  label: 'Update',
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
