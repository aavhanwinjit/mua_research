import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/helpers/date_time_formatter.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multiple_image_camera/camera_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

mixin GeneratePdfMixin {
  Future<String?> generatePdf({
    required List<XFile>? pickedImageList,
    required List<MediaModel>? capturedImageList,
    required WidgetRef ref,
    required BuildContext ctx,
  }) async {
    try {
      final pdf = pw.Document();

      final img = await rootBundle.load(ImageConstants.pdfWatermark);
      final imageBytes = img.buffer.asUint8List();
      final watermarkImage = pw.MemoryImage(imageBytes);

      final headerImg = await rootBundle.load(ImageConstants.pngLogo);
      final headerImageBytes = headerImg.buffer.asUint8List();
      final headerImage = pw.MemoryImage(headerImageBytes);

      final List list = pickedImageList ?? capturedImageList as List;

      for (var element in list) {
        final index = list.indexOf(element);
        final image = pw.MemoryImage(
          File(pickedImageList != null ? element.path : element.file.path).readAsBytesSync(),
        );

        pdf.addPage(
          pw.Page(
            pageFormat: PdfPageFormat.a4,
            build: (pw.Context context) {
              return pw.Stack(
                fit: pw.StackFit.expand,
                children: [
                  pw.Column(
                    mainAxisAlignment:
                        index != list.length - 1 ? pw.MainAxisAlignment.center : pw.MainAxisAlignment.start,
                    children: [
                      pw.SizedBox(height: 50),
                      pw.Image(image, height: index == list.length - 1 ? MediaQuery.of(ctx).size.height * 0.5 : null),
                      if (index == list.length - 1) ...[
                        pw.Spacer(),
                        _agentDetailsWidget(ref),
                      ],
                    ],
                  ),
                  // pw.Center(
                  //   child: pw.Image(image),
                  // ),
                  pw.Watermark(child: pw.Image(watermarkImage)),
                  pw.Positioned(
                    top: 0,
                    right: 0,
                    child: pw.Image(headerImage, width: 100),
                  ),
                  // if (index == list.length - 1) ...[
                  //   pw.Positioned(
                  //     bottom: 0,
                  //     left: 0,
                  //     right: 0,
                  //     child: _agentDetailsWidget(ref),
                  //   ),
                  // ],
                ],
              );
            },
          ),
        );
      }

      final File? savedFile = await _saveImageToTempStorage(pdf);

      if (savedFile != null) {
        return savedFile.path;
      }
    } catch (error) {
      debugPrint(error.toString());
    }

    return null;
  }

  static Future<File?> _saveImageToTempStorage(pw.Document pdf) async {
    try {
      String? dir;
      if (Platform.isIOS) {
        dir = (await getApplicationDocumentsDirectory()).path;
      } else {
        dir = (await getExternalStorageDirectories())![0].path;
      }

      String dirPath = "$dir/generatedPdf";

      await Directory(dirPath).create(recursive: true);

      final currentTimeMillisecond = DateTime.now().millisecondsSinceEpoch.toString();

      File file =
          File("$dir/generatedPdf/${currentTimeMillisecond.substring(currentTimeMillisecond.length - 6)}_pdfFile.pdf");

      final Uint8List bytes = await pdf.save();

      await file.writeAsBytes(bytes);

      return file;
    } catch (e) {
      debugPrint(e.toString());
    }

    return null;
  }

  Future<void> deleteGeneratedPdfDirectory() async {
    try {
      String? dirPath;
      if (Platform.isIOS) {
        dirPath = (await getApplicationDocumentsDirectory()).path;
      } else {
        dirPath = (await getExternalStorageDirectories())![0].path;
      }

      final directory = Directory("$dirPath/generatedPdf");
      directory.deleteSync(recursive: true);
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  pw.Widget _agentDetailsWidget(WidgetRef ref) {
    final GetAgentDetailsResponseModel? getAgentDetailsResponse = ref.watch(agentDetailsResponseProvider);
    final GetAgentDetailsResponseBody? agentDetails = getAgentDetailsResponse?.body?.responseBody;

    return pw.Container(
      width: double.infinity,
      padding: const pw.EdgeInsets.all(16),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(
          color: PdfColor.fromHex("000000"),
          width: 1,
        ),
        borderRadius: pw.BorderRadius.circular(16),
        color: PdfColor.fromHex("FFFFFF"),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            "Certified true copy of the original",
            style: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
            ),
          ),
          pw.SizedBox(height: 16),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    _agentDetailsItem(
                        title: "Full Name", value: "${agentDetails?.agentName ?? ""} ${agentDetails?.lastName ?? ""}"),
                    pw.SizedBox(height: 32),
                    _agentDetailsItem(title: "Job Title", value: agentDetails?.designation ?? ""),
                  ],
                ),
              ),
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    _agentDetailsItem(title: "Address", value: agentDetails?.address ?? ""),
                    pw.SizedBox(height: 32),
                    _agentDetailsItem(
                      title: "Date & Time",
                      value: DateTimeFormatter.formatSignatureDate(DateTime.now()),
                    ),
                  ],
                ),
              ),
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    _agentDetailsItem(title: "Email", value: agentDetails?.emailId ?? ""),
                    pw.SizedBox(height: 32),
                    _agentDetailsItem(title: "Signature", value: agentDetails?.designation ?? ""),
                  ],
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 16),
          pw.Text(
            "[Automatically generated by MUA Mauritius Union Assurance Cy Ltd/Head office]",
            style: pw.TextStyle(
              color: PdfColor.fromHex("5E5E5E"),
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  _agentDetailsItem({required String title, required String value}) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          title,
          style: pw.TextStyle(
            fontSize: 12,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.Text(
          value,
          style: pw.TextStyle(
            fontWeight: pw.FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
