import 'dart:io';
import 'dart:typed_data';

import 'package:cunning_document_scanner/cunning_document_scanner.dart';
// import 'package:docscan/docscan.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/review_uploaded_doc_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/widgets/image_cropper_screen.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
// import 'package:google_mlkit_document_scanner/google_mlkit_document_scanner.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class DocumentUploadContainer extends ConsumerStatefulWidget {
  final String label;
  final String cameraScreenTitle;
  final String cameraScreenDescription;
  final String reviewScreenTitle;
  final StateProvider<String?> provider;
  final bool? disable;
  final Function()? disableCallback;
  final bool? hideClearButton;

  const DocumentUploadContainer({
    required this.provider,
    required this.cameraScreenTitle,
    required this.cameraScreenDescription,
    required this.reviewScreenTitle,
    required this.label,
    this.disable,
    this.disableCallback,
    this.hideClearButton,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DocumentUploadContainerState();
}

class _DocumentUploadContainerState extends ConsumerState<DocumentUploadContainer> {
  @override
  Widget build(BuildContext context) {
    final documentFilePath = ref.watch(widget.provider);

    return DottedBorder(
      color: primaryBlueColor,
      strokeWidth: 1,
      dashPattern: const <double>[5, 4],
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      child: InkWell(
        onTap: widget.disable == true
            ? widget.disableCallback
            : documentFilePath == null
                ? () {
                    openDocumentScanner(true);
                    // _onContainerTap();
                  }
                : null,
        child: SizedBox(
          height: 157.h,
          width: double.infinity,
          child: documentFilePath == null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstants.cameraImage,
                      height: 20.h,
                      width: 20.w,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.label,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                )
              : Stack(
                  children: [
                    Positioned.fill(
                      child: Image.file(
                        File(documentFilePath),
                      ),
                    ),
                    if (widget.hideClearButton != true)
                      Positioned(
                        top: 0,
                        right: 0,
                        child: _clearDocumentButton(ref),
                      ),
                  ],
                ),
        ),
      ),
    );
  }

  void _onContainerTap() {
    ref.read(cameraScreenSubtitle.notifier).update((state) => widget.cameraScreenDescription);
    ref.read(cameraScreenAppBarTitle.notifier).update((state) => widget.cameraScreenTitle);
    ref.read(reviewUploadedDocScreenTitle.notifier).update((state) => widget.reviewScreenTitle);

    debugPrint("inside container tap");

    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text('Select document from'),
        actions: <Widget>[
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () {
              pickImage(ImageSource.camera, context);
              // openDocumentScanner(false);
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Gallery'),
            onPressed: () {
              pickImage(ImageSource.gallery, context);
              // openDocumentScanner(true);
            },
          )
        ],
      ),
    );
  }

  void openDocumentScanner(bool gallery) async {
    debugPrint("inside doc scanner");

    // try {
    //   List<String>? imgPaths = await DocScan.scanDocument();

    //   if (!mounted) return;
    //   if (imgPaths != null && imgPaths.isEmpty) {
    //     return;
    //   }
    //   // setState(() {
    //   //   _imagePath = imgPaths[0];
    //   // });
    // } catch (e) {
    //   print(e);
    // }

    try {
      final List<String>? imagesPath = await CunningDocumentScanner.getPictures(
        noOfPages: 1,
        isGalleryImportAllowed: gallery,
      );

      debugPrint("imagePath: $imagesPath");

      if (imagesPath != null && imagesPath.isNotEmpty) {
        ref.watch(capturedFilePathProvider.notifier).update((state) => imagesPath.first);

        // debugPrint("before popping");

        // debugPrint("after popping");
        final bool? result = await context.pushNamed(AppRoutes.confirmUploadOrRetakeScreen, extra: widget.provider);

        debugPrint("result: $result");

        if (result == true) {
          ref.watch(capturedFilePathProvider.notifier).update((state) => null);

          openDocumentScanner(true);
        }
      }
      setState(() {});
    } catch (e) {
      debugPrint("error in document scanner function : $e");
    }
  }

  void pickImage(
    ImageSource imageSource,
    BuildContext context,
  ) async {
    try {
      XFile? result = await ImagePicker().pickImage(
        source: imageSource,
        // maxHeight: 1500,
        // maxWidth: 1500,
        imageQuality: 100,
      );

      debugPrint("result: $result");

      if (result != null) {
        final fileSize = await result.length();

        if (fileSize > 5000000) {
          context.showErrorSnackBar(message: Strings.fileSizeErrorString);
          return;
        }

        final bytes = await result.readAsBytes();
        final croppedImage = await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return CropImagePage(imageBytes: bytes);
          },
        ));
        if (croppedImage != null) {
          final savedFile = await _saveImageToTempStorage(croppedImage);

          ref.watch(capturedFilePathProvider.notifier).update((state) => savedFile.path);
          // ref.watch(capturedFilePathProvider.notifier).update((state) => result.path);

          debugPrint("before popping");

          context.pop();
          debugPrint("after popping");

          final bool? res = await context.pushNamed(AppRoutes.confirmUploadOrRetakeScreen, extra: widget.provider);

          debugPrint("res: $res");

          if (res == true) {
            ref.watch(capturedFilePathProvider.notifier).update((state) => null);

            debugPrint("before calling container tap");

            _onContainerTap();
          }
        }
      }
    } catch (e) {
      debugPrint("error: $e");
    }
  }

  void pickFile(BuildContext context) async {
    try {
      FilePickerResult? file = await FilePicker.platform.pickFiles(allowedExtensions: ["pdf"]);

      if (file != null) {
        File result = File(file.files.first.path!);

        final fileSize = await result.length();

        if (fileSize > 5000000) {
          context.showErrorSnackBar(message: Strings.fileSizeErrorString);
          return;
        }

        ref.watch(capturedFilePathProvider.notifier).update((state) => result.path);

        context.pop();
        context.pushNamed(AppRoutes.confirmUploadOrRetakeScreen, extra: widget.provider);
      }
    } catch (e) {}
  }

  Future<File> _saveImageToTempStorage(Uint8List imageBytes) async {
    String? dir;
    if (Platform.isIOS) {
      dir = (await getApplicationDocumentsDirectory()).path;
    } else {
      dir = (await getExternalStorageDirectories())![0].path;
    }

    final currentTimeMillisecond = DateTime.now().millisecondsSinceEpoch.toString();

    File file = File("$dir/${currentTimeMillisecond.substring(currentTimeMillisecond.length - 6)}_image.png");

    await file.writeAsBytes(imageBytes);

    return file;
  }

  Widget _clearDocumentButton(WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref.watch(widget.provider.notifier).update((state) => null);
      },
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(color: errorTextRed, shape: BoxShape.circle),
        child: const Icon(
          Icons.close,
          color: white,
          size: 20,
        ),
      ),
    );
  }
}

