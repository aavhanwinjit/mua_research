import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/request/resend_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/response/resend_otp_response_model.dart';
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ResendOTP implements UseCase<ResendOtpResponseModel, ResendOtpRequestModel> {
  final AuthRepository authRepository;
  ResendOTP(this.authRepository);

  @override
  Future<Either<Failure, ResendOtpResponseModel>> call(
    ResendOtpRequestModel params, [
    String? token,
    String? sessionId,
  ]) async {
    return await authRepository.resendOTP(params, token!, sessionId!);
  }
}
