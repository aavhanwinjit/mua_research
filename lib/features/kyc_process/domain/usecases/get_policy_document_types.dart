import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/master_data_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GetPolicyDocumentTypes implements UseCase<GetPorDocumentTypesResponseModel, Null> {
  final MasterDataRepository masterDataRepository;
  GetPolicyDocumentTypes(this.masterDataRepository);

  @override
  Future<Either<Failure, GetPorDocumentTypesResponseModel>> call(Null params) async {
    return await masterDataRepository.getPolicyDocumentTypes();
  }
}
