import 'package:flutter_riverpod/flutter_riverpod.dart';

final motorInsuranceReviewConfirmationProvider =
    StateProvider<bool>((ref) => false);

final saveMotorInsuranceProofFileLoading = StateProvider<bool>((ref) => false);
