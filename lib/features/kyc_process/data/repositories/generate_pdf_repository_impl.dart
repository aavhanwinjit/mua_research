import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/request/generate_pdf_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/response/generate_pdf_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/generate_pdf_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GeneratePdfRepository)
class GeneratePdfRepositoryImpl implements GeneratePdfRepository {
  final ApiService apiService;

  GeneratePdfRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, GeneratePdfResponseModel>> generatePdf(GeneratePdfRequestModel request) async {
    try {
      final response = await apiService.generatePdf(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
