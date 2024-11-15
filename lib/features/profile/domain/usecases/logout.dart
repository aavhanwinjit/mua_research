import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
import 'package:ekyc/features/profile/domain/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class Logout implements UseCase<LogoutResponseModel, Null> {
  final ProfileRepository profileRepository;
  Logout(this.profileRepository);

  @override
  Future<Either<Failure, LogoutResponseModel>> call(Null params) async {
    return await profileRepository.logout();
  }
}
