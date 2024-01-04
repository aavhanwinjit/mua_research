import 'package:flutter_riverpod/flutter_riverpod.dart';

final filterIncompleteIdProvider = StateProvider<bool>((ref) => false);
final filterIncompletePORProvider = StateProvider<bool>((ref) => false);
final filterIncompletePOAProvider = StateProvider<bool>((ref) => false);
final filterCompleteProvider = StateProvider<bool>((ref) => false);
