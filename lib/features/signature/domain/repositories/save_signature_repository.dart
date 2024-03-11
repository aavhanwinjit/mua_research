import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/signature/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/signature/data/models/save_signature/request/save_signature_request_model.dart';

abstract class SaveSignatureRepository {
  Future<Either<Failure, SaveFileResponseModel>> saveSignature(SaveSignatureRequestModel request);
}
