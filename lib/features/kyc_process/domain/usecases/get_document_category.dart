import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/request/get_document_category_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetDocumentCategory implements UseCase<GetDocumentCategoryResponseModel, GetDocumentCategoryRequestModel> {
  final MasterDataRepository masterDataRepository;
  GetDocumentCategory(this.masterDataRepository);

  @override
  Future<Either<Failure, GetDocumentCategoryResponseModel>> call(GetDocumentCategoryRequestModel params) async {
    return await masterDataRepository.getDocumentCategory(params);
  }
}
