import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/request/generate_pdf_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/response/generate_pdf_response_model.dart';
import 'package:ekyc/features/kyc_process/domain/repositories/generate_pdf_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class GeneratePdf implements UseCase<GeneratePdfResponseModel, GeneratePdfRequestModel> {
  final GeneratePdfRepository generatePdfRepository;
  GeneratePdf(this.generatePdfRepository);

  @override
  Future<Either<Failure, GeneratePdfResponseModel>> call(GeneratePdfRequestModel params) async {
    return await generatePdfRepository.generatePdf(params);
  }
}
