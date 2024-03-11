import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/signature/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/signature/data/models/save_signature/request/save_signature_request_model.dart';
import 'package:ekyc/features/signature/domain/repositories/save_signature_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveSignature implements UseCase<SaveFileResponseModel, SaveSignatureRequestModel> {
  final SaveSignatureRepository saveSignatureRepository;
  SaveSignature(this.saveSignatureRepository);

  @override
  Future<Either<Failure, SaveFileResponseModel>> call(SaveSignatureRequestModel params) async {
    return await saveSignatureRepository.saveSignature(params);
  }
}
