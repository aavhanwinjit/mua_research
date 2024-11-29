import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class CertReader {
  static ByteData? cert;

  static Future<void> initialize() async {
    cert = await rootBundle.load('assets/certificates/ssl_prod.crt');
  }

  static ByteData? get getCert => cert;

  static Future<HttpClient?> addSslPinning(Dio dio) async {
    // final bool sslPinningFlag = await getSSLPinningFlag();

    // if (sslPinningFlag == true) {
    debugPrint("inside add ssl pinning function");

    ByteData bytes = getCert!;

    // final httpClientAdapter = IOHttpClientAdapter(
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final SecurityContext scontext = SecurityContext();

        scontext.setTrustedCertificatesBytes(bytes.buffer.asUint8List());

        HttpClient client = HttpClient(context: scontext);

        client.badCertificateCallback = (X509Certificate cert, String host, int port) {
          return cert.pem == bytes.buffer.asUint8List().toString();
        };

        debugPrint("before returning dio client from ssl pinning function");

        return client;
      },
    );

    return null;
    // }
    // return null;
  }

  static Future<bool> getSSLPinningFlag() async {
    final bool sslPinning = await LocalDataHelper.getSSLPinning();
    return sslPinning;
  }
}
