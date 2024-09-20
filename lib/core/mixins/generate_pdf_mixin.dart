import 'dart:convert';
import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/date_time_formatter.dart';
import 'package:ekyc/core/helpers/progress_dialog_helper.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/presentation/providers/get_agent_details_provider.dart';
import 'package:ekyc/features/signature/data/models/view_file/request/view_file_request_model.dart';
import 'package:ekyc/features/signature/data/models/view_file/response/view_file_response_model.dart';
import 'package:ekyc/features/signature/domain/usecases/view_file.dart';
import 'package:ekyc/features/signature/presentation/providers/signature_base64_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
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
      await getSignature(context: ctx, ref: ref);

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
                      pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.end,
                        children: [
                          pw.Image(headerImage, width: 100),
                        ],
                      ),
                      pw.SizedBox(height: 10),
                      pw.Image(image, height: MediaQuery.of(ctx).size.height * 0.45),
                      pw.Spacer(),
                      _agentDetailsWidget(ref),
                    ],
                  ),
                  pw.Watermark(child: pw.Image(watermarkImage)),
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
    debugPrint("inside agentDetailsWidget");

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
            Strings.certifiedByString,
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
                        title: Strings.fullName,
                        value: "${agentDetails?.agentName ?? ""} ${agentDetails?.lastName ?? ""}"),
                    pw.SizedBox(height: 32),
                    _agentDetailsItem(title: Strings.jobTitle, value: agentDetails?.designation ?? ""),
                  ],
                ),
              ),
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    _agentDetailsItem(title: Strings.address, value: agentDetails?.address ?? ""),
                    pw.SizedBox(height: 32),
                    _agentDetailsItem(
                      title: Strings.dateTime,
                      value: DateTimeFormatter.getpdfDateTime(DateTime.now()),
                    ),
                  ],
                ),
              ),
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                  children: [
                    _agentDetailsItem(title: Strings.globalEmail, value: agentDetails?.emailId ?? ""),
                    pw.SizedBox(height: 32),
                    _agentSignatureWidget(ref),
                  ],
                ),
              ),
            ],
          ),
          pw.SizedBox(height: 16),
          pw.Text(
            Strings.automaticallyGeneratedString,
            style: pw.TextStyle(
              color: PdfColor.fromHex("5E5E5E"),
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  pw.Widget _agentSignatureWidget(WidgetRef ref) {
    String? signatureBase64 = ref.watch(signatureBase64Provider);

    final Uint8List bytes = base64Decode(signatureBase64 ?? "");

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          Strings.signature,
          style: pw.TextStyle(
            fontSize: 12,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        if (signatureBase64 != null) ...[
          pw.Image(
            pw.MemoryImage(bytes),
            width: 20,
          ),
        ],
      ],
    );
  }

  pw.Widget _agentDetailsItem({required String title, required String value}) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          title,
          style: const pw.TextStyle(
            fontSize: 12,
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

  Future<void> getSignature({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    try {
      ProgressDialog.showProgressDialog(context);

      ref.watch(signatureBase64Provider.notifier).update((state) => null);

      final agentSignaturePath = ref.watch(agentSignaturePathProvider);

      final ViewFileRequestModel request = ViewFileRequestModel(
        fileName: agentSignaturePath ?? "",
        isImage: false,
      );

      final response = await getIt<ViewFile>().call(request);

      response.fold(
        (failure) {
          debugPrint("failure: $failure");
          context.pop();
          context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
        },
        (ViewFileResponseModel success) {
          context.pop();
          if (success.status?.isSuccess == true) {
            ref.watch(signatureBase64Provider.notifier).update((state) => success.body?.responseBody);
          } else {
            context.showErrorSnackBar(
              message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
            );
          }
        },
      );
    } catch (error) {
      context.pop();
      debugPrint(error.toString());
    }
  }
}
