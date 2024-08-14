import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/date_time_formatter.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/data/models/por_document_element/por_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/address_details/providers/selected_por_doc_type_list_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class EditInsuredDetailsScreen extends ConsumerStatefulWidget {
  const EditInsuredDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditInsuredDetailsScreenState();
}

class _EditInsuredDetailsScreenState extends ConsumerState<EditInsuredDetailsScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool dateValidator = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.editInsuredDocuments,
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
                    // const DisabledFieldsWidget(),
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
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: selectedDocsListProvider.list().map((PORDocumentElement e) => _surnameElement(e)).toList(),
    );
  }

  Widget _surnameElement(PORDocumentElement element) {
    final selectedDocsList = ref.watch(selectedPorDocTypeListNotifierProvider);
    final selectedDocsListProvider = ref.watch(selectedPorDocTypeListNotifierProvider.notifier);
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
        SizedBox(height: 14.h),
        if (element.documentElement?.documentCode != DocumentCodes.NIL.toString().split('.').last &&
            element.documentElement?.documentCode != DocumentCodes.PSL.toString().split('.').last) ...[
          InkWell(
            onTap: () async {
              final String date = await _openDatePicker();

              selectedDocsListProvider.updateElementIssueDate(
                index: index,
                issueDate: date.trim(),
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
              decoration: BoxDecoration(
                border: Border.all(
                  color: borderColor,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                element.issueDate == null || element.issueDate!.isEmpty
                    ? element.scanResponse?.ocrResponse?.documentdata?.billDate == null ||
                            element.scanResponse!.ocrResponse!.documentdata!.billDate!.isEmpty
                        ? "Select Issue Date"
                        : element.scanResponse?.ocrResponse?.documentdata?.billDate ?? "Select issue date"
                    : element.issueDate ?? "-",
                // "12 June 2024",
                style: TextStyle(
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
          if ((element.issueDate == null || element.issueDate!.isEmpty) && dateValidator == true)
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 4.w),
              child: Text(
                "Select Issue Date",
                // "12 June 2024",
                style: TextStyle(
                  fontSize: 11.sp,
                  color: errorTextRed,
                ),
              ),
            ),
          // CustomTextFormField(
          //   initialValue: element.extractedLastName,
          //   label: Strings.surname,
          //   onChanged: (value) {
          //     selectedDocsListProvider.updateElementOcrFirstNameAndLastName(
          //       index: index,
          //       lastName: value.trim(),
          //     );
          //   },
          //   validator: (value) {
          //     if (value!.trim().isEmpty) {
          //       return Strings.surnameValidationString;
          //     }
          //     return null;
          //   },
          // ),
          SizedBox(height: 4.h),
          Text(
            Strings.issueDate,
            style: TextStyle(
              fontSize: 12.sp,
              color: textGrayColor,
            ),
          ),
        ],
        SizedBox(height: 24.h)
      ],
    );
  }

  Future<String> _openDatePicker() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920, 8),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final String formattedDate = DateTimeFormatter.getDocumentDateTime(picked);
      return formattedDate;
    }

    return '';
  }

  void _updateData() {
    KeyboardHelper.hideKeyboard(context);

    if (!formKey.currentState!.validate()) {
      return;
    }

    if (dateValidatorChecker() == true) {
      dateValidatorChecker();
      return;
    }

    context.pop();
  }

  bool dateValidatorChecker() {
    final selectedDocsList = ref.watch(selectedPorDocTypeListNotifierProvider);

    bool data = selectedDocsList.any(
      (element) {
        // debugPrint("element.issueDate == null: ${element.issueDate == null}");
        // debugPrint("element.issueDate.isEmpty: ${element.issueDate?.isEmpty}");

        if (element.documentElement?.documentCode != DocumentCodes.NIL.toString().split('.').last &&
            element.documentElement?.documentCode != DocumentCodes.PSL.toString().split('.').last) {
          if (element.issueDate == null || element.issueDate!.isEmpty) {
            return true;
          } else {
            return false;
          }
        }

        return false;
      },
    );

    dateValidator = data;
    setState(() {});

    debugPrint("data: $data");

    return data;
  }
}
