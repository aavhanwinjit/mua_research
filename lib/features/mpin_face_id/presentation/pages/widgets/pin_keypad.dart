import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PinKeypad extends ConsumerWidget {
  final StateProvider<String> provider;
  final VoidCallback callback;
  const PinKeypad({super.key, required this.provider, required this.callback});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width > 480 ? 400 : 600,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: 12,
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
                color: index == 9
                    ? Colors.transparent
                    : primaryBlueColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: index == 9
                  ? Container()
                  : MaterialButton(
                      onPressed: index == 11
                          ? () {
                              if (ref.watch(provider).isNotEmpty) {
                                ref.watch(provider.notifier).update(
                                      (state) => ref.watch(provider).substring(
                                            0,
                                            ref.watch(provider).length - 1,
                                          ),
                                    );

                                debugPrint(ref.watch(provider));
                              }
                            }
                          : (ref.watch(provider).length == 6)
                          ? () {}
                          : index == 10
                              ? () {
                                  if (ref.watch(provider).length < 6) {
                                    ref.watch(provider.notifier).update(
                                        (state) =>
                                            "${ref.watch(provider)}0");
    
                                    debugPrint(ref.watch(provider));
                                  }
                                  if (ref.watch(provider).length == 6) {
                                    callback();
                                  }
                                }
                              :  () {
                                      if (ref.watch(provider).length < 6) {
                                        ref.watch(provider.notifier).update(
                                            (state) =>
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
                      child: index == 11
                          ? Icon(
                              Icons.backspace,
                              color: primaryBlueColor,
                              size: MediaQuery.of(context).size.width > 480
                                  ? 18.sp
                                  : 28.sp,
                            )
                          : Text(
                              index == 10 ? "0" : "${index + 1}",
                              style: TextStyle(
                                color: primaryBlueColor,
                                fontSize:
                                    MediaQuery.of(context).size.width > 480
                                        ? 18.sp
                                        : 36.sp,
                              ),
                            ),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

// class ZeroButton extends ConsumerWidget {
//   final StateProvider<String> provider;
//   final VoidCallback callback;
//   const ZeroButton({super.key, required this.provider, required this.callback});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Container(
//       height: MediaQuery.of(context).size.width > 480 ? 50.sp : 70.sp,
//       width: MediaQuery.of(context).size.width > 480 ? 50.sp : 70.sp,
//       constraints: BoxConstraints(
//         maxHeight: MediaQuery.of(context).size.width > 480 ? 90 : 120,
//         maxWidth: MediaQuery.of(context).size.width > 480 ? 90 : 120,
//       ),
//       decoration: BoxDecoration(
//         color: primaryBlueColor.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(100),
//       ),
//       child: MaterialButton(
//         onPressed: (ref.watch(provider).length == 6)
//             ? () {}
//             : () {
//                 if (ref.watch(provider).length < 6) {
//                   ref
//                       .watch(provider.notifier)
//                       .update((state) => "${ref.watch(provider)}0");

//                   debugPrint(ref.watch(provider));
//                 }
//                 if (ref.watch(provider).length == 6) {
//                   callback();
//                 }
//               },
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(100),
//         ),
//         child: Text(
//           "0",
//           style: TextStyle(
//             color: primaryBlueColor,
//             fontSize: MediaQuery.of(context).size.width > 480 ? 18.sp : 36.sp,
//           ),
//         ),
//       ),
//     );
//   }
// }
