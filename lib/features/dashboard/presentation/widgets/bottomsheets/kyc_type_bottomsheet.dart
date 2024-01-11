import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/kyc_type_enums.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:ekyc/features/dashboard/presentation/providers/kyc_type_provider.dart';
import 'package:ekyc/features/dashboard/presentation/widgets/insurance_type_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class KYCTypeBottomsheet extends ConsumerStatefulWidget {
  const KYCTypeBottomsheet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _FilterBottomsheetState();
}

class _FilterBottomsheetState extends ConsumerState<KYCTypeBottomsheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleWithCloseButton(),
          _headingWidget(),
          SizedBox(height: 32.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                InsuranceTypeCard(
                  valueType: KYCType.LIFE_INSURANCE,
                  title: Strings.lifeInsurance,
                  imagePath: ImageConstants.lifeInsuranceImage,
                ),
                SizedBox(width: 12.w),
                InsuranceTypeCard(
                  valueType: KYCType.MOTOR_INSURANCE,
                  title: Strings.motorInsurance,
                  imagePath: ImageConstants.motorInsuranceImage,
                ),
                SizedBox(width: 12.w),
                InsuranceTypeCard(
                  valueType: KYCType.NON_MOTOR_INSURANCE,
                  title: Strings.nonMotorInsurance,
                  imagePath: ImageConstants.nonMotorInsuranceImage,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          _buttons(),
        ],
      ),
    );
  }

  Widget _headingWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Text(
        Strings.kycBottomsheetDescription,
        style: TextStyle(
          fontSize: 14.sp,
          color: textGrayColor2,
        ),
      ),
    );
  }

  Widget _buttons() {
    return Padding(
      padding: EdgeInsets.all(20.w),
      child: CustomPrimaryButton(
        disable: ref.watch(kycTypeProvider) == null,
        onTap: () {
          context.pop();
          context.push(AppRoutes.customerInfoScreen);
        },
        label: Strings.next,
      ),
    );
  }

  Widget _titleWithCloseButton() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Strings.selectKYCType,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22.sp,
              color: black,
            ),
          ),
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
    );
  }
}
