import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
import 'package:ekyc/features/profile/domain/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeRegisterFingerprint implements UseCase<LogoutResponseModel, Null> {
  final ProfileRepository profileRepository;
  DeRegisterFingerprint(this.profileRepository);

  @override
  Future<Either<Failure, LogoutResponseModel>> call(
    Null params, [
    String? token,
    String? sessionId,
  ]) async {
    return await profileRepository.deRegisterFingerprint(token!, sessionId!);
  }
}
