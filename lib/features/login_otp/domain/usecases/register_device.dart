import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/login_otp/data/models/regsiter_device/request/register_device_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/regsiter_device/response/register_device_response_model.dart';
import 'package:ekyc/features/login_otp/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RegisterDevice
    implements
        UseCase<RegisterDeviceResponseModel, RegisterDeviceRequestModel> {
  final AuthRepository authRepository;
  RegisterDevice(this.authRepository);

  @override
  Future<Either<Failure, RegisterDeviceResponseModel>> call(
      RegisterDeviceRequestModel params) async {
    return await authRepository.registerDevice(params);
  }
}
