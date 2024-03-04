import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, LogoutResponseModel>> logout(String token, String sessionId);

  Future<Either<Failure, LogoutResponseModel>> deRegisterFingerprint(String token, String sessionId);

  Future<Either<Failure, LogoutResponseModel>> getAgentDetails(String token, String sessionId);
}
