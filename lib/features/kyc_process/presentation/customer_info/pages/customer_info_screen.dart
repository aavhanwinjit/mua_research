import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/kyc_type_enums.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/string_extensions.dart';
import 'package:ekyc/features/dashboard/presentation/mixins/agent_applications_mixin.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_type_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/customer_info/mixins/add_customer_info_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/customer_info/providers/customer_info_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CustomerInfoScreen extends ConsumerStatefulWidget {
  const CustomerInfoScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomerInfoScreenState();
}

class _CustomerInfoScreenState extends ConsumerState<CustomerInfoScreen>
    with AddCustomerInfoMixin, AgentApplicationsMixin {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _resetTextFields();
    });
  }

  @override
  Widget build(BuildContext context) {
    final selectedKycType = ref.watch(selectedKycTypeProvider);

    final formKey = ref.watch(customerInfoFormKey);
    ref.watch(customerInfoMobileNumberProvider);
    ref.watch(customerInfoEmailProvider);
    ref.watch(customerInfoQuoteNumberProvider);
    ref.watch(customerInfoPolicyNumberProvider);

    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.customerInfo,
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
                      Strings.enterFollowingDetailsCustomerInfoScreen,
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: textGrayColor2,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      maxLength: 8,
                      validator: (value) {
                        if (value!.trim().isEmpty || value.trim().length < 8) {
                          return Strings.loginPhoneValidatorString;
                        }
                        return null;
                      },
                      onChanged: (value) {
                        ref.watch(customerInfoMobileNumberProvider.notifier).update((state) => value.trim());
                      },
                      keyboardType: TextInputType.phone,
                      hint: Strings.mobileNo,
                      label: Strings.mobileNo,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      prefixIcon: _prefix(context),
                    ),
                    SizedBox(height: 24.h),
                    CustomTextFormField(
                      label: Strings.emailOptional,
                      onChanged: (value) {
                        ref.watch(customerInfoEmailProvider.notifier).update((state) => value.trim());
                      },
                      validator: (value) {
                        if (value?.trim() != null && value!.trim().isNotEmpty) {
                          if (!value.trim().isValidEmail()) {
                            return Strings.emailValidationString;
                          }
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
                    if (selectedKycType?.kycTypeId == KYCType.MOTOR_INSURANCE ||
                        selectedKycType?.kycTypeId == KYCType.NON_MOTOR_INSURANCE) ...[
                      SizedBox(height: 24.h),
                      CustomTextFormField(
                        label: Strings.quoteNumber,
                        onChanged: (value) {
                          ref.watch(customerInfoQuoteNumberProvider.notifier).update((state) => value.trim());
                        },
                        validator: (selectedKycType?.kycTypeId == KYCType.MOTOR_INSURANCE ||
                                selectedKycType?.kycTypeId == KYCType.NON_MOTOR_INSURANCE)
                            ? (value) {
                                if (value!.trim().isEmpty) {
                                  return Strings.quoteNumberValidationString;
                                }
                                return null;
                              }
                            : null,
                      ),
                    ],
                    if (selectedKycType?.kycTypeId == KYCType.LIFE_INSURANCE) ...[
                      SizedBox(height: 24.h),
                      CustomTextFormField(
                        label: Strings.policyNoOptional,
                        onChanged: (value) {
                          ref.watch(customerInfoPolicyNumberProvider.notifier).update((state) => value.trim());
                        },
                        // validator: (value) {
                        //   if (value!.trim().isEmpty) {
                        //     return Strings.policyNoValidationString;
                        //   }
                        //   return null;
                        // },
                      ),
                    ],
                    SizedBox(height: 50.h),
                    CustomPrimaryButton(
                      label: Strings.next,
                      onTap: () async {
                        await addCustomerInformation(
                          context: context,
                          ref: ref,
                          onSuccess: () async {
                            resetPageNumber(ref);

                            await getAgentApplications(
                              context: context,
                              ref: ref,
                            );

                            ref.watch(customerInfoLoadingProvider.notifier).update((state) => false);
                            ref.watch(customerInfoErrorProvider.notifier).update((state) => false);

                            context.pushReplacementNamed(AppRoutes.insuranceStagesScreen);
                          },
                        );
                      },
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

  void _resetTextFields() {
    ref.watch(customerInfoMobileNumberProvider.notifier).update((state) => null);
    ref.watch(customerInfoEmailProvider.notifier).update((state) => null);
    ref.watch(customerInfoMaritalStatusProvider.notifier).update((state) => MaritalStatus.SINGLE);
    ref.watch(customerInfoNationalityTypeProvider.notifier).update((state) => NationalityType.Mauritian);
    ref.watch(customerInfoQuoteNumberProvider.notifier).update((state) => null);
    ref.watch(customerInfoPolicyNumberProvider.notifier).update((state) => null);
  }

  Widget _maritalStatusRadioButtons() {
    ref.watch(customerInfoMaritalStatusProvider);

    return Row(
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
              ref.watch(customerInfoMaritalStatusProvider.notifier).update((state) => MaritalStatus.MARRIED);
            },
          ),
        ),
      ],
    );
  }

  Widget _nationalityRadioButtons() {
    ref.watch(customerInfoNationalityTypeProvider);

    return Row(
      children: [
        Expanded(
          child: CustomRadioTile(
            title: Strings.mauritian,
            value: NationalityType.Mauritian,
            groupValue: ref.watch(customerInfoNationalityTypeProvider),
            onChange: () {
              ref.watch(customerInfoNationalityTypeProvider.notifier).update((state) => NationalityType.Mauritian);
            },
          ),
        ),
        Expanded(
          child: CustomRadioTile(
            title: Strings.nonMauritian,
            value: NationalityType.NonMauritian,
            groupValue: ref.watch(customerInfoNationalityTypeProvider),
            onChange: () {
              ref.watch(customerInfoNationalityTypeProvider.notifier).update((state) => NationalityType.NonMauritian);
            },
          ),
        ),
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
            // recognizer: TapGestureRecognizer()
            //   ..onTap = () {
            //     _showCountryCodePickerBottomsheet(context);
            //   },
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
}
