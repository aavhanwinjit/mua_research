import 'package:dio/dio.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/request/save_file_request_model.dart';
import 'package:ekyc/features/auth_profile/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/request/resend_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/resend_otp/response/resend_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/request/validate_otp_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/request/verify_mobile_number_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/request/login_by_fp_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/request/login_by_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/response/login_by_mpin_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  static const LAUNCH_DETAILS = "/AgentAPI/AppStarts/LaunchDetails";
  static const VERIFY_MOBILE_NUMBER = "/AgentAPI/Registration/VerifyMobileNumber";
  static const VALIDATE_OTP = "/AgentAPI/Registration/ValidateAgentRegOTP";
  static const RESEND_OTP = "/AgentAPI/Login/ResendOTP";
  static const SAVE_FILE = "/AgentAPI/FileHandling/SaveFile";
  static const SET_AGENT_MPIN = "/AgentAPI/Registration/SetAgentMPIN";
  static const LOGIN_BY_MPIN = "/AgentAPI/Login/LoginByMPIN";
  static const LOGIN_BY_BIOMETRIC = "/AgentAPI/Login/LoginByFP";
  static const LOGOUT = "/AgentAPI/Login/Logout";

  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(LAUNCH_DETAILS)
  // @Headers(<String, dynamic>{
  //   'Content-Type': 'application/json',
  // })
  Future<LaunchDetailsResponse> launchDetails(@Body() LaunchDetailsRequest request);

  @POST(VERIFY_MOBILE_NUMBER)
  Future<VerifyMobileNumberResponseModel> verifyMobileNumber(@Body() VerifyMobileNumberRequestModel request);

  @POST(VALIDATE_OTP)
  Future<ValidateOtpResponseModel> validateOTP(@Body() ValidateOtpRequestModel request);

  @POST(RESEND_OTP)
  Future<ResendOtpResponseModel> resendOTP(
    @Header("Authorization") String authorization,
    @Header("SessionId") String sessionId,
    @Body() ResendOtpRequestModel request,
  );

  @POST(SAVE_FILE)
  Future<SaveFileResponseModel> saveFile(
    @Header("Authorization") String authorization,
    @Body() SaveFileRequestModel request,
  );

  @POST(SET_AGENT_MPIN)
  Future<SetAgentMpinResponseModel> setAgentMPIN(@Body() SetAgentMpinRequestModel request);

  @POST(LOGIN_BY_MPIN)
  Future<LoginbyMpinResponseModel> loginByMpin(@Body() LoginbyMpinRequestModel request);

  @POST(LOGIN_BY_BIOMETRIC)
  Future<LoginByFpResponseModel> loginByFP(@Body() LoginByFpRequestModel request);

  @POST(LOGOUT)
  Future<LogoutResponseModel> logout(
    @Header("token") String authorization,
    @Header("sessionId") String sessionId,
  );
}
