import 'package:flutter_riverpod/flutter_riverpod.dart';

final nicCardFrontFilePathProvider = StateProvider<String?>((ref) => null);
final nicCardBackFilePathProvider = StateProvider<String?>((ref) => null);

final passportFrontFilePathProvider = StateProvider<String?>((ref) => null);
final passportBackFilePathProvider = StateProvider<String?>((ref) => null);

final ocrLoadingProvider = StateProvider<bool>((ref) => false);

final extractedFirstNameProvider = StateProvider<String?>((ref) => null);
final extractedSurNameProvider = StateProvider<String?>((ref) => null);
final extractedNICIDNumberProvider = StateProvider<String?>((ref) => null);

final idDocsTypesListLoading = StateProvider<bool>((ref) => false);