import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/request/save_address_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveAddressDetails implements UseCase<SaveIdentityDetailsResponseModel, SaveAddressDetailsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SaveAddressDetails(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, SaveIdentityDetailsResponseModel>> call(SaveAddressDetailsRequestModel params) async {
    return await saveDocumentInfoRepository.saveAddressDetails(params);
  }
}
