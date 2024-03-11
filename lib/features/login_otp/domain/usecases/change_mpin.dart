import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/login_otp/data/models/change_mpin/request/change_mpin_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/change_mpin/response/change_mpin_response_model.dart';
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ChangeMPIN
    implements UseCase<ChangeMPINResponseModel, ChangeMPINRequestModel> {
  final AuthRepository authRepository;
  ChangeMPIN(this.authRepository);

  @override
  Future<Either<Failure, ChangeMPINResponseModel>> call(
      ChangeMPINRequestModel params) async {
    return await authRepository.changeMPIN(params);
  }
}
