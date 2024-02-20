import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/request/login_by_fp_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginByFP implements UseCase<LoginByFpResponseModel, LoginByFpRequestModel> {
  final MPINRepository mpinRepository;
  LoginByFP(this.mpinRepository);

  @override
  Future<Either<Failure, LoginByFpResponseModel>> call(
    LoginByFpRequestModel params, [
    String? token,
    String? sessionId,
  ]) async {
    return await mpinRepository.loginByFP(params);
  }
}
