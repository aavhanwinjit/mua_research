import 'dart:math';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/mixins/get_non_motor_insurance_doc_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/non_motor_insurance_doc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/provider/non_motor_insurance_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/providers/non_motor_docs_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/non_motor_documents/widgets/non_motor_insurance_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class NonMotorDocumentScreen extends ConsumerStatefulWidget {
  const NonMotorDocumentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PolicyDocumentsScreenState();
}

class _PolicyDocumentsScreenState extends ConsumerState<NonMotorDocumentScreen>
    with GetNonMotorInsuranceDocTypeMixin {
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .watch(nonMotorInsuranceDocsTypesListLoading.notifier)
          .update((state) => false);
      ref
          .watch(selectedNonMotorInsuranceDocTypeProvider.notifier)
          .update((state) => null);
      ref
          .watch(nonMotorInsuranceProofFilePathProvider.notifier)
          .update((state) => null);
      ref
          .watch(nonMotorInsuranceDocOCRApiResponse.notifier)
          .update((state) => null);
      ref
          .watch(nonMotorInsuranceDocOCRLoadingProvider.notifier)
          .update((state) => false);
      ref.watch(ocrNameMatched.notifier).update((state) => true);
      ref
          .watch(nonMotorInsuranceOtherNameProvider.notifier)
          .update((state) => null);
      ref
          .watch(nonMotorInsuranceSurnameProvider.notifier)
          .update((state) => null);

      getNonMotorInsuranceDocumentTypes(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool nonMotorInsuranceDocTypeLoading =
        ref.watch(nonMotorInsuranceDocsTypesListLoading);

    final nonMotorInsuranceDocTypesNotifier =
        ref.watch(nonMotorInsuranceDocsTypesNotifierProvider.notifier);
    ref.watch(nonMotorInsuranceDocsTypesNotifierProvider);
    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.nonMotorDocuments,
        ),
        bottomNavigationBar: _bottomNavBarWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _subTitle(),
                  SizedBox(height: 20.h),
                  if (nonMotorInsuranceDocTypeLoading)
                    const NonMotorInsuranceDetailsLoadingWidget(),
                  if (!nonMotorInsuranceDocTypeLoading) ...[
                    if (nonMotorInsuranceDocTypesNotifier.haveList()) ...[
                      _dropdownWidget(),
                      SizedBox(height: 24.h),
                      DocumentUploadContainer(
                        provider: nonMotorDocFilePathProvider,
                        label: Strings.nonMotorDocsContainerLabel,
                        cameraScreenTitle: Strings.scanDocuments,
                        cameraScreenDescription: Strings.nonMotorDocCameraLabel,
                        reviewScreenTitle: Strings.nonMotorDocuments,
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AddDocumentButton(onPressed: () {}),
                        ],
                      ),
                    ],
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _subTitle() {
    return Text(
      Strings.nonMotorDocsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _dropdownWidget() {
    final nonMotorInsuranceDocTypesNotifier =
        ref.watch(nonMotorInsuranceDocsTypesNotifierProvider.notifier);
    ref.watch(nonMotorInsuranceDocsTypesNotifierProvider);

    return CustomDrowDownField(
      value: ref.watch(selectedNonMotorInsuranceDocTypeProvider),
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
        ref
            .watch(selectedNonMotorInsuranceDocTypeProvider.notifier)
            .update((state) => value as NonMotorInsuranceDocumentTypeModel);
      },
      items: nonMotorInsuranceDocTypesNotifier
          .nonMotorInsuranceDocsTypesList()
          .map((NonMotorInsuranceDocumentTypeModel value) {
        return DropdownMenuItem<NonMotorInsuranceDocumentTypeModel>(
          value: value,
          child: Text(
            value.nonMotorInsuranceDocType?.trim() ?? "-",
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _bottomNavBarWidget() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        onTap: () {
          context.pushNamed(AppRoutes.nonMotorDocsReviewSubmitScreen);
        },
        label: Strings.next,
      ),
    );
  }
}
