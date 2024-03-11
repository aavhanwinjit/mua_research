import 'package:flutter_riverpod/flutter_riverpod.dart';

// FILTER STATUS PROVIDER
final filterIncompleteIdProvider = StateProvider<bool>((ref) => false);
final filterIncompletePORProvider = StateProvider<bool>((ref) => false);
final filterIncompletePOAProvider = StateProvider<bool>((ref) => false);
final filterCompleteProvider = StateProvider<bool>((ref) => false);
