import 'dart:io';
import 'dart:typed_data';

import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/review_uploaded_doc_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class DocumentUploadContainer2 extends ConsumerStatefulWidget {
  final String label;
  final String cameraScreenTitle;
  final String cameraScreenDescription;
  final String reviewScreenTitle;
  final bool? disable;
  final Function()? disableCallback;
  final bool? hideClearButton;
  final String? filePath;
  final Function(String, ScanDocumentResponseBody?) onChange;
  final Function() clearFile;
  final String documentCode;
  final String? documentSide;

  const DocumentUploadContainer2({
    required this.documentCode,
    required this.filePath,
    required this.onChange,
    required this.clearFile,
    required this.cameraScreenTitle,
    required this.cameraScreenDescription,
    required this.reviewScreenTitle,
    required this.label,
    this.disable,
    this.disableCallback,
    this.hideClearButton,
    this.documentSide,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DocumentUploadContainer2State();
}

class _DocumentUploadContainer2State extends ConsumerState<DocumentUploadContainer2> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: primaryBlueColor,
      strokeWidth: 1,
      dashPattern: const <double>[5, 4],
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      child: InkWell(
        onTap: widget.disable == true
            ? widget.disableCallback
            : widget.filePath == null
                ? () {
                    // openDocumentScanner(true);
                    _onContainerTap();
                  }
                : null,
        child: SizedBox(
          height: 157.h,
          width: double.infinity,
          child: widget.filePath == null
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
                        File(widget.filePath ?? ""),
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

    ref.read(cameraScreenSubtitle.notifier).update((state) => widget.cameraScreenDescription);
    ref.read(cameraScreenAppBarTitle.notifier).update((state) => widget.cameraScreenTitle);
    ref.read(reviewUploadedDocScreenTitle.notifier).update((state) => widget.reviewScreenTitle);

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

        final bool? result = await context.pushNamed(
          AppRoutes.confirmUploadOrRetakeScreen2,
          extra: {
            'onChange': widget.onChange,
            'documentCode': widget.documentCode,
            'documentSide': widget.documentSide,
          },
        );

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
        maxHeight: 1500,
        maxWidth: 1500,
      );

      if (result != null) {
        final fileSize = await result.length();

        if (fileSize > 5000000) {
          context.showErrorSnackBar(message: Strings.fileSizeErrorString);
          return;
        }

        // final bytes = await result.readAsBytes();
        // final croppedImage = await Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) {
        //     return CropImagePage(imageBytes: bytes);
        //   },
        // ));
        // final savedFile = await _saveImageToTempStorage(croppedImage);
        // ref.watch(capturedFilePathProvider.notifier).update((state) => savedFile.path);

        String? croppedImagePath = await _cropImage(result.path);

        if (croppedImagePath != null) {
          ref.watch(capturedFilePathProvider.notifier).update((state) => croppedImagePath);

          // ref.watch(capturedFilePathProvider.notifier).update((state) => result.path);

          context.pop();

          final bool? res = await context.pushNamed(
            AppRoutes.confirmUploadOrRetakeScreen2,
            extra: {
              'onChange': widget.onChange,
              'documentCode': widget.documentCode,
              'documentSide': widget.documentSide,
            },
          );

          debugPrint("res: $res");

          if (res == true) {
            ref.watch(capturedFilePathProvider.notifier).update((state) => null);

            debugPrint("before calling container tap");

            _onContainerTap();
          }
        }
      }
    } catch (e) {}
  }

  Future<String?> _cropImage(String path) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: path,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: Strings.cropImage,
          toolbarColor: primaryColor,
          toolbarWidgetColor: Colors.white,
          lockAspectRatio: false,
          cropFrameColor: primaryColor,
          // hideBottomControls: false,
          

          // cropGridColor: primaryColor,
          // aspectRatioPresets: [
          //   CropAspectRatioPreset.original,
          //   CropAspectRatioPreset.square,
          // ],
        ),
        IOSUiSettings(
          title: Strings.cropImage, aspectRatioLockEnabled: false,

          // aspectRatioPresets: [
          //   CropAspectRatioPreset.original,
          //   CropAspectRatioPreset.square,
          // ],
        ),
      ],
    );

    if (croppedFile != null) {
      return croppedFile.path;
    }
    return null;
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
        widget.clearFile();
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

