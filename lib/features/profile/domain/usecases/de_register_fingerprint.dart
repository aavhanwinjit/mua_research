import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/profile/data/models/de_register_fingerprint/request/de_register_fingerprint_response_model.dart';
import 'package:ekyc/features/profile/domain/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DeRegisterFingerprint implements UseCase<DeRegisterFingerprintResponseModel, Null> {
  final ProfileRepository profileRepository;
  DeRegisterFingerprint(this.profileRepository);

  @override
  Future<Either<Failure, DeRegisterFingerprintResponseModel>> call(Null params) async {
    return await profileRepository.deRegisterFingerprint();
  }
}
