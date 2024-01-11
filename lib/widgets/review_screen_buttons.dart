import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/constants/strings/strings_constants.dart';
import 'package:flutter/material.dart';

class ReviewScreenButtons extends StatelessWidget {
  final Function() onNext;
  final Function() onExit;

  const ReviewScreenButtons({super.key, required this.onNext, required this.onExit});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: CustomOutlineButton(
            disable: false,
            onTap: onExit,
            label: Strings.exit,
          ),
        ),
        SizedBox(width: 8.w),
        Flexible(
          flex: 3,
          child: CustomPrimaryButton(
            disable: false,
            onTap: onNext,
            label: Strings.next,
          ),
        ),
      ],
    );
  }
}
