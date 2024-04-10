import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/request/add_customer_information_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/response/add_customer_information_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/add_customer_info_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AddCustomerInfoRepository)
class KycTypesRepositoryImpl implements AddCustomerInfoRepository {
  final ApiService apiService;

  KycTypesRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, AddCustomerInformationResponseModel>> addCustomerInformation(
      AddCustomerInformationRequestModel request) async {
    try {
      final response = await apiService.addCustomerInformation(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
