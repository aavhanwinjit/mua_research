import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/features/mpin_face_id/presentation/pages/widgets/backspace_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PinKeypad extends ConsumerWidget {
  final StateProvider<String> provider;
  final VoidCallback callback;
  const PinKeypad({super.key, required this.provider, required this.callback});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Center(
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 400,
            ),
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: List.generate(
                9,
                (index) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Container(
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
                      onPressed: (ref.watch(provider).length == 6)
                          ? () {}
                          : () {
                              if (ref.watch(provider).length < 6) {
                                ref.watch(provider.notifier).update((state) =>
                                    "${ref.watch(provider)}${index + 1}");

                                debugPrint(ref.watch(provider));
                              }

                              if (ref.watch(provider).length == 6) {
                                callback();
                              }
                            },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(
                          color: primaryBlueColor,
                          fontSize: 24.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // pin keypad last row
        Container(
          constraints: const BoxConstraints(
            maxWidth: 400,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Empty container to adjust space
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Container(
                  height: 50.sp,
                  width: 50.sp,
                  constraints: const BoxConstraints(
                    maxHeight: 90,
                    maxWidth: 90,
                  ),
                  child: Container(),
                ),
              ),
              //Zero button
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: ZeroButton(provider: provider, callback: callback),
              ),
              //Backspace
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: BackspaceButton(provider: provider),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ZeroButton extends ConsumerWidget {
  final StateProvider<String> provider;
  final VoidCallback callback;
  const ZeroButton({super.key, required this.provider, required this.callback});

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
        onPressed: (ref.watch(provider).length == 6)
            ? () {}
            : () {
                if (ref.watch(provider).length < 6) {
                  ref
                      .watch(provider.notifier)
                      .update((state) => "${ref.watch(provider)}0");

                  debugPrint(ref.watch(provider));
                }
                if (ref.watch(provider).length == 6) {
                  callback();
                }
              },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          "0",
          style: TextStyle(
            color: primaryBlueColor,
            fontSize: 24.sp,
          ),
        ),
      ),
    );
  }
}
