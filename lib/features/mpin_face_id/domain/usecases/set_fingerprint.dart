import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetFingerPrint implements UseCase<LoginByFpResponseModel, Null> {
  final MPINRepository mpinRepository;
  SetFingerPrint(this.mpinRepository);

  @override
  Future<Either<Failure, LoginByFpResponseModel>> call(
    Null params, [
    String? token,
    String? sessionId,
  ]) async {
    return await mpinRepository.setFingerPrint(token!);
  }
}
