import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_type_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InsuranceTypeCard extends ConsumerWidget {
  final KycTypesModel kycType;
  final String imagePath;

  const InsuranceTypeCard({
    super.key,
    required this.kycType,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedKycType = ref.watch(selectedKycTypeProvider);
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: () {
        ref.watch(selectedKycTypeProvider.notifier).update((state) => kycType);
      },
      child: Container(
        padding: EdgeInsets.only(
          bottom: 12.h,
          top: 12.h,
          left: 8.w,
          right: 4.w,
        ),
        constraints: const BoxConstraints(
          maxHeight: 280,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sp),
          border: Border.all(
            color: selectedKycType == kycType ? primaryBlueColor : borderColorSecondary,
            width: 1.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imagePath,
                  height: 27.h,
                ),
                selectedKycType == kycType
                    ? const Icon(
                        Icons.check_circle,
                        color: primaryBlueColor,
                      )
                    : const Icon(
                        Icons.radio_button_off,
                        color: borderColorSecondary,
                      ),
              ],
            ),
            SizedBox(height: 30.h),
            Text(
              kycType.kycTypes?.trim() ?? "-",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: screenWidth > 480 ? 9.sp : 14.sp,
                color: selectedKycType == kycType ? primaryBlueColor : black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
