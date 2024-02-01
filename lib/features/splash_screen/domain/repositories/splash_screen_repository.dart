import 'package:dartz/dartz.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';

abstract class SplashScreenRepository {
  Future<Either<Failure, LaunchDetailsResponse>> launchDetails(LaunchDetailsRequest registrationRequest);
}
