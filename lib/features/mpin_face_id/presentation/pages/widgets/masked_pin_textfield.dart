import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MaskedPinTextfield extends ConsumerWidget {
  final StateProvider<String> provider;
  const MaskedPinTextfield({super.key, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        6,
        (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 12.sp,
              width: 12.sp,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index + 1 <= ref.watch(provider).length
                    ? primaryBlueColor
                    : white,
                border: Border.all(
                  color: primaryBlueColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
