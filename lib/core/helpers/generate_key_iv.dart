import 'dart:convert';

class GenerateKeyIv {
  static String generate(
      String masterKey, int index, String sequence, int finalKeyLength) {
    try {
      String finalKey = '';

      masterKey = base64.encode(utf8.encode(masterKey));

      int totalLength = masterKey.length;
      int chunkSize = finalKeyLength ~/ 4;

      int tempChunkStartIndex = index;
      int tempChunkEndIndex = 0;

      List<String> tempKey = List<String>.filled(4, '');
      for (int step = 0; step < 4; step++) {
        tempChunkEndIndex = tempChunkStartIndex + chunkSize;
        if (tempChunkEndIndex < totalLength) {
          tempKey[step] =
              masterKey.substring(tempChunkStartIndex, tempChunkEndIndex);
          tempChunkStartIndex = tempChunkEndIndex;
        } else {
          tempKey[step] =
              masterKey.substring(tempChunkStartIndex, totalLength) +
                  masterKey.substring(0, tempChunkEndIndex - totalLength);
          tempChunkStartIndex = tempChunkEndIndex - totalLength;
        }
      }

      finalKey = reverseString(tempKey[int.parse(sequence[0])], 0) +
          tempKey[int.parse(sequence[1])] +
          reverseString(tempKey[int.parse(sequence[2])], 0) +
          tempKey[int.parse(sequence[3])];

      return finalKey;
    } catch (e) {
      throw Exception();
    }
  }

  static String reverseString(String input, int startIndex) {
    return String.fromCharCodes(input.runes.toList().reversed);
  }
}
