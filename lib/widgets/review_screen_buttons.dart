import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class ReviewScreenButtons extends StatelessWidget {
  final Function() onNext;
  final Function() onExit;
  final bool? disable;

  const ReviewScreenButtons({super.key, required this.onNext, required this.onExit, this.disable});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: CustomOutlineButton(
            disable: disable ?? false,
            onTap: onExit,
            label: Strings.saveAndExit,
          ),
        ),
        SizedBox(width: 8.w),
        Flexible(
          flex: 3,
          child: CustomPrimaryButton(
            disable: disable ?? false,
            onTap: onNext,
            label: Strings.continueToUpload,
          ),
        ),
      ],
    );
  }
}
