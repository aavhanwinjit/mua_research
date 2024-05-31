import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetIdentityDocumentTypes implements UseCase<GetIdentityDocumentTypesResponseModel, Null> {
  final MasterDataRepository masterDataRepository;
  GetIdentityDocumentTypes(this.masterDataRepository);

  @override
  Future<Either<Failure, GetIdentityDocumentTypesResponseModel>> call(Null params) async {
    return await masterDataRepository.getIdentityDocumentTypes();
  }
}
