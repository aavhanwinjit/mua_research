import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetAgentMPIN implements UseCase<SetAgentMpinResponseModel, SetAgentMpinRequestModel> {
  final MPINRepository mpinRepository;
  SetAgentMPIN(this.mpinRepository);

  @override
  Future<Either<Failure, SetAgentMpinResponseModel>> call(SetAgentMpinRequestModel params) async {
    return await mpinRepository.setAgentMPIN(params);
  }
}
