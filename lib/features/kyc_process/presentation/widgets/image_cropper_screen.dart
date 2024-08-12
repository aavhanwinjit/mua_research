import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:crop_your_image/crop_your_image.dart';
import 'package:ekyc/core/app_export.dart';
import 'package:flutter/material.dart';

class CropImagePage extends StatefulWidget {
  final Uint8List imageBytes;
  final bool? landscape;
  const CropImagePage({super.key, required this.imageBytes, this.landscape = false});
  @override
  _CropImagePageState createState() => _CropImagePageState();
}

class _CropImagePageState extends State<CropImagePage> {
  final _controller = CropController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Crop Image',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () => _controller.crop(),
            tooltip: 'Crop',
            icon: const Icon(Icons.done, color: Colors.white),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(8),
              child: Crop(
                  image: widget.imageBytes,
                  controller: _controller,
                  // aspectRatio: widget.landscape == true ? 16 / 9 : 1,
                  onCropped: (cropped) async {
                    //  ProgressDialog.showProgressDialog(context);
                    // final image = await bytesToImage(cropped);
                    //  Navigator.of(context).pop();
                    Navigator.of(context).pop(cropped);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Future<ui.Image> bytesToImage(Uint8List imgBytes) async {
    ui.Codec codec = await ui.instantiateImageCodec(imgBytes);
    ui.FrameInfo frame = await codec.getNextFrame();
    return frame.image;
  }
}
