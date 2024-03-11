import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/request/get_agent_applications_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/dashboard/domain/repositories/agent_applications_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAgentApplications implements UseCase<GetAgentApplicationsResponseModel, GetAgentApplicationsRequestModel> {
  final AgentApplicationsRepository agentApplicationsRepository;
  GetAgentApplications(this.agentApplicationsRepository);

  @override
  Future<Either<Failure, GetAgentApplicationsResponseModel>> call(GetAgentApplicationsRequestModel params) async {
    return await agentApplicationsRepository.getAgentApplications(params);
  }
}