// class DocumentUploadContainer extends ConsumerWidget {
//   final String label;
//   final String cameraScreenTitle;
//   final String cameraScreenDescription;
//   final String reviewScreenTitle;
//   final StateProvider<String?> provider;
//   final bool? disable;
//   final Function()? disableCallback;
//   final bool? hideClearButton;

//   const DocumentUploadContainer({
//     required this.provider,
//     required this.cameraScreenTitle,
//     required this.cameraScreenDescription,
//     required this.reviewScreenTitle,
//     required this.label,
//     this.disable,
//     this.disableCallback,
//     this.hideClearButton,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final documentFilePath = ref.watch(provider);

//     return DottedBorder(
//       color: primaryBlueColor,
//       strokeWidth: 1,
//       dashPattern: const <double>[5, 4],
//       borderType: BorderType.RRect,
//       radius: const Radius.circular(16),
//       child: InkWell(
//         onTap: disable == true
//             ? disableCallback
//             : documentFilePath == null
//                 ? () {
//                     _onContainerTap(ref, context);
//                   }
//                 : null,
//         child: SizedBox(
//           height: 157.h,
//           width: double.infinity,
//           child: documentFilePath == null
//               ? Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       ImageConstants.cameraImage,
//                       height: 20.h,
//                       width: 20.w,
//                       fit: BoxFit.cover,
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       label,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 14.sp,
//                       ),
//                     ),
//                   ],
//                 )
//               : Stack(
//                   children: [
//                     Positioned.fill(
//                       child: Image.file(
//                         File(documentFilePath),
//                       ),
//                     ),
//                     if (hideClearButton != true)
//                       Positioned(
//                         top: 0,
//                         right: 0,
//                         child: _clearDocumentButton(ref),
//                       ),
//                   ],
//                 ),
//         ),
//       ),
//     );
//   }

