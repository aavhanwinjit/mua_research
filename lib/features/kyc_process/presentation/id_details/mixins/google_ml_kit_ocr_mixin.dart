import 'package:ekyc/core/app_export.dart';
import 'package:ekyc/core/utils/extensions/context_extensions.dart';
import 'package:ekyc/features/kyc_process/presentation/id_details/providers/id_details_screen_provider.dart';
import 'package:ekyc/features/kyc_process/presentation/providers/kyc_process_common_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';

mixin GoogleMLKitOCRMixin {
  final TextRecognizer _textRecognizer = TextRecognizer();

  List<String> firstNameKeySet = [
    "First Name",
    "First",
    "First Na",
    "rst Name",
    "Fir Name",
    "Fst Name",
    "irst Name",
    "Frst Name",
    "t Name",
    "Fot Name",
    "t Nae",
    "st Name",
    "Prst Name",
    "Rest Name",
    "First Nane",
  ];

  List<String> surNameKeySet = [
    "Surname",
    "Sumame",
    "Sum",
    "Sur",
    "Surnae",
    "Surnamne",
    "Surnamę",
  ];

  Future<void> performNICCardOCR({
    required WidgetRef ref,
    required BuildContext context,
    required VoidCallback onSuccess,
  }) async {
    final selectedApplication = ref.watch(selectedApplicationProvider);

    if (selectedApplication?.nationality == NationalityType.Mauritian.toString().split('.').last) {
      final nicCardFrontSide = ref.watch(nicCardFrontFilePathProvider);

      if (nicCardFrontSide == null) {
        context.showErrorSnackBar(message: Strings.uploadBothDocuments);
        return;
      }

      final inputImage = InputImage.fromFilePath(nicCardFrontSide);

      final bool loading = ref.watch(ocrLoadingProvider);

      if (loading) return;

      ref.watch(ocrLoadingProvider.notifier).update((state) => true);
      
      ref.watch(extractedFirstNameProvider.notifier).update((state) => null);
      ref.watch(extractedSurNameProvider.notifier).update((state) => null);
      ref.watch(extractedNICIDNumberProvider.notifier).update((state) => null);

      final recognizedText = await _textRecognizer.processImage(inputImage);

      debugPrint("RecognizedText.text: ${recognizedText.text}");
      debugPrint("RecognizedText.blocks: ${recognizedText.blocks}");

      final String? firstName = _extractStringValue(recognizedText, firstNameKeySet);
      debugPrint("First Name: $firstName");

      final String? surName = _extractStringValue(recognizedText, surNameKeySet);
      debugPrint("Surname: $surName");

      final String? idNumber = _extractNICIDNumber(recognizedText);
      debugPrint("idNumber: $idNumber");

      ref.watch(extractedFirstNameProvider.notifier).update((state) => firstName);
      ref.watch(extractedSurNameProvider.notifier).update((state) => surName);
      ref.watch(extractedNICIDNumberProvider.notifier).update((state) => idNumber);

      ref.watch(ocrLoadingProvider.notifier).update((state) => false);

      onSuccess.call();
    }
  }

  String? _extractNICIDNumber(RecognizedText visionText) {
    final List<String> lines = visionText.text.split("\n");
    debugPrint("Lines: $lines");

    RegExp regex = RegExp(r'^[A-Z].{13}$');

    String firstGuess = lines.firstWhere(
      (element) => regex.hasMatch(element),
      orElse: () => "",
    );

    if (firstGuess.isNotEmpty) {
      if (firstGuess[1] == "O") {
        firstGuess = firstGuess.replaceRange(1, 2, '0');
      }
    }

    RegExp regex2 = RegExp(r'^[A-Z]\d{12}[A-Z0-9]$');

    if (regex2.hasMatch(firstGuess)) {
      return firstGuess;
    }

    debugPrint("No ID Number available");
    return null;
  }

  String? _extractStringValue(RecognizedText visionText, List<String> keyWordsList) {
    final List<String> lines = visionText.text.split("\n");
    debugPrint("Lines: $lines");

    for (String keyword in keyWordsList) {
      final String value = lines.firstWhere((line) => line == keyword, orElse: () => "");

      if (value.isNotEmpty) {
        final int indexOfValue = lines.indexOf(value);

        if (indexOfValue < lines.length - 1) {
          final String extractedValue = lines[indexOfValue + 1];

          return extractedValue;
        }
      }
    }
    debugPrint("No matching value available");
    return null;
  }
}
