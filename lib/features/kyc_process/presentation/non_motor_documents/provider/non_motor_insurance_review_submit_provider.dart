import 'package:flutter_riverpod/flutter_riverpod.dart';

final nonMotorInsuranceReviewConfirmationProvider =
    StateProvider<bool>((ref) => false);

final saveNonMotorInsuranceProofFileLoading =
    StateProvider<bool>((ref) => false);
