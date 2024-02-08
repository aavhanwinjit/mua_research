import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ekyc/core/errors/failure.dart';
import 'package:ekyc/core/network/services/api_service.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:ekyc/features/splash_screen/domain/repositories/splash_screen_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SplashScreenRepository)
class SplashScreenRepositoryImpl implements SplashScreenRepository {
  final ApiService apiService;

  SplashScreenRepositoryImpl({required this.apiService});

  @override
  Future<Either<Failure, LaunchDetailsResponse>> launchDetails(
    LaunchDetailsRequest loginRequest,
  ) async {
    try {
      final response = await apiService.launchDetails(loginRequest);

      // final response = LaunchDetailsResponse.fromJson(LaunchDetailsResponseMocked.jsonResponse);

      return Right(response);
    } on DioException catch (e) {
      return Left(ServerFailure(e));
    }
  }
}