//   void _onContainerTap(WidgetRef ref, BuildContext context) {
//     ref.read(cameraScreenSubtitle.notifier).update((state) => cameraScreenDescription);
//     ref.read(cameraScreenAppBarTitle.notifier).update((state) => cameraScreenTitle);
//     ref.read(reviewUploadedDocScreenTitle.notifier).update((state) => reviewScreenTitle);

//     showCupertinoModalPopup(
//       context: context,
//       builder: (BuildContext context) => CupertinoActionSheet(
//         title: const Text('Select document from'),
//         actions: <Widget>[
//           CupertinoActionSheetAction(
//             child: const Text('Camera'),
//             onPressed: () {
//               pickImage(ImageSource.camera, ref, context);
//             },
//           ),
//           CupertinoActionSheetAction(
//             child: const Text('Gallery'),
//             onPressed: () {
//               pickImage(ImageSource.gallery, ref, context);
//             },
//           )
//         ],
//       ),
//     );
//   }

//   void openDocumentScanner(bool gallery) {
//     DocumentScannerOptions options = DocumentScannerOptions(
//       mode: ScannerMode.filter,
//       isGalleryImport: gallery,
//       pageLimit: 1,
//       documentFormat: DocumentFormat.jpeg,
//     );

//     DocumentScanner documentScanner = DocumentScanner(options: options);


//   }

//   void pickImage(
//     ImageSource imageSource,
//     WidgetRef ref,
//     BuildContext context,
//   ) async {
//     try {
//       XFile? result = await ImagePicker().pickImage(
//         source: imageSource,
//         maxHeight: 1500,
//         maxWidth: 1500,
//         imageQuality: 100,
//       );

//       if (result != null) {
//         final fileSize = await result.length();

//         if (fileSize > 5000000) {
//           context.showErrorSnackBar(message: Strings.fileSizeErrorString);
//           return;
//         }

//         // final bytes = await result.readAsBytes();
//         // final croppedImage = await Navigator.of(context).push(MaterialPageRoute(
//         //   builder: (context) {
//         //     return CropImagePage(imageBytes: bytes);
//         //   },
//         // ));
//         // final savedFile = await _saveImageToTempStorage(croppedImage);

//         // ref.watch(capturedFilePathProvider.notifier).update((state) => savedFile.path);
//         ref.watch(capturedFilePathProvider.notifier).update((state) => result.path);

//         context.pop();
//         context.pushNamed(AppRoutes.confirmUploadOrRetakeScreen, extra: provider);
//       }
//     } catch (e) {}
//   }

//   void pickFile(
//     WidgetRef ref,
//     BuildContext context,
//   ) async {
//     try {
//       FilePickerResult? file = await FilePicker.platform.pickFiles(allowedExtensions: ["pdf"]);

//       if (file != null) {
//         File result = File(file.files.first.path!);

//         final fileSize = await result.length();

//         if (fileSize > 5000000) {
//           context.showErrorSnackBar(message: Strings.fileSizeErrorString);
//           return;
//         }

//         ref.watch(capturedFilePathProvider.notifier).update((state) => result.path);

//         context.pop();
//         context.pushNamed(AppRoutes.confirmUploadOrRetakeScreen, extra: provider);
//       }
//     } catch (e) {}
//   }

//   Future<File> _saveImageToTempStorage(Uint8List imageBytes) async {
//     String? dir;
//     if (Platform.isIOS) {
//       dir = (await getApplicationDocumentsDirectory()).path;
//     } else {
//       dir = (await getExternalStorageDirectories())![0].path;
//     }

//     final currentTimeMillisecond = DateTime.now().millisecondsSinceEpoch.toString();

//     File file = File("$dir/${currentTimeMillisecond.substring(currentTimeMillisecond.length - 6)}_image.png");

//     await file.writeAsBytes(imageBytes);

//     return file;
//   }

//   Widget _clearDocumentButton(WidgetRef ref) {
//     return IconButton(
//       onPressed: () {
//         ref.watch(provider.notifier).update((state) => null);
//       },
//       padding: EdgeInsets.zero,
//       constraints: const BoxConstraints(),
//       icon: Container(
//         padding: const EdgeInsets.all(4),
//         decoration: const BoxDecoration(color: errorTextRed, shape: BoxShape.circle),
//         child: const Icon(
//           Icons.close,
//           color: white,
//           size: 20,
//         ),
//       ),
//     );
//   }
// }
