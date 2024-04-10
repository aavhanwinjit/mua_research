import 'package:flutter_riverpod/flutter_riverpod.dart';

final applicationListLoadingProvider = StateProvider<bool>((ref) => false);

final applicationListErrorProvider = StateProvider<bool>((ref) => false);

