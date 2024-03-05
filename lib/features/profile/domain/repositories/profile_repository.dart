import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/profile/data/models/de_register_fingerprint/request/de_register_fingerprint_response_model.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';

abstract class ProfileRepository {
  Future<Either<Failure, LogoutResponseModel>> logout();

  Future<Either<Failure, DeRegisterFingerprintResponseModel>> deRegisterFingerprint();

  Future<Either<Failure, GetAgentDetailsResponseModel>> getAgentDetails();
}
