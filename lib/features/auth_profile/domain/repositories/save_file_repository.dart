import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/request/save_file_request_model.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/response/save_file_response_model.dart';

abstract class SaveFileRepository {
  Future<Either<Failure, SaveFileResponseModel>> saveFile(SaveFileRequestModel request, String token);
}
