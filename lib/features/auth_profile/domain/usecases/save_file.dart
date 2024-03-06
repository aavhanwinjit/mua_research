import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/request/save_file_request_model.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/auth_profile/domain/repositories/save_file_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SaveFile implements UseCase<SaveFileResponseModel, SaveFileRequestModel> {
  final SaveFileRepository saveFileRepository;
  SaveFile(this.saveFileRepository);

  @override
  Future<Either<Failure, SaveFileResponseModel>> call(SaveFileRequestModel params) async {
    return await saveFileRepository.saveFile(params);
  }
}
