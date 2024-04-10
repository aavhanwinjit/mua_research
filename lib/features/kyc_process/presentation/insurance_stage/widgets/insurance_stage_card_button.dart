import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/enums/insurance_button_type.dart';
import 'package:flutter/material.dart';

class InsuranceStageCardButton extends StatelessWidget {
  final InsuranceButtonType buttonType;

  const InsuranceStageCardButton({super.key, required this.buttonType});
  const InsuranceStageCardButton.active({super.key, this.buttonType = InsuranceButtonType.active});
  const InsuranceStageCardButton.inactive({super.key, this.buttonType = InsuranceButtonType.inactive});
  const InsuranceStageCardButton.completed({super.key, this.buttonType = InsuranceButtonType.completed});

  @override
  Widget build(BuildContext context) {
    switch (buttonType) {
      case InsuranceButtonType.active:
        return Row(
          children: [
            Text(
              Strings.contn,
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: primaryColor,
            ),
          ],
        );
      case InsuranceButtonType.inactive:
        return Row(
          children: [
            Text(
              Strings.contn,
              style: TextStyle(
                color: buttonInactiveColor,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: buttonInactiveColor,
            ),
          ],
        );
      case InsuranceButtonType.completed:
        return Row(
          children: [
            const Icon(
              Icons.check_circle,
              color: primaryGreenColor,
              size: 16,
            ),
            SizedBox(width: 4.w),
            Text(
              Strings.completed,
              style: TextStyle(
                color: primaryGreenColor,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
          ],
        );
    }
  }
}
