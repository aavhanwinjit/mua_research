import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/domain/repositories/profile_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAgentDetails implements UseCase<GetAgentDetailsResponseModel, Null> {
  final ProfileRepository profileRepository;
  GetAgentDetails(this.profileRepository);

  @override
  Future<Either<Failure, GetAgentDetailsResponseModel>> call(Null params) async {
    return await profileRepository.getAgentDetails();
  }
}
