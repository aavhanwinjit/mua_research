import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/motor_insurance_document_element/motor_insurance_document_element.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_doc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/selected_motor_insurance_doc_type_list_notifier.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DropdownWidget extends ConsumerStatefulWidget {
  final MotorInsuranceDocumentElement item;
  final int index;

  const DropdownWidget({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends ConsumerState<DropdownWidget> {
  List<MotorInsuranceDocumentTypeModel> list = [];

  @override
  void initState() {
    super.initState();
    setData();
  }

  void setData() {
    // final selectedDocsListProvider = ref.read(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);

    final motorInsuranceDocTypesNotifier = ref.read(motorInsuranceDocsTypesNotifierProvider.notifier);
    ref.read(motorInsuranceDocsTypesNotifierProvider);

    list = List.from(motorInsuranceDocTypesNotifier.motorInsuranceDocsTypesList());

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
    final selectedDocsListProvider = ref.read(selectedMotorInsuranceDocTypeListNotifierProvider.notifier);

    return CustomDrowDownField(
      value: widget.item.documentElement,
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
        selectedDocsListProvider.updateElementsFilePath(filePath: null, index: widget.index);

        selectedDocsListProvider.updateElementsSelectedDocType(
            index: widget.index, element: value as MotorInsuranceDocumentTypeModel);
      },
      items: list.map((MotorInsuranceDocumentTypeModel value) {
        if (value.documentCode == widget.item.documentElement?.documentCode) {
          return DropdownMenuItem<MotorInsuranceDocumentTypeModel>(
            value: value,
            child: Text(
              value.motorInsuranceDocType ?? "-",
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
          );
        } else {
          return DropdownMenuItem<MotorInsuranceDocumentTypeModel>(
            enabled: (selectedDocsListProvider
                    .list()
                    .any((element) => element.documentElement?.documentCode == value.documentCode))
                ? false
                : true,
            value: value,
            child: Text(
              value.motorInsuranceDocType ?? "-",
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
        }
      }).toList(),
    );
  }
}
