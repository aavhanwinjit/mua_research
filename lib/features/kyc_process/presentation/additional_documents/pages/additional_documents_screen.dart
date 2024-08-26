import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/document_codes.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/additional_document_element/additional_document_element.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/additional_documents/providers/selected_additional_doc_list_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container_2.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/buttons/remove_document_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AdditionalDocumentsScreen extends ConsumerStatefulWidget {
  const AdditionalDocumentsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AdditionalDocumentsScreenState();
}

class _AdditionalDocumentsScreenState extends ConsumerState<AdditionalDocumentsScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final selectedDocsListProvider = ref.watch(selectedAdditionalDocListNotifierProvider.notifier);
      selectedDocsListProvider.clearList();

      selectedDocsListProvider.addElementToList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.additionalDocuments,
        ),
        bottomNavigationBar: _bottomNavBarWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(),
                  SizedBox(height: 8.h),
                  _subTitle(),
                  SizedBox(height: 20.h),
                  _documentWidgetList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _documentWidgetList() {
    final selectedDocsListProvider = ref.watch(selectedAdditionalDocListNotifierProvider.notifier);
    ref.watch(selectedAdditionalDocListNotifierProvider);

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: selectedDocsListProvider.list().length,
      itemBuilder: (context, index) {
        AdditionalDocumentElement item = selectedDocsListProvider.list()[index];

        return _documentElement(item, index);
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 36.h);
      },
    );
  }

  Widget _documentElement(AdditionalDocumentElement item, int index) {
    final selectedDocsListProvider = ref.watch(selectedAdditionalDocListNotifierProvider.notifier);
    ref.watch(selectedAdditionalDocListNotifierProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DocumentUploadContainer2(
          filePath: item.filePath,
          documentCode: DocumentCodes.ADD.toString().split('.').last,
          onChange: (String path, ScanDocumentResponseBody? response) async {
            selectedDocsListProvider.updateElementsFilePath(filePath: path, index: index);
            selectedDocsListProvider.updateElementScanResponse(scanResponse: response, index: index);

            context.pop();
          },
          clearFile: () {
            selectedDocsListProvider.clearElementsFilePath(index: index);
          },
          label: Strings.insuredDocumentContainerLabel,
          cameraScreenTitle: Strings.scanDocuments,
          cameraScreenDescription: Strings.insuredDocCameraLabel,
          reviewScreenTitle: Strings.uploadInsuredDocuments,
          // disable: item.documentElement == null,
          // disableCallback: () {
          //   context.showErrorSnackBar(message: Strings.selectDocumentType);
          // },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (index != 0)
              RemoveDocumentButton(
                onPressed: () {
                  selectedDocsListProvider.removeElementFromList(index);
                },
              ),
            const SizedBox(),

            // show add doc button only for the fist element in the list
            if (index == 0)
              // if ((selectedDocsListProvider.list().length - 1) == index)
              AddDocumentButton(
                onPressed: () {
                  // only 2 docs are allowed to add
                  if (selectedDocsListProvider.list().length < 2) {
                    selectedDocsListProvider.addElementToList();
                  } else {
                    context.showErrorSnackBar(message: Strings.only2Documents);
                  }
                },
              ),
          ],
        ),
      ],
    );
  }

  Widget _subTitle() {
    return Text(
      Strings.additionalDocsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _title() {
    return Text(
      Strings.otherKYCDocs,
      style: TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: black,
      ),
    );
  }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        disable: buttonDisableCheck(),
        disabledOnTap: () {
          context.showErrorSnackBar(message: Strings.uploadAdditionalDocuments);
        },
        onTap: () {
          context.pushNamed(AppRoutes.additionalDocsReviewSubmitScreen);
        },
        label: Strings.next,
      ),
    );
  }

  bool buttonDisableCheck() {
    final selectedDocsListProvider = ref.watch(selectedAdditionalDocListNotifierProvider.notifier);

    if (selectedDocsListProvider.list().isEmpty) {
      return true;
    }

    return selectedDocsListProvider.list().any((element) {
      if (element.filePath == null || element.scanResponse == null) {
        return true;
      } else {
        return false;
      }
    });
  }
}
