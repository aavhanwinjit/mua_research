import 'package:flutter_riverpod/flutter_riverpod.dart';

final confirmationProvider = StateProvider<bool>((ref) => false);

final policyDocFilePathProvider = StateProvider<String?>((ref) => null);
