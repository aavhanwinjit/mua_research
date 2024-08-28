import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/non_motor_insurance_document_element/non_motor_insurance_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/non_motor_insurance_doc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/selected_non_motor_insurance_doc_type_list_notifier.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DropdownWidgetNonMotor extends ConsumerStatefulWidget {
  final NonMotorInsuranceDocumentElement item;
  final int index;

  const DropdownWidgetNonMotor({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DropdownWidgetNonMotorState();
}

class _DropdownWidgetNonMotorState extends ConsumerState<DropdownWidgetNonMotor> {
  List<NonMotorInsuranceDocumentTypeModel> list = [];

  @override
  void initState() {
    super.initState();
    setData();
  }

  void setData() {
    final selectedDocsListProvider = ref.read(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);

    final nonMotorInsuranceDocTypesNotifier = ref.read(nonMotorInsuranceDocsTypesNotifierProvider.notifier);
    ref.read(nonMotorInsuranceDocsTypesNotifierProvider);

    list = List.from(nonMotorInsuranceDocTypesNotifier.nonMotorInsuranceDocsTypesList());

    // if (selectedDocsListProvider.haveList()) {
    //   selectedDocsListProvider.list().forEach(
    //     (element) {
    //       list.removeWhere((e) => e.mDocumentTypeId == element.documentElement?.mDocumentTypeId);
    //     },
    //   );
    // }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final selectedDocsListProvider = ref.watch(selectedNonMotorInsuranceDocTypeListNotifierProvider.notifier);

    return CustomDrowDownField(
      value: widget.item.documentElement,
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
        selectedDocsListProvider.updateElementsFilePath(filePath: null, index: widget.index);
        selectedDocsListProvider.updateElementsSelectedDocType(
            index: widget.index, element: value as NonMotorInsuranceDocumentTypeModel);
      },
      items: list.map((NonMotorInsuranceDocumentTypeModel value) {
        return DropdownMenuItem<NonMotorInsuranceDocumentTypeModel>(
          enabled: (selectedDocsListProvider
                  .list()
                  .any((element) => element.documentElement?.documentCode == value.documentCode))
              ? false
              : true,
          value: value,
          child: Text(
            value.nonMotorInsuranceDocType ?? "-",
            style: TextStyle(
              fontSize: 14.sp,
              color: (selectedDocsListProvider
                      .list()
                      .any((element) => element.documentElement?.documentCode == value.documentCode))
                  ? textGrayColor
                  : black,
            ),
          ),
        );
      }).toList(),
    );
  }
}
