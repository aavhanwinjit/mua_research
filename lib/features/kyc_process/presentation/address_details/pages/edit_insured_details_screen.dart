import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/data/models/por_document_element/por_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/disabled_fields_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditInsuredDetailsScreen extends ConsumerStatefulWidget {
  const EditInsuredDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditInsuredDetailsScreenState();
}

class _EditInsuredDetailsScreenState
    extends ConsumerState<EditInsuredDetailsScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                      "${Strings.enterFollowingDetailsEditScreen} ${Strings.insuredDoc}",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: textGrayColor2,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    _surnameWidgets(),
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

  Widget _surnameWidgets() {
    final selectedDocsListProvider =
        ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: selectedDocsListProvider
          .list()
          .map((PORDocumentElement e) => _surnameElement(e))
          .toList(),
    );
  }

  Widget _surnameElement(PORDocumentElement element) {
    final selectedDocsListProvider =
        ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
    int index = selectedDocsListProvider.list().indexOf(element);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          element.documentElement?.porDocType ?? "-",
          style: TextStyle(
            fontSize: 12.sp,
            color: textGrayColor2,
          ),
        ),
        SizedBox(height: 6.h),
        CustomTextFormField(
          initialValue: element.extractedLastName,
          label: Strings.surname,
          onChanged: (value) {
            selectedDocsListProvider.updateElementOcrFirstNameAndLastName(
              index: index,
              lastName: value.trim(),
            );
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
          Strings.enterNameAsPerInsuredDoc,
          style: TextStyle(
            fontSize: 12.sp,
            color: textGrayColor,
          ),
        ),
        //
        SizedBox(height: 24.h)
      ],
    );
  }

  void _updateData() {
    KeyboardHelper.hideKeyboard(context);

    if (!formKey.currentState!.validate()) {
      return;
    }

    context.pop();
  }
}
