import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/edit_id_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditIDScreen extends ConsumerStatefulWidget {
  const EditIDScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditIDScreenState();
}

class _EditIDScreenState extends ConsumerState<EditIDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.identityIdDetails,
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
                  "National ID Card (NIC)",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: 'Surname',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: 'Other Name',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: CustomTextFormField(
                  controller: ref.watch(surnameControllerProvider),
                  label: 'NIC Number',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  "National ID Card (NIC)",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 300.h,
                child: Image.asset(
                  ImageConstants.idImage,
                  height: 300.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 300.h,
                child: Image.asset(
                  ImageConstants.idImage,
                  height: 300.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
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
