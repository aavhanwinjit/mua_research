import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_fingerprint/response/set_fingerprint_response_model.dart';
import 'package:ekyc/features/mpin_face_id/domain/repositories/mpin_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SetFingerPrint implements UseCase<SetFingerprintResponseModel, Null> {
  final MPINRepository mpinRepository;
  SetFingerPrint(this.mpinRepository);

  @override
  Future<Either<Failure, SetFingerprintResponseModel>> call(Null params) async {
    return await mpinRepository.setFingerPrint();
  }
}
