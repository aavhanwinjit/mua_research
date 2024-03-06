import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/profile/data/models/de_register_fingerprint/request/de_register_fingerprint_response_model.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
import 'package:ekyc/features/profile/domain/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ApiService apiService;

  ProfileRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, LogoutResponseModel>> logout() async {
    try {
      final response = await apiService.logout();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, DeRegisterFingerprintResponseModel>> deRegisterFingerprint() async {
    try {
      final response = await apiService.deRegisterFingerprint();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, GetAgentDetailsResponseModel>> getAgentDetails() async {
    try {
      final response = await apiService.getAgentDetails();

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
