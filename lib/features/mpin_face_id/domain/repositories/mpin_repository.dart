import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/request/login_by_fp_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/request/login_by_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/response/login_by_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_fingerprint/response/set_fingerprint_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/request/verify_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/response/verify_mpin_response_model.dart';

abstract class MPINRepository {
  Future<Either<Failure, SetAgentMpinResponseModel>> setAgentMPIN(SetAgentMpinRequestModel request);

  Future<Either<Failure, LoginbyMpinResponseModel>> loginByMPIN(LoginbyMpinRequestModel request);

  Future<Either<Failure, LoginByFpResponseModel>> loginByFP(LoginByFpRequestModel request);

  Future<Either<Failure, SetFingerprintResponseModel>> setFingerPrint();

  Future<Either<Failure, VerifyMPINResponseModel>> verifyMPIN(VerifyMPINRequestModel request);
}
