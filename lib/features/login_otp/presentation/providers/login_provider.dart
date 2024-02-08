import 'package:ekyc/features/login_otp/data/models/resend_otp/response/resend_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final phoneNumberProvider = StateProvider<String>((ref) => '');

final verifyMobileNumberProvider = StateProvider<VerifyMobileNumberResponseModel?>((ref) => null);

final resendOTPProvider = StateProvider<ResendOtpResponseModel?>((ref) => null);

final refCodeProvider = StateProvider<String?>((ref) => null);

final tokenProvider = StateProvider<String?>((ref) => null);
