// import 'package:ekyc/core/app_export.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class BackspaceButton extends ConsumerWidget {
//   final StateProvider<String> provider;
//   const BackspaceButton({super.key, required this.provider});

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
//         onPressed: () {
//           if (ref.watch(provider).isNotEmpty) {
//             ref.watch(provider.notifier).update(
//                   (state) => ref.watch(provider).substring(
//                         0,
//                         ref.watch(provider).length - 1,
//                       ),
//                 );

//             debugPrint(ref.watch(provider));
//           }
//         },
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(100),
//         ),
//         child: Icon(
//           Icons.backspace,
//           color: primaryBlueColor,
//           size: MediaQuery.of(context).size.width > 480 ? 18.sp : 28.sp,
//         ),
//       ),
//     );
//   }
// }
