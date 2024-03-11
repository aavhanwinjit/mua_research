import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/request/verify_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/response/verify_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class VerifyMPIN implements UseCase<VerifyMPINResponseModel, VerifyMPINRequestModel> {
  final MPINRepository mpinRepository;
  VerifyMPIN(this.mpinRepository);

  @override
  Future<Either<Failure, VerifyMPINResponseModel>> call(VerifyMPINRequestModel params) async {
    return await mpinRepository.verifyMPIN(params);
  }
}
