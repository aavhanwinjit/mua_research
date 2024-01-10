import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_id_details/provider/edit_customer_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditCustomerInfoScreen extends ConsumerStatefulWidget {
  const EditCustomerInfoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditConstomerInfoScreenState();
}

class _EditConstomerInfoScreenState
    extends ConsumerState<EditCustomerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: BackButton(
          color: black,
        ),
        title: Text(
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
              Padding(
                padding: const EdgeInsets.symmetric(
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
              SizedBox(height: 15),
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
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: 'Contact No',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  "Maritial Status",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Row(
                children: [
                  // RadioListTile.adaptive(value: , groupValue: groupValue, onChanged: onChanged)
                ],
              ),
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
