import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final otpProvider = StateProvider<String>((ref) => '');

final validateOTPResponseProvider = StateProvider<ValidateOtpResponseModel?>((ref) => null);
