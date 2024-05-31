import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/disabled_fields_widget.dart';
import 'package:ekyc/models/agent_application_model/agent_application_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditDetailsScreen extends ConsumerStatefulWidget {
  const EditDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditDetailsScreenState();
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
    String? extractedFirstName = ref.watch(extractedFirstNameProvider);
    String? extractedSurName = ref.watch(extractedSurNameProvider);
    String? extractedIdNumber = ref.watch(extractedNICIDNumberProvider);
    AgentApplicationModel? selectedApplication =
        ref.watch(selectedApplicationProvider);

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
                      "${Strings.enterFollowingDetailsEditScreen} ${Strings.nicCard}",
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
                      label: selectedApplication?.nationality ==
                              NationalityType.Mauritian.toString()
                                  .split('.')
                                  .last
                          ? Strings.nicIdNo
                          : Strings.passportNo,
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

    ref.watch(extractedFirstNameProvider.notifier).update((state) => otherName);
    ref.watch(extractedSurNameProvider.notifier).update((state) => surname);
    ref
        .watch(extractedNICIDNumberProvider.notifier)
        .update((state) => idCardNumber);

    context.pop();
  }
}
