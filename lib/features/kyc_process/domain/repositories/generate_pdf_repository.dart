import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/request/generate_pdf_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/response/generate_pdf_response_model.dart';

abstract class GeneratePdfRepository {
  Future<Either<Failure, GeneratePdfResponseModel>> generatePdf(GeneratePdfRequestModel request);
}
