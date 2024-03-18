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
            height: MediaQuery.of(context).size.width > 480 ? 410 : 350,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width > 480 ? 400 : 600,
            ),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemCount: 9,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Container(
                  height:
                      MediaQuery.of(context).size.width > 480 ? 50.sp : 70.sp,
                  width:
                      MediaQuery.of(context).size.width > 480 ? 50.sp : 70.sp,
                  constraints: BoxConstraints(
                    maxHeight:
                        MediaQuery.of(context).size.width > 480 ? 90 : 120,
                    maxWidth:
                        MediaQuery.of(context).size.width > 480 ? 90 : 120,
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
                        fontSize: MediaQuery.of(context).size.width > 480
                            ? 18.sp
                            : 36.sp,
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
                  height:
                      MediaQuery.of(context).size.width > 480 ? 50.sp : 70.sp,
                  width:
                      MediaQuery.of(context).size.width > 480 ? 50.sp : 70.sp,
                  constraints: BoxConstraints(
                    maxHeight:
                        MediaQuery.of(context).size.width > 480 ? 90 : 120,
                    maxWidth:
                        MediaQuery.of(context).size.width > 480 ? 90 : 120,
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
      height: MediaQuery.of(context).size.width > 480 ? 50.sp : 70.sp,
      width: MediaQuery.of(context).size.width > 480 ? 50.sp : 70.sp,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.width > 480 ? 90 : 120,
        maxWidth: MediaQuery.of(context).size.width > 480 ? 90 : 120,
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
            fontSize: MediaQuery.of(context).size.width > 480 ? 18.sp : 36.sp,
          ),
        ),
      ),
    );
  }
}
