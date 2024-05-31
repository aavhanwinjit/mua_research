import 'package:flutter_riverpod/flutter_riverpod.dart';

final addreddScreenConfirmationProvider = StateProvider<bool>((ref) => false);

final saveAddressDetailsLoading = StateProvider<bool>((ref) => false);
