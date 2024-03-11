import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/request/get_agent_applications_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';

abstract class AgentApplicationsRepository {
  Future<Either<Failure, GetAgentApplicationsResponseModel>> getAgentApplications(
      GetAgentApplicationsRequestModel request);
}
