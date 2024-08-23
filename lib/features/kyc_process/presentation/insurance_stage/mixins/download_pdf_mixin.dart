import 'dart:convert';
import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/request/generate_pdf_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/response/generate_pdf_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/usecases/generate_pdf.dart';
import 'package:ekyc/features/kyc_process/presentation/insurance_stage/providers/insurance_stage_screen_providers.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

mixin DownloadPdfMixin {
  Future<void> generatePdf({
    required BuildContext context,
    required WidgetRef ref,
  }) async {
    final bool loading = ref.watch(pdfLoadingProvider);
    if (loading) return;

    final selectedApplication = ref.watch(selectedApplicationProvider);

    GeneratePdfRequestModel request = GeneratePdfRequestModel(id: selectedApplication?.agentApplicationId);

    ref.watch(pdfLoadingProvider.notifier).update((state) => true);

    final response = await getIt<GeneratePdf>().call(request);

    response.fold(
      (failure) {
        debugPrint("failure: $failure");
        ref.watch(pdfLoadingProvider.notifier).update((state) => false);

        context.showErrorSnackBar(message: Strings.globalErrorGenericMessageOne);
      },
      (GeneratePdfResponseModel success) async {
        if (success.status?.isSuccess == true) {
          // onSuccess
          if (success.body?.responseBody != null) {
            await downloadPdf(
              context,
              pdfBase64: success.body?.responseBody ?? "",
              ref: ref,
            );

            // ref.watch(pdfLoadingProvider.notifier).update((state) => false);
          }
        } else {
          ref.watch(pdfLoadingProvider.notifier).update((state) => false);

          context.showErrorSnackBar(
            message: success.status?.message ?? Strings.globalErrorGenericMessageOne,
          );
        }
      },
    );
  }

  Future<void> downloadPdf(BuildContext context, {required String pdfBase64, required WidgetRef ref}) async {
    try {
      List<int> fileBytes = base64Decode(pdfBase64);

      String setFileName = "${DateTime.now().toString()}.pdf".replaceAll(" ", "_");

      Directory? downloadsDirectory =
          Platform.isAndroid ? await getExternalStorageDirectory() : await getApplicationDocumentsDirectory();

      // Create the downloads directory if it doesn't exist
      String downloadsPath = '${downloadsDirectory?.path}/Downloads';
      await Directory(downloadsPath).create(recursive: true);

      // Save the file
      File file = await File('$downloadsPath/$setFileName').writeAsBytes(fileBytes);

      debugPrint('File saved to: ${file.path}');

      ref.watch(pdfLoadingProvider.notifier).update((state) => false);

      context.showSnackBarDownload(
        message: "File Downloaded",
        action: SnackBarAction(
          label: 'View now',
          disabledTextColor: Colors.white,
          textColor: white,
          onPressed: () {
            OpenFile.open(file.path);
          },
        ),
      );
    } catch (e) {
      ref.watch(pdfLoadingProvider.notifier).update((state) => false);
    }
  }
}
