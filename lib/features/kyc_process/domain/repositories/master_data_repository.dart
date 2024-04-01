import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/request/get_document_category_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';

abstract class MasterDataRepository {
  Future<Either<Failure, GetIdentityDocumentTypesResponseModel>> getIdentityDocumentTypes();

  Future<Either<Failure, GetDocumentCategoryResponseModel>> getDocumentCategory(
      GetDocumentCategoryRequestModel request);
}
