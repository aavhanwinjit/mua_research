import 'package:camera/camera.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/appbar_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/presentation/camera/providers/camera_screen_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends ConsumerStatefulWidget {
  const CameraScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CameraScreenState();
}

class _CameraScreenState extends ConsumerState<CameraScreen> {
  late List<CameraDescription> _cameras;

  CameraController? controller;

  @override
  void initState() {
    super.initState();
    _setupCamera();
  }

  void _setupCamera() async {
    _cameras = await availableCameras();

    controller = CameraController(_cameras[0], ResolutionPreset.max);

    controller!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            context.showErrorSnackBar(message: Strings.cameraPermissionRequired);
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null) {
      return Container();
    }
    if (!controller!.value.isInitialized) {
      return Scaffold(
        body: Container(),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: CameraPreview(
              controller!,
            ),
          ),
          _cameraStencil(),
          _buttonsWidget(),
        ],
      ),
    );
  }

  Widget _appBar() {
    return AppBarHelper.showCustomAppbar(
      context: context,
      title: Strings.uploadDocument,
      blueBackground: true,
    );
  }

  Widget _cameraStencil() {
    return Image.asset(
      ImageConstants.cameraStencil,
      width: double.infinity,
    );
  }

  Widget _buttonsWidget() {
    final description = ref.watch(cameraScreenSubtitle);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _appBar(),
        Spacer(),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: white,
            fontSize: 16.sp,
          ),
        ),
        SizedBox(height: 20.h),
        Container(
          height: 122.h,
          color: black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: onSetFlashModeButtonPressed,
                icon: ImageIcon(
                  AssetImage(ImageConstants.flashIcon),
                  color: white,
                ),
              ),
              _captureButton(),
              IconButton(
                onPressed: () {
                  pickImage();
                },
                icon: ImageIcon(
                  AssetImage(ImageConstants.galleryIcon),
                  color: white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _navigateToReviewImageScreen() {
    context.pushReplacementNamed(AppRoutes.confirmUploadOrRetakeScreen);
  }

  void onTakePictureButtonPressed() {
    takePicture().then((XFile? file) {
      if (mounted) {
        _navigateToReviewImageScreen();
        // setState(() {
        //   imageFile = file;
        //   videoController?.dispose();
        //   videoController = null;
        // });

        // if (file != null) {
        //   showInSnackBar('Picture saved to ${file.path}');
        // }
      }
    });
  }

  Future<XFile?> takePicture() async {
    final CameraController? cameraController = controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      context.showErrorSnackBar(message: 'Error: select a camera first.');
      return null;
    }

    if (cameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      final XFile file = await cameraController.takePicture();
      return file;
    } on CameraException catch (e) {
      _showCameraException(e);
      return null;
    }
  }

  void pickImage() async {
    XFile? result = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxHeight: 1500,
      maxWidth: 1500,
    );

    if (result != null) {
      _navigateToReviewImageScreen();
    }

    // final list = await result.readAsBytes();
    // ref.read(signatureProvider.notifier).update((state) => list);

    // context.pop();
  }

  void onSetFlashModeButtonPressed() {
    FlashMode mode = controller?.value.flashMode == FlashMode.off ? FlashMode.always : FlashMode.off;

    setFlashMode(mode).then((_) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  Future<void> setFlashMode(FlashMode mode) async {
    if (controller == null) {
      return;
    }

    try {
      await controller!.setFlashMode(mode);
    } on CameraException catch (e) {
      _showCameraException(e);
      rethrow;
    }
  }

  void _showCameraException(CameraException e) {
    debugPrint('Error: ${e.code}${e.description == null ? '' : '\nError Message: ${e.description}'}');
    context.showErrorSnackBar(message: 'Error: ${e.code}\n${e.description}');
  }

  Widget _captureButton() {
    return InkWell(
      onTap: onTakePictureButtonPressed,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: white,
          ),
        ),
        padding: EdgeInsets.all(4),
        height: 56.h,
        width: 56.h,
        child: Container(
          decoration: BoxDecoration(
            color: white,
            shape: BoxShape.circle,
            border: Border.all(
              color: white,
            ),
          ),
          padding: EdgeInsets.all(4),
          height: 56.h,
          width: 56.h,
        ),
      ),
    );
  }
}
