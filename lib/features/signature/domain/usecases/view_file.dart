import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/signature/data/models/view_file/request/view_file_request_model.dart';
import 'package:ekyc/features/signature/data/models/view_file/response/view_file_response_model.dart';
import 'package:ekyc/features/signature/domain/repositories/view_file_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ViewFile implements UseCase<ViewFileResponseModel, ViewFileRequestModel> {
  final ViewFileRepository profileRepository;
  ViewFile(this.profileRepository);

  @override
  Future<Either<Failure, ViewFileResponseModel>> call(ViewFileRequestModel params) async {
    return await profileRepository.viewFile(params);
  }
}
