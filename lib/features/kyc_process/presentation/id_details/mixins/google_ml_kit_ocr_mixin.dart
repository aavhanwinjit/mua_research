import 'dart:developer' as dev;

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

    if (selectedApplication?.nationality ==
        NationalityType.Mauritian.toString().split('.').last) {
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

      final String? firstName =
          _extractStringValue(recognizedText, firstNameKeySet);
      debugPrint("First Name: $firstName");

      final String? surName =
          _extractStringValue(recognizedText, surNameKeySet);
      debugPrint("Surname: $surName");

      final String? idNumber = _extractNICIDNumber(recognizedText);
      debugPrint("idNumber: $idNumber");

      ref
          .watch(extractedFirstNameProvider.notifier)
          .update((state) => firstName);
      ref.watch(extractedSurNameProvider.notifier).update((state) => surName);
      ref
          .watch(extractedNICIDNumberProvider.notifier)
          .update((state) => idNumber);

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

  String? _extractStringValue(
      RecognizedText visionText, List<String> keyWordsList) {
    final List<String> lines = visionText.text.split("\n");
    debugPrint("Lines: $lines");

    for (String keyword in keyWordsList) {
      final String value =
          lines.firstWhere((line) => line == keyword, orElse: () => "");

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

  Future<void> performPassportOCR({
    required WidgetRef ref,
    required BuildContext context,
    required VoidCallback onSuccess,
  }) async {
    final passportFile = ref.watch(nicCardFrontFilePathProvider);
    if (passportFile == null) {
      context.showErrorSnackBar(message: Strings.uploadBothDocuments);
      return;
    }
    final inputImage = InputImage.fromFilePath(passportFile);
    final bool loading = ref.watch(ocrLoadingProvider);

    if (loading) return;

    ref.watch(ocrLoadingProvider.notifier).update((state) => true);
    ref
        .watch(extractedPassportFirstNameProvider.notifier)
        .update((state) => null);
    ref
        .watch(extractedPassportSurNameProvider.notifier)
        .update((state) => null);
    ref.watch(extractedPassportNumberProvider.notifier).update((state) => null);

    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);
    String text = recognizedText.text;

    textRecognizer.close();

    List<String> textLines = text.split('\n');
    dev.log(textLines.toString());

    PassportDetails details = extractPassportDetails(textLines);

    // String passportNo = details.passportNumber;
    // String fullname = "${details.firstname} ${details.surname}";

    ref
        .watch(extractedFirstNameProvider.notifier)
        .update((state) => details.firstname);
    ref
        .watch(extractedSurNameProvider.notifier)
        .update((state) => details.surname);
    ref
        .watch(extractedNICIDNumberProvider.notifier)
        .update((state) => details.passportNumber);

    ref.watch(ocrLoadingProvider.notifier).update((state) => false);

    onSuccess.call();
  }

  PassportDetails extractPassportDetails(List<String> textLines) {
    // Define the regular expression pattern for a passport number
    RegExp passportNumberRegex =
        RegExp(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,9}$');

    List<String> firstNameKeySet = [
      "first name",
      "first",
      "first na",
      "rst name",
      "fir name",
      "fst name",
      "irst name",
      "frst name",
      "t name",
      "fot name",
      "t nae",
      "st name",
      "Prst name",
      "Rest name",
      "first nane",
      "given name",
      "nama /name",
      "mys"
    ];

    List<String> surNameKeySet = [
      "surname",
      "sumame",
      "sum",
      "sur",
      "surnae",
      "surnamne",
      "surnamę",
    ];

    String passportNumber = '';
    String firstname = '';
    String surname = '';

    // Flags to track whether the required information has been found
    bool foundPassportNumber = false;
    bool foundFirstname = false;
    bool foundSurname = false;
    bool isPakistaniPassport = false;
    // bool isKenyanPassport = false;

    // Iterate through each line of the OCR text
    for (int i = 0; i < textLines.length; i++) {
      String line = textLines[i].trim();

      // // Check if it's a Kenyan passport
      // if (line.toLowerCase().contains('republic of kenya')) {
      //   isKenyanPassport = true;
      // }

      // Check if it's a Pakistani passport
      if (line.toLowerCase().contains('islamic republic o') ||
          textLines[i].toLowerCase().contains('pakistan')) {
        isPakistaniPassport = true;
      }

      // Check if passport number has been found
      if (!foundPassportNumber && isPakistaniPassport) {
        for (int j = i + 1; j < textLines.length; j++) {
          List<String> lineWords = line.split(" ");
          for (var element in lineWords) {
            if (passportNumberRegex.hasMatch(element)) {
              // Extract passport number from the current line
              passportNumber = element;
              foundPassportNumber = true;
              break; // Exit loop once passport number is found
            }
          }
          if (foundPassportNumber && !foundFirstname && !foundSurname) {
            firstname = textLines[i - 1];
            surname = textLines[i + 1];
            foundFirstname = true;
            foundSurname = true;
          }
        }
      }

      // Check if passport number has been found
      if (!foundPassportNumber &&
          isPakistaniPassport == false &&
          passportNumberRegex.hasMatch(line)) {
        // Extract passport number from the current line
        passportNumber = line.trim();
        foundPassportNumber = true;
      }

      // Check if surname has been found
      if (!foundFirstname &&
          isPakistaniPassport == false &&
          surNameKeySet
              .any((keyword) => line.toLowerCase().contains(keyword))) {
        // Extract surname from the next line
        surname = textLines[i + 1].trim();
        foundSurname = true;
      }

      // Check if given name(s) has been found
      if (!foundFirstname &&
          isPakistaniPassport == false &&
          firstNameKeySet
              .any((keyword) => line.toLowerCase().contains(keyword))) {
        // Extract given name(s) from the next line
        List<String> nameParts = textLines[i + 1].split(',');
        firstname = nameParts.map((part) => part.trim()).join(' ');
        foundFirstname = true;
      }

      // Break loop if passport details have been found
      if (foundPassportNumber && foundFirstname && foundSurname) {
        break;
      }
    }

    return PassportDetails(
      passportNumber: passportNumber,
      firstname: firstname,
      surname: surname,
    );
  }
}

class PassportDetails {
  String passportNumber;
  String firstname;
  String surname;

  PassportDetails(
      {required this.passportNumber,
      required this.firstname,
      required this.surname});
}
