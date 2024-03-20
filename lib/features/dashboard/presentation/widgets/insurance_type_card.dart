import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/kyc_type_enums.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_type_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class InsuranceTypeCard extends ConsumerWidget {
  final String title;
  final KYCType valueType;
  final String imagePath;

  const InsuranceTypeCard({
    super.key,
    required this.title,
    required this.valueType,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kycType = ref.watch(kycTypeProvider);
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);
    return Expanded(
      child: InkWell(
        onTap: () {
          ref.watch(kycTypeProvider.notifier).update((state) => valueType);
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
              color: kycType == valueType
                  ? primaryBlueColor
                  : borderColorSecondary,
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
                  kycType == valueType
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
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: screenWidth > 480 ? 9.sp : 14.sp,
                  color: kycType == valueType ? primaryBlueColor : black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
