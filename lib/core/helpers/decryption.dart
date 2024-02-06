import 'dart:typed_data';

import 'package:pointycastle/export.dart';

class Decryption {
  static Uint8List decryptData(Uint8List key, Uint8List iv, Uint8List cipherText) {
    assert([128, 192, 256].contains(key.length * 8));
    assert(128 == iv.length * 8);
    assert(
        cipherText.length % 16 == 0); // Ensure the length is a multiple of 16

    // Create a CBC block cipher with AES, and initialize with key and IV
    final cbc = CBCBlockCipher(AESEngine())
      ..init(false, ParametersWithIV(KeyParameter(key), iv)); // false=decrypt

    // Decrypt the cipherText block-by-block
    final paddedPlainText = Uint8List(cipherText.length); // allocate space

    print(cipherText.length);

    var offset = 0;
    while (offset < cipherText.length) {
      offset += cbc.processBlock(cipherText, offset, paddedPlainText, offset);
    }
    assert(offset == cipherText.length);

    // Remove PKCS7 padding
    final lastByte = paddedPlainText[paddedPlainText.length - 1];
    final padLength = lastByte.toInt();
    return paddedPlainText.sublist(0, paddedPlainText.length - padLength);
  }
}
