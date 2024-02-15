import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
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
  Future<Either<Failure, LoginbyMpinResponseModel>> loginByMPIN(LoginbyMpinRequestModel request) async {
    try {
      final response = await apiService.loginByMpin(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
