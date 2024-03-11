import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/signature/data/models/view_file/request/view_file_request_model.dart';
import 'package:ekyc/features/signature/data/models/view_file/response/view_file_response_model.dart';

abstract class ViewFileRepository {
  Future<Either<Failure, ViewFileResponseModel>> viewFile(ViewFileRequestModel request);
}
