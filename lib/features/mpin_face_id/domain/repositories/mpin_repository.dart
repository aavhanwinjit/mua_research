import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';

abstract class MPINRepository {
  Future<Either<Failure, SetAgentMpinResponseModel>> setAgentMPIN(SetAgentMpinRequestModel request);
}
