import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/kyc_process/data/models/additional_document_element/additional_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/get_additional_document_types/response/get_additional_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/additional_doc_type_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/selected_additional_doc_list_notifier.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DropdownWidgetAdditional extends ConsumerStatefulWidget {
  final AdditionalDocumentElement item;
  final int index;

  const DropdownWidgetAdditional({
    super.key,
    required this.item,
    required this.index,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DropdownWidgetAdditionalState();
}

class _DropdownWidgetAdditionalState extends ConsumerState<DropdownWidgetAdditional> {
  List<AdditionalDocumentTypeModel> list = [];

  @override
  void initState() {
    super.initState();
    setData();
  }

  void setData() {
    // final selectedDocsListProvider = ref.read(selectedAdditionalDocListNotifierProvider.notifier);

    final additionalDocTypeNotifier = ref.read(additionalDocTypeNotifierProvider.notifier);
    ref.read(additionalDocTypeNotifierProvider);

    list = List.from(additionalDocTypeNotifier.nonMotorInsuranceDocsTypesList());

    // if (selectedDocsListProvider.haveList()) {
    //   selectedDocsListProvider.list().forEach(
    //     (element) {
    //       list.removeWhere((e) => e.additionalDoumentTypeId == element.documentElement?.additionalDoumentTypeId);
    //     },
    //   );
    // }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final selectedDocsListProvider = ref.watch(selectedAdditionalDocListNotifierProvider.notifier);
    ref.watch(selectedAdditionalDocListNotifierProvider);

    return CustomDrowDownField(
      value: widget.item.documentElement,
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
        selectedDocsListProvider.updateElementsFilePath(filePath: null, index: widget.index);
        selectedDocsListProvider.updateElementsSelectedDocType(
            index: widget.index, element: value as AdditionalDocumentTypeModel);
      },
      items: list.map((AdditionalDocumentTypeModel value) {
        if (value.documentCode == widget.item.documentElement?.documentCode) {
          return DropdownMenuItem<AdditionalDocumentTypeModel>(
            value: value,
            child: Text(
              value.additionalDoumentTypeName ?? "-",
              style: TextStyle(
                fontSize: 14.sp,
              ),
            ),
          );
        } else {
          return DropdownMenuItem<AdditionalDocumentTypeModel>(
            enabled: (selectedDocsListProvider
                    .list()
                    .any((element) => element.documentElement?.documentCode == value.documentCode))
                ? false
                : true,
            value: value,
            child: Text(
              value.additionalDoumentTypeName ?? "-",
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