// class DocumentUploadContainer2 extends ConsumerWidget {
//   final String label;
//   final String cameraScreenTitle;
//   final String cameraScreenDescription;
//   final String reviewScreenTitle;
//   final bool? disable;
//   final Function()? disableCallback;
//   final bool? hideClearButton;
//   final String? filePath;
//   final Function(String, ScanDocumentResponseBody?) onChange;
//   final Function() clearFile;
//   final String documentCode;

//   const DocumentUploadContainer2({
//     required this.documentCode,
//     required this.filePath,
//     required this.onChange,
//     required this.clearFile,
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
//     return DottedBorder(
//       color: primaryBlueColor,
//       strokeWidth: 1,
//       dashPattern: const <double>[5, 4],
//       borderType: BorderType.RRect,
//       radius: const Radius.circular(16),
//       child: InkWell(
//         onTap: disable == true
//             ? disableCallback
//             : filePath == null
//                 ? () {
//                     _onContainerTap(context);
//                   }
//                 : null,
//         child: SizedBox(
//           height: 157.h,
//           width: double.infinity,
//           child: filePath == null
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
//                         File(filePath ?? ""),
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

//   void _onContainerTap(BuildContext context) {
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
//               pickImage(ImageSource.camera, context);
//               // openDocumentScanner(false);
//             },
//           ),
//           CupertinoActionSheetAction(
//             child: const Text('Gallery'),
//             onPressed: () {
//               pickImage(ImageSource.gallery, context);
//               // openDocumentScanner(true);
//             },
//           )
//         ],
//       ),
//     );
//   }

//   void openDocumentScanner(bool gallery) async {
//     debugPrint("inside doc scanner");

//     // try {
//     //   List<String>? imgPaths = await DocScan.scanDocument();

//     //   if (!mounted) return;
//     //   if (imgPaths != null && imgPaths.isEmpty) {
//     //     return;
//     //   }
//     //   // setState(() {
//     //   //   _imagePath = imgPaths[0];
//     //   // });
//     // } catch (e) {
//     //   print(e);
//     // }

//     try {
//       final List<String>? imagesPath = await CunningDocumentScanner.getPictures(
//         noOfPages: 1,
//         isGalleryImportAllowed: gallery,
//       );

//       debugPrint("imagePath: $imagesPath");

//       if (imagesPath != null && imagesPath.isNotEmpty) {
//         ref.watch(capturedFilePathProvider.notifier).update((state) => imagesPath.first);

//         // debugPrint("before popping");

//         context.pop();
//         // debugPrint("after popping");
//         context.pushNamed(AppRoutes.confirmUploadOrRetakeScreen, extra: widget.provider);
//       }
//       setState(() {});
//     } catch (e) {
//       debugPrint("error in document scanner function : $e");
//     }
//   }

//   void pickImage(
//     ImageSource imageSource,
//     BuildContext context,
//   ) async {
//     try {
//       XFile? result = await ImagePicker().pickImage(
//         source: imageSource,
//         maxHeight: 1500,
//         maxWidth: 1500,
//       );

//       if (result != null) {
//         final fileSize = await result.length();

//         if (fileSize > 5000000) {
//           context.showErrorSnackBar(message: Strings.fileSizeErrorString);
//           return;
//         }

//         final bytes = await result.readAsBytes();
//         final croppedImage = await Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) {
//             return CropImagePage(imageBytes: bytes);
//           },
//         ));
//         final savedFile = await _saveImageToTempStorage(croppedImage);

//         ref.watch(capturedFilePathProvider.notifier).update((state) => savedFile.path);

//         // ref.watch(capturedFilePathProvider.notifier).update((state) => result.path);

//         context.pop();
//         context.pushNamed(
//           AppRoutes.confirmUploadOrRetakeScreen2,
//           extra: {'onChange': onChange, 'documentCode': documentCode},
//         );
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
//         clearFile();
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
