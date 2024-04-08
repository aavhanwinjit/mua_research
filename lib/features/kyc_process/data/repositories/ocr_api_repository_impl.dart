import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/request/scan_document_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/ocr_api_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OCRApiRepository)
class OCRApiRepositoryImpl implements OCRApiRepository {
  final ApiService apiService;

  OCRApiRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, ScanDocumentResponseModel>> scanDocument(ScanDocumentRequestModel request) async {
    try {
      final response = await apiService.scanDocument(request);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
