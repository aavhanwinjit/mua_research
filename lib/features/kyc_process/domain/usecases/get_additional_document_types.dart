import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/get_additional_document_types/response/get_additional_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetAdditionalDocumentTypes implements UseCase<GetAdditionalDocumentTypesResponseModel, Null> {
  final MasterDataRepository masterDataRepository;
  GetAdditionalDocumentTypes(this.masterDataRepository);

  @override
  Future<Either<Failure, GetAdditionalDocumentTypesResponseModel>> call(Null params) async {
    return await masterDataRepository.getAdditionalDocTypes();
  }
}
