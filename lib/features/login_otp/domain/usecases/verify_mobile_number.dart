import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/request/verify_mobile_number_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class VerifyMobileNumber implements UseCase<VerifyMobileNumberResponseModel, VerifyMobileNumberRequestModel> {
  final AuthRepository authRepository;
  VerifyMobileNumber(this.authRepository);

  @override
  Future<Either<Failure, VerifyMobileNumberResponseModel>> call(
    VerifyMobileNumberRequestModel params, [
    String? token,
    String? sessionId,
  ]) async {
    return await authRepository.verifyMobileNumber(params);
  }
}
