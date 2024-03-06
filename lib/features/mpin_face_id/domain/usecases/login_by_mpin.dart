import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/request/login_by_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/response/login_by_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LoginByMpin implements UseCase<LoginbyMpinResponseModel, LoginbyMpinRequestModel> {
  final MPINRepository mpinRepository;
  LoginByMpin(this.mpinRepository);

  @override
  Future<Either<Failure, LoginbyMpinResponseModel>> call(LoginbyMpinRequestModel params) async {
    return await mpinRepository.loginByMPIN(params);
  }
}
