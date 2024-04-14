import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/mixins/get_motor_insurance_doc_types_mixin.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_doc_types_notifier.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/providers/motor_insurance_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/motor_documents/widgets/motor_insurance_loading_widget.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/document_upload_container.dart';
import 'package:ekyc/widgets/buttons/add_documents_button.dart';
import 'package:ekyc/widgets/custom_drop_down_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MotorDocumentScreen extends ConsumerStatefulWidget {
  const MotorDocumentScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PolicyDocumentsScreenState();
}

class _PolicyDocumentsScreenState extends ConsumerState<MotorDocumentScreen>
    with GetMotorInsuranceDocTypeMixin {
  String? dropdownValue;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .watch(motorInsuranceDocsTypesListLoading.notifier)
          .update((state) => false);
      ref
          .watch(selectedMotorInsuranceDocTypeProvider.notifier)
          .update((state) => null);
      ref
          .watch(motorInsuranceProofFilePathProvider.notifier)
          .update((state) => null);
      ref
          .watch(motorInsuranceDocOCRApiResponse.notifier)
          .update((state) => null);
      ref
          .watch(motorInsuranceDocOCRLoadingProvider.notifier)
          .update((state) => false);
      ref.watch(ocrNameMatched.notifier).update((state) => true);
      ref
          .watch(motorInsuranceOtherNameProvider.notifier)
          .update((state) => null);
      ref.watch(motorInsuranceSurnameProvider.notifier).update((state) => null);

      getMotorInsuranceDocumentTypes(context: context, ref: ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool motorInsuranceDocTypeLoading =
        ref.watch(motorInsuranceDocsTypesListLoading);

    final motorInsuranceDocTypesNotifier =
        ref.watch(motorInsuranceDocsTypesNotifierProvider.notifier);
    ref.watch(motorInsuranceDocsTypesNotifierProvider);
    return GestureDetector(
      onTap: () {
        KeyboardHelper.onScreenTap(context);
      },
      child: Scaffold(
        appBar: AppBarHelper.showCustomAppbar(
          context: context,
          title: Strings.motorDocuments,
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
                  if (motorInsuranceDocTypeLoading)
                    const MotorInsuranceDetailsLoadingWidget(),
                  if (!motorInsuranceDocTypeLoading) ...[
                    if (motorInsuranceDocTypesNotifier.haveList()) ...[
                      _dropdownWidget(),
                      SizedBox(height: 24.h),
                      DocumentUploadContainer(
                        provider: motorInsuranceProofFilePathProvider,
                        label: Strings.motorDocsContainerLabel,
                        cameraScreenTitle: Strings.scanDocuments,
                        cameraScreenDescription: Strings.motorDocCameraLabel,
                        reviewScreenTitle: Strings.motorDocuments,
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
      Strings.motorDocsScreenSubtitle,
      style: TextStyle(
        fontSize: 12.sp,
        color: textGrayColor2,
      ),
    );
  }

  Widget _dropdownWidget() {
    final motorInsuranceDocTypesNotifier =
        ref.watch(motorInsuranceDocsTypesNotifierProvider.notifier);
    ref.watch(motorInsuranceDocsTypesNotifierProvider);

    return CustomDrowDownField(
      value: ref.watch(selectedMotorInsuranceDocTypeProvider),
      labelText: Strings.selectDocument,
      validator: (value) {
        return value == null ? Strings.selectDocument : null;
      },
      onChanged: (value) {
        ref
            .watch(selectedMotorInsuranceDocTypeProvider.notifier)
            .update((state) => value as MotorInsuranceDocumentTypeModel);
      },
      items: motorInsuranceDocTypesNotifier
          .motorInsuranceDocsTypesList()
          .map((MotorInsuranceDocumentTypeModel value) {
        return DropdownMenuItem<MotorInsuranceDocumentTypeModel>(
          value: value,
          child: Text(
            value.motorInsuranceDocType?.trim() ?? "-",
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
          context.pushNamed(AppRoutes.motorDocsReviewSubmitScreen);
        },
        label: Strings.next,
      ),
    );
  }
}
