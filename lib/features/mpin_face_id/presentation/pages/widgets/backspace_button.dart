import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BackspaceButton extends ConsumerWidget {
  final StateProvider<String> provider;
  const BackspaceButton({super.key, required this.provider});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 50.sp,
      width: 50.sp,
      constraints: const BoxConstraints(
        maxHeight: 90,
        maxWidth: 90,
      ),
      decoration: BoxDecoration(
        color: primaryBlueColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(100),
      ),
      child: MaterialButton(
        onPressed: () {
          if (ref.watch(provider).isNotEmpty) {
            ref.watch(provider.notifier).update(
                  (state) => ref.watch(provider).substring(
                        0,
                        ref.watch(provider).length - 1,
                      ),
                );

            debugPrint(ref.watch(provider));
          }
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Icon(
          Icons.backspace,
          color: primaryBlueColor,
          size: 20.sp,
        ),
      ),
    );
  }
}
