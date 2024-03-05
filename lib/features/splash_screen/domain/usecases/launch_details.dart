import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/usecases/usecase.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:ekyc/features/splash_screen/domain/repositories/splash_screen_repository.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LaunchDetails implements UseCase<LaunchDetailsResponse, LaunchDetailsRequest> {
  final SplashScreenRepository splashScreenRepository;
  LaunchDetails(this.splashScreenRepository);

  @override
  Future<Either<Failure, LaunchDetailsResponse>> call(LaunchDetailsRequest params) async {
    return await splashScreenRepository.launchDetails(params);
  }
}
