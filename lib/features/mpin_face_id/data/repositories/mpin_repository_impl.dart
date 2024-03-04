import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/request/login_by_fp_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/request/login_by_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/response/login_by_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: MPINRepository)
class MPINRepositoryImpl implements MPINRepository {
  final ApiService apiService;

  MPINRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, SetAgentMpinResponseModel>> setAgentMPIN(SetAgentMpinRequestModel request) async {
    try {
      final response = await apiService.setAgentMPIN(request);

      // final response = SetAgentMpinResponseModel.fromJson(SetAgentMPINResponseMocked.jsonResponse);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, LoginbyMpinResponseModel>> loginByMPIN(
      LoginbyMpinRequestModel request, String authToken, String sessionId) async {
    try {
      final response = await apiService.loginByMpin(request);
      // final response = await apiService.loginByMpin(authToken, sessionId, request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, LoginByFpResponseModel>> loginByFP(LoginByFpRequestModel request) async {
    try {
      final response = await apiService.loginByFP(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }

  @override
  Future<Either<Failure, LoginByFpResponseModel>> setFingerPrint(String token) async {
    try {
      final response = await apiService.setFingerPrint(token);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
