import 'dart:convert';
import 'dart:io';

import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

mixin DownloadPdfMixin {
  String pdfBase64 =
      "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MDAxPiA8MDAwOD4gWzwwMDQ4PiA8MDA2NT4gPDAwNkM+IDwwMDZGPiA8MDAyMD4gPDAwNzc+IDwwMDcyPiA8MDA2ND4gXQplbmRiZnJhbmdlCmVuZGNtYXAKQ01hcE5hbWUgY3VycmVudGRpY3QgL0NNYXAgZGVmaW5lcmVzb3VyY2UgcG9wCmVuZAplbmQKCmVuZHN0cmVhbQplbmRvYmoKNiAwIG9iago8PCAvVHlwZSAvRm9udAovU3VidHlwZSAvVHlwZTAKL0Jhc2VGb250IC9UaW1lc05ld1JvbWFuUmVndWxhcgovRW5jb2RpbmcgL0lkZW50aXR5LUgKL0Rlc2NlbmRhbnRGb250cyBbMTQgMCBSXQovVG9Vbmljb2RlIDE1IDAgUj4+CmVuZG9iagoyIDAgb2JqCjw8Ci9UeXBlIC9QYWdlcwovS2lkcyAKWwo1IDAgUgpdCi9Db3VudCAxCi9Qcm9jU2V0IFsvUERGIC9UZXh0IC9JbWFnZUIgL0ltYWdlQ10KPj4KZW5kb2JqCnhyZWYKMCAxNwowMDAwMDAwMDAwIDY1NTM1IGYgCjAwMDAwMDAwMDkgMDAwMDAgbiAKMDAwMDAwNjYwOCAwMDAwMCBuIAowMDAwMDAwMTYzIDAwMDAwIG4gCjAwMDAwMDAyNTggMDAwMDAgbiAKMDAwMDAwMDM0NCAwMDAwMCBuIAowMDAwMDA2NDYyIDAwMDAwIG4gCjAwMDAwMDAyOTUgMDAwMDAgbiAKMDAwMDAwMDY1MCAwMDAwMCBuIAowMDAwMDAwOTcyIDAwMDAwIG4gCjAwMDAwMDA0NjQgMDAwMDAgbiAKMDAwMDAwMDYzMCAwMDAwMCBuIAowMDAwMDAwOTkxIDAwMDAwIG4gCjAwMDAwMDEyNTIgMDAwMDAgbiAKMDAwMDAwNTczNCAwMDAwMCBuIAowMDAwMDA1OTkwIDAwMDAwIG4gCjAwMDAwMDU3MTMgMDAwMDAgbiAKdHJhaWxlcgo8PAovU2l6ZSAxNwovSW5mbyAxIDAgUgovUm9vdCA3IDAgUgo+PgpzdGFydHhyZWYKNjcwNgolJUVPRgo=";

  Future<void> downloadPdf(BuildContext context) async {
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

    context.showSnackBarDownload(
      message: "FILE DOWNLOADED",
      action: SnackBarAction(
        label: 'View now',
        disabledTextColor: Colors.white,
        textColor: white,
        onPressed: () {
          OpenFile.open(file.path);
        },
      ),
    );
  }
}
