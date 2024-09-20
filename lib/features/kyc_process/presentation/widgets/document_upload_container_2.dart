import 'dart:io';

// import 'package:cunning_document_scanner/cunning_document_scanner.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/keyboard_helper.dart';
import 'package:ekyc/core/mixins/generate_pdf_mixin.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/review_uploaded_doc_provider.dart';
// import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
// import 'package:image_cropping/image_cropping.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiple_image_camera/camera_file.dart';
import 'package:multiple_image_camera/multiple_image_camera.dart';

class DocumentUploadContainer2 extends ConsumerStatefulWidget {
  final String label;
  final String cameraScreenTitle;
  final String cameraScreenDescription;
  final String reviewScreenTitle;
  final bool? disable;
  final Function()? disableCallback;
  final bool? hideClearButton;
  final String? filePath;
  // final String? pdfPath;
  final Function(String, ScanDocumentResponseBody?) onChange;
  // final Function(String, ScanDocumentResponseBody?)? onChangePdf;
  final Function() clearFile;
  // final Function()? clearPdf;
  final String documentCode;
  final String? documentSide;
  final String? registrationNumber;
  final bool? uploadGeneratedPdfDoc;

  const DocumentUploadContainer2({
    required this.documentCode,
    required this.filePath,
    // this.pdfPath,
    required this.onChange,
    // this.onChangePdf,
    required this.clearFile,
    // this.clearPdf,
    required this.cameraScreenTitle,
    required this.cameraScreenDescription,
    required this.reviewScreenTitle,
    required this.label,
    this.disable,
    this.disableCallback,
    this.hideClearButton,
    this.documentSide,
    this.registrationNumber,
    this.uploadGeneratedPdfDoc = false,
    super.key,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DocumentUploadContainer2State();
}

class _DocumentUploadContainer2State extends ConsumerState<DocumentUploadContainer2> with GeneratePdfMixin {
  @override
  Widget build(BuildContext context) {
    return _uploadSingleImage();

    // return Row(
    //   children: [
    //     _uploadSingleImage(),
    //     if (widget.uploadGeneratedPdfDoc == true) ...[
    //       _uploadSupportingDoc(),
    //     ],
    //   ],
    // );
  }

  Widget _uploadSingleImage() {
    return DottedBorder(
      color: primaryBlueColor,
      strokeWidth: 1,
      dashPattern: const <double>[5, 4],
      borderType: BorderType.RRect,
      radius: const Radius.circular(16),
      child: InkWell(
        onTap: widget.disable == true
            ? () {
                KeyboardHelper.hideKeyboard(context);
                // if (widget.disableCallback != null) {
                widget.disableCallback!();
                // }
              }
            // ? widget.disableCallback
            : widget.filePath == null
                ? () {
                    KeyboardHelper.hideKeyboard(context);

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
                    widget.uploadGeneratedPdfDoc == true
                        ? Positioned.fill(
                            child: SizedBox(
                              height: 50.h,
                              width: 50.h,
                              // padding: EdgeInsets.all(16.w),
                              child: Center(
                                child: SizedBox(
                                  height: 70.h,
                                  width: 70.h,
                                  child: Image.asset(
                                    ImageConstants.pdfIcon2,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Positioned.fill(
                            child: Image.file(
                              File(widget.filePath ?? ""),
                            ),
                          ),
                    if (widget.hideClearButton != true)
                      Positioned(
                        top: 0,
                        right: 0,
                        child: _clearDocumentButton(ref, false),
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
              if (widget.uploadGeneratedPdfDoc == true) {
                captureMultipleImage(context);
              } else {
                pickImage(ImageSource.camera, context);
              }
              // openDocumentScanner(false);
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Gallery'),
            onPressed: () {
              if (widget.uploadGeneratedPdfDoc == true) {
                pickMultipleImage(ImageSource.gallery, context);
              } else {
                pickImage(ImageSource.gallery, context);
              }
              // openDocumentScanner(true);
            },
          )
        ],
      ),
    );
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

        // String? croppedImagePath = await _cropImage2(result.path);
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
              'registrationNumber': widget.registrationNumber,
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

  void pickMultipleImage(
    ImageSource imageSource,
    BuildContext context,
  ) async {
    try {
      List<XFile>? result = await ImagePicker().pickMultiImage(
        imageQuality: 100,
      );

      if (result.isEmpty) {
        return;
      }

      for (var element in result) {
        final fileSize = await element.length();

        if (fileSize > 5000000) {
          context.showErrorSnackBar(message: Strings.fileSizeErrorString);
          return;
        }
      }

      // process the images into pdf
      final String? generatedPdfPath = await generatePdf(
        capturedImageList: null,
        pickedImageList: result,
        ref: ref,
        ctx: context,
      );

      if (generatedPdfPath != null) {
        await navigateToReviewScreen(generatedPdfPath, result.first.path);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void captureMultipleImage(BuildContext context) async {
    try {
      List<MediaModel> result = await MultipleImageCamera.capture(
        context: context,
      );

      if (result.isEmpty) {
        return;
      }

      for (var element in result) {
        final fileSize = await element.file.length();

        if (fileSize > 5000000) {
          context.showErrorSnackBar(message: Strings.fileSizeErrorString);
          return;
        }
      }

      // process the images into pdf
      final String? generatedPdfPath = await generatePdf(
        capturedImageList: result,
        pickedImageList: null,
        ref: ref,
        ctx: context,
      );

      if (generatedPdfPath != null) {
        await navigateToReviewScreen(generatedPdfPath, result.first.file.path);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> navigateToReviewScreen(String generatedPdfPath, String firstImagePath) async {
    ref.watch(capturedFilePathProvider.notifier).update((state) => generatedPdfPath);
    ref.watch(capturedFirstImageFilePathProvider.notifier).update((state) => firstImagePath);

    context.pop();

    final bool? res = await context.pushNamed(
      AppRoutes.confirmUploadOrRetakeScreen2,
      extra: {
        'onChange': widget.onChange,
        'documentCode': widget.documentCode,
        'documentSide': widget.documentSide,
        'registrationNumber': widget.registrationNumber,
        'isPdf': true,
      },
    );

    debugPrint("res: $res");

    if (res == true) {
      ref.watch(capturedFilePathProvider.notifier).update((state) => null);
      ref.watch(capturedFirstImageFilePathProvider.notifier).update((state) => null);

      debugPrint("before calling container tap");

      _onContainerTap();
    }
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

  Widget _clearDocumentButton(WidgetRef ref, bool? pdf) {
    return IconButton(
      onPressed: () {
        // if (pdf == true) {
        //   widget.clearPdf!();
        // } else {
        widget.clearFile();
        // }
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

  // Future<File> _saveImageToTempStorage(Uint8List imageBytes) async {
  //   String? dir;
  //   if (Platform.isIOS) {
  //     dir = (await getApplicationDocumentsDirectory()).path;
  //   } else {
  //     dir = (await getExternalStorageDirectories())![0].path;
  //   }

  //   final currentTimeMillisecond = DateTime.now().millisecondsSinceEpoch.toString();

  //   File file = File("$dir/${currentTimeMillisecond.substring(currentTimeMillisecond.length - 6)}_image.png");

  //   await file.writeAsBytes(imageBytes);

  //   return file;
  // }

  // Widget _uploadSupportingDoc() {
  //   return Row(
  //     children: [
  //       SizedBox(width: 16.w),
  //       Expanded(
  //         child: DottedBorder(
  //           color: primaryBlueColor,
  //           strokeWidth: 1,
  //           dashPattern: const <double>[5, 4],
  //           borderType: BorderType.RRect,
  //           radius: const Radius.circular(16),
  //           child: InkWell(
  //             onTap: widget.disable == true
  //                 ? () {
  //                     KeyboardHelper.hideKeyboard(context);
  //                     // if (widget.disableCallback != null) {
  //                     widget.disableCallback!();
  //                     // }
  //                   }
  //                 // ? widget.disableCallback
  //                 : widget.pdfPath == null
  //                     ? () {
  //                         KeyboardHelper.hideKeyboard(context);

  //                         // upload pdf
  //                         // pickFile();
  //                       }
  //                     : null,
  //             child: SizedBox(
  //               height: 157.h,
  //               width: double.infinity,
  //               child: widget.pdfPath == null
  //                   ? Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       crossAxisAlignment: CrossAxisAlignment.center,
  //                       children: [
  //                         Image.asset(
  //                           ImageConstants.pdfIcon2,
  //                           height: 20.h,
  //                           width: 20.w,
  //                           fit: BoxFit.cover,
  //                           color: primaryBlueColor,
  //                         ),
  //                         const SizedBox(height: 10),
  //                         Text(
  //                           "Upload supporting document",
  //                           // widget.label,
  //                           textAlign: TextAlign.center,
  //                           style: TextStyle(
  //                             fontSize: 14.sp,
  //                           ),
  //                         ),
  //                       ],
  //                     )
  //                   : Stack(
  //                       children: [
  //                         Positioned.fill(
  //                           child: SizedBox(
  //                             height: 50.h,
  //                             width: 50.h,
  //                             // padding: EdgeInsets.all(16.w),
  //                             child: Center(
  //                               child: SizedBox(
  //                                 height: 70.h,
  //                                 width: 70.h,
  //                                 child: Image.asset(
  //                                   ImageConstants.pdfIcon2,
  //                                 ),
  //                               ),
  //                             ),
  //                           ),
  //                         ),
  //                         if (widget.hideClearButton != true)
  //                           Positioned(
  //                             top: 0,
  //                             right: 0,
  //                             child: _clearDocumentButton(ref, true),
  //                           ),
  //                       ],
  //                     ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  // Future<void> pickFile() async {
  //   ref.read(cameraScreenSubtitle.notifier).update((state) => widget.cameraScreenDescription);
  //   ref.read(cameraScreenAppBarTitle.notifier).update((state) => widget.cameraScreenTitle);
  //   ref.read(reviewUploadedDocScreenTitle.notifier).update((state) => widget.reviewScreenTitle);

  //   debugPrint("inside pick file");
  //   try {
  //     FilePickerResult? file = await FilePicker.platform.pickFiles(
  //       allowedExtensions: ['pdf'],
  //       type: FileType.custom,
  //     );

  //     if (file != null) {
  //       File result = File(file.files.first.path!);

  //       final fileSize = await result.length();

  //       if (fileSize > 5000000) {
  //         context.showErrorSnackBar(message: Strings.fileSizeErrorString);
  //         return;
  //       }

  //       ref.watch(capturedFilePathProvider.notifier).update((state) => result.path);

  //       final bool? res = await context.pushNamed(
  //         AppRoutes.confirmUploadOrRetakeScreen2,
  //         extra: {
  //           'onChange': widget.onChangePdf,
  //           'documentCode': widget.documentCode,
  //           'documentSide': widget.documentSide,
  //           'registrationNumber': widget.registrationNumber,
  //           'isPdf': true,
  //         },
  //       );

  //       if (res == true) {
  //         ref.watch(capturedFilePathProvider.notifier).update((state) => null);

  //         await pickFile();
  //       }
  //     }
  //   } catch (e) {
  //     debugPrint("error in catch: $e");
  //   }
  // }

  // Future<String?> _cropImage2(String path) async {
  //   File pickedFile = File(path);
  //   Uint8List bytes = await pickedFile.readAsBytes();

  //   final Uint8List? croppedBytes = await ImageCropping.cropImage(
  //     context: context,
  //     imageBytes: bytes,
  //     onImageDoneListener: (data) {},
  //     defaultTextColor: black,
  //     selectedTextColor: primaryColor,
  //     colorForWhiteSpace: white,
  //     outputImageFormat: OutputImageFormat.png,
  //     squareCircleColor: primaryColor,
  //   );

  //   if (croppedBytes != null) {
  //     final File savedFile = await _saveImageToTempStorage(croppedBytes);

  //     return savedFile.path;
  //   }
  //   return null;
  // }

  // void openDocumentScanner(bool gallery) async {
  //   debugPrint("inside doc scanner");

  //   ref.read(cameraScreenSubtitle.notifier).update((state) => widget.cameraScreenDescription);
  //   ref.read(cameraScreenAppBarTitle.notifier).update((state) => widget.cameraScreenTitle);
  //   ref.read(reviewUploadedDocScreenTitle.notifier).update((state) => widget.reviewScreenTitle);

  //   // try {
  //   //   List<String>? imgPaths = await DocScan.scanDocument();

  //   //   if (!mounted) return;
  //   //   if (imgPaths != null && imgPaths.isEmpty) {
  //   //     return;
  //   //   }
  //   //   // setState(() {
  //   //   //   _imagePath = imgPaths[0];
  //   //   // });
  //   // } catch (e) {
  //   //   print(e);
  //   // }

  //   try {
  //     final List<String>? imagesPath = await CunningDocumentScanner.getPictures(
  //       noOfPages: 1,
  //       isGalleryImportAllowed: gallery,
  //     );

  //     debugPrint("imagePath: $imagesPath");

  //     if (imagesPath != null && imagesPath.isNotEmpty) {
  //       ref.watch(capturedFilePathProvider.notifier).update((state) => imagesPath.first);

  //       final bool? result = await context.pushNamed(
  //         AppRoutes.confirmUploadOrRetakeScreen2,
  //         extra: {
  //           'onChange': widget.onChange,
  //           'documentCode': widget.documentCode,
  //           'documentSide': widget.documentSide,
  //         },
  //       );

  //       debugPrint("result: $result");

  //       if (result == true) {
  //         ref.watch(capturedFilePathProvider.notifier).update((state) => null);

  //         openDocumentScanner(true);
  //       }
  //     }
  //     setState(() {});
  //   } catch (e) {
  //     debugPrint("error in document scanner function : $e");
  //   }
  // }
}
