import 'package:flutter_riverpod/flutter_riverpod.dart';

final kycTypeListLoadingProvider = StateProvider<bool>((ref) => false);

final kycTypeListErrorProvider = StateProvider<bool>((ref) => false);
