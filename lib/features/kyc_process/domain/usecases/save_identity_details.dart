import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/response/add_customer_information_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/save_document_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveIdentityDetails implements UseCase<AddCustomerInformationResponseModel, SaveIdentityDetailsRequestModel> {
  final SaveDocumentInfoRepository saveDocumentInfoRepository;
  SaveIdentityDetails(this.saveDocumentInfoRepository);

  @override
  Future<Either<Failure, AddCustomerInformationResponseModel>> call(SaveIdentityDetailsRequestModel params) async {
    return await saveDocumentInfoRepository.saveIdentityDetails(params);
  }
}
