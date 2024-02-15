import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/request/resend_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/response/resend_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/request/validate_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/request/verify_mobile_number_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, VerifyMobileNumberResponseModel>> verifyMobileNumber(VerifyMobileNumberRequestModel request);

  Future<Either<Failure, ValidateOtpResponseModel>> validateOTP(ValidateOtpRequestModel request);

  Future<Either<Failure, ResendOtpResponseModel>> resendOTP(
    ResendOtpRequestModel request,
    String token,
    String sessionId,
  );
}