import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/request/add_customer_information_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/response/add_customer_information_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/add_customer_info_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AddCustomerInformation
    implements UseCase<AddCustomerInformationResponseModel, AddCustomerInformationRequestModel> {
  final AddCustomerInfoRepository addCustomerInfoRepository;
  AddCustomerInformation(this.addCustomerInfoRepository);

  @override
  Future<Either<Failure, AddCustomerInformationResponseModel>> call(AddCustomerInformationRequestModel params) async {
    return await addCustomerInfoRepository.addCustomerInformation(params);
  }
}
