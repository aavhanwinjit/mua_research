import 'package:dio/dio.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  static const LAUNCH_DETAILS = "/AgentAPI/AppStarts/LaunchDetails";
  // static const REGISTRATION = "auth/createUser";
  // static const FORGOT_PASSOWRD = 'auth/forgotPassword';

  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(LAUNCH_DETAILS)
  Future<LaunchDetailsResponse> launchDetails(@Body() LaunchDetailsRequest loginRequest);

  // @POST(REGISTRATION)
  // Future<RegistrationResponse> registration(
  //   @Body() RegistrationRequest registrationRequest,
  // );
  // @POST(FORGOT_PASSOWRD)
  // Future<ForgotPasswordResponse> forgotPassword(
  //   @Body() ForgotPasswordRequest registrationRequest,
  // );
}
