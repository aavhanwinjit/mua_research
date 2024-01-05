import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/marital_status_enums.dart';
import 'package:ekyc/core/constants/enums/nationality_type_enums.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/customer_info_providers.dart';
import 'package:ekyc/widgets/buttons/custom_primary_button.dart';
import 'package:ekyc/widgets/custom_text_form_field.dart';
import 'package:ekyc/widgets/radio_tile/custom_radio_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomerInfoScreen extends ConsumerStatefulWidget {
  const CustomerInfoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomerInfoScreenState();
}

class _CustomerInfoScreenState extends ConsumerState<CustomerInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          KeyboardHelper.onScreenTap(context);
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              Strings.customerInfo,
              style: TextStyle(
                color: black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
              ),
            ),
            leading: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.chevron_left,
                color: black,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.enterFollowingDetails,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: textGrayColor2,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    label: Strings.surname,
                    onChanged: (value) {},
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
                    label: Strings.otherName,
                    onChanged: (value) {},
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
                    label: Strings.contactNo,
                    onChanged: (value) {},
                    validator: (value) {
                      if (value!.trim().isEmpty || value.trim().length < 8) {
                        return Strings.loginPhoneValidatorString;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24.h),
                  Text(
                    Strings.maritalStatus,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: black,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Row(
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
                  Row(
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
                            ref
                                .watch(nationalityTypeProvider.notifier)
                                .update((state) => NationalityType.NON_MAURITIAN);
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    label: Strings.nicIdNo,
                    onChanged: (value) {},
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return Strings.nicIdNoValidationString;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    label: Strings.policyNo,
                    onChanged: (value) {},
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return Strings.policyNoValidationString;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    label: Strings.passportNo,
                    onChanged: (value) {},
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return Strings.passportNoValidationString;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24.h),
                  CustomTextFormField(
                    label: Strings.insuranceReferenceNo,
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 50.h),
                  CustomPrimaryButton(
                    label: Strings.contn,
                    onTap: () {
                      context.pushNamed(AppRoutes.insuranceStagesScreen);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
