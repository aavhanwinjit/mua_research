import 'package:ekyc/features/login_otp/data/models/change_mpin/response/change_mpin_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final otpProvider = StateProvider<String>((ref) => '');

final otpScreenLoadingProvider = StateProvider<bool>((ref) => false);

final validateOTPResponseProvider = StateProvider<ValidateOtpResponseModel?>((ref) => null);

final userLoggedInProvider = StateProvider<bool>((ref) => false);

final changeMPINResponseProvider =
    StateProvider<ChangeMPINResponseModel?>((ref) => null);
