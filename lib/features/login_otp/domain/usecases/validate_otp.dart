import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/request/validate_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ValidateOTP implements UseCase<ValidateOtpResponseModel, ValidateOtpRequestModel> {
  final AuthRepository authRepository;
  ValidateOTP(this.authRepository);

  @override
  Future<Either<Failure, ValidateOtpResponseModel>> call(
    ValidateOtpRequestModel params, [
    String? token,
    String? sessionId,
  ]) async {
    return await authRepository.validateOTP(params);
  }
}
