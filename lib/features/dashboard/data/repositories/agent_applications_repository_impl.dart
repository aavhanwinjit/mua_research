import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/request/get_agent_applications_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/dashboard/domain/repositories/agent_applications_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AgentApplicationsRepository)
class AgentApplicationsRepositoryImpl implements AgentApplicationsRepository {
  final ApiService apiService;

  AgentApplicationsRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, GetAgentApplicationsResponseModel>> getAgentApplications(
      GetAgentApplicationsRequestModel request) async {
    try {
      final response = await apiService.getAgentApplications(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
