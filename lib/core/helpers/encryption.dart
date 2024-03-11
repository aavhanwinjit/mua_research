import 'dart:typed_data';

import 'package:pointycastle/export.dart';

class Encryption {
  static Uint8List encryptAESCBCPKCS7(
      Uint8List key, Uint8List iv, Uint8List plainText) {
    assert([128, 192, 256].contains(key.length * 8));
    assert(128 == iv.length * 8);

    // Add PKCS7 padding to the plaintext
    int blockSize = 16;
    final padLength = blockSize - (plainText.length % blockSize);
    Uint8List paddedPlainText = Uint8List(plainText.length + padLength);
    paddedPlainText
      ..setAll(0, plainText)
      ..fillRange(plainText.length, paddedPlainText.length, padLength);

    // Create a CBC block cipher with AES, and initialize with key and IV
    final cbc = CBCBlockCipher(AESEngine())
      ..init(true, ParametersWithIV(KeyParameter(key), iv)); // true=encrypt

    // Encrypt the padded plaintext block-by-block
    final cipherText = Uint8List(paddedPlainText.length); // allocate space

    var offset = 0;
    while (offset < paddedPlainText.length) {
      offset += cbc.processBlock(paddedPlainText, offset, cipherText, offset);
    }

    return cipherText;
  }

}
