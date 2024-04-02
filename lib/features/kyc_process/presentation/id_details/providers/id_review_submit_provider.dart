import 'package:flutter_riverpod/flutter_riverpod.dart';

final confirmationProvider = StateProvider<bool>((ref) => false);

final saveIdentityDetailsLoading = StateProvider<bool>((ref) => false);
