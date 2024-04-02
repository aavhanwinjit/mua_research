import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveIdentityDetails implements UseCase<SaveIdentityDetailsResponseModel, SaveIdentityDetailsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SaveIdentityDetails(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, SaveIdentityDetailsResponseModel>> call(SaveIdentityDetailsRequestModel params) async {
    return await saveDocumentInfoRepository.saveIdentityDetails(params);
  }
}
