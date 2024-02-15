import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/request/resend_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/response/resend_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/request/validate_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/request/verify_mobile_number_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final ApiService apiService;

  AuthRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, VerifyMobileNumberResponseModel>> verifyMobileNumber(
      VerifyMobileNumberRequestModel request) async {
    try {
      final response = await apiService.verifyMobileNumber(request);

      // final response = VerifyMobileNumberResponseModel.fromJson(VerifyMobileNumberResponseMocked.jsonResponse);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, ValidateOtpResponseModel>> validateOTP(ValidateOtpRequestModel request) async {
    try {
      final response = await apiService.validateOTP(request);

      // final response = ValidateOtpResponseModel.fromJson(ValidateOTPResponseMocked.jsonResponse);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, ResendOtpResponseModel>> resendOTP(
    ResendOtpRequestModel request,
    String token,
    String sessionId,
  ) async {
    try {
      final response = await apiService.resendOTP(token, sessionId, request);

      // final response = ResendOtpResponseModel.fromJson(ResendOTPResponseMocked.jsonResponse);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}