import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_id_details/provider/edit_id_provider.dart';
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
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: BackButton(
          color: black,
        ),
        title: Text(
          "Identity/ID details",
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
