import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/custom_checkbox_tile.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/pages/widgets/policy_docs_card.dart';
import 'package:ekyc/features/kyc_process/presentation/policy_documents/providers/pd_review_submit_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/customer_info/pages/widgets/customer_info_card.dart';
import 'package:ekyc/widgets/review_screen_buttons.dart';
import 'package:ekyc/widgets/signature_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PDReviewSubmitScreen extends ConsumerStatefulWidget {
  const PDReviewSubmitScreen({super.key});

  @override
  ConsumerState<PDReviewSubmitScreen> createState() => _ReviewSubmitScreenState();
}

class _ReviewSubmitScreenState extends ConsumerState<PDReviewSubmitScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHelper.showCustomAppbar(
        context: context,
        title: Strings.reviewAndSubmit,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: CustomerInfoCard(),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: PolicyDocsCard(),
                ),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: SignatureWidget(),
                ),
                SizedBox(height: 24.h),
                CustomCheckboxTile(
                  value: ref.watch(confirmationProvider),
                  onChanged: (value) {
                    ref.read(confirmationProvider.notifier).update((state) => value!);
                  },
                  title: Strings.reviewScreenCheckboxTitle,
                  fontSize: 12.sp,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: ReviewScreenButtons(
                    onNext: () {},
                    onExit: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}