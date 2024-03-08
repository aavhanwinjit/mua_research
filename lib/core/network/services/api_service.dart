import 'package:dio/dio.dart';
import 'package:ekyc/core/helpers/http_api_service_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
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
import 'package:ekyc/features/mpin_face_id/data/models/set_fingerprint/response/set_fingerprint_response_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/request/verify_mpin_request_model.dart';
import 'package:ekyc/features/mpin_face_id/data/models/verify_mpin/response/verify_mpin_response_model.dart';
import 'package:ekyc/features/profile/data/models/de_register_fingerprint/request/de_register_fingerprint_response_model.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';

class ApiService {
  static const LAUNCH_DETAILS = "/AgentAPI/AppStarts/LaunchDetails";
  static const VERIFY_MOBILE_NUMBER =
      "/AgentAPI/Registration/VerifyMobileNumber";
  static const VALIDATE_OTP = "/AgentAPI/Registration/ValidateAgentRegOTP";
  static const RESEND_OTP = "/AgentAPI/Login/ResendOTP";
  static const SAVE_FILE = "/AgentAPI/FileHandling/SaveFile";
  static const SET_AGENT_MPIN = "/AgentAPI/Registration/SetAgentMPIN";
  static const SET_FINGERPRINT = "/AgentAPI/Login/SetFingerPrint";
  static const LOGIN_BY_MPIN = "/AgentAPI/Login/LoginByMPIN";
  static const LOGIN_BY_BIOMETRIC = "/AgentAPI/Login/LoginByFP";
  static const LOGOUT = "/AgentAPI/Login/Logout";
  static const DE_REGISTER_FINGERPRINT =
      "/AgentAPI/Login/DeRegisterFingerPrint";
  static const GET_AGENT_DETAILS = "/AgentAPI/Agent/GetAgentDetails";
  static const VERIFY_MPIN = "/AgentAPI/Registration/ValidateMPIN";

  ApiService(Dio dio, {String? baseUrl});

  Future<LaunchDetailsResponse> launchDetails(
      LaunchDetailsRequest request) async {
    final response =
        await HttpApiServiceHelper.postMethod(LAUNCH_DETAILS, request.toJson());

    return LaunchDetailsResponse.fromJson(response);
  }

  Future<VerifyMobileNumberResponseModel> verifyMobileNumber(
      VerifyMobileNumberRequestModel request) async {
    final response = await HttpApiServiceHelper.postMethod(
        VERIFY_MOBILE_NUMBER, request.toJson());

    return VerifyMobileNumberResponseModel.fromJson(response);
  }

  Future<ValidateOtpResponseModel> validateOTP(
      ValidateOtpRequestModel request) async {
    final response =
        await HttpApiServiceHelper.postMethod(VALIDATE_OTP, request.toJson());

    return ValidateOtpResponseModel.fromJson(response);
  }

  Future<ResendOtpResponseModel> resendOTP(
      ResendOtpRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(
        RESEND_OTP, request.toJson(), headers);

    return ResendOtpResponseModel.fromJson(response);
  }

  Future<SaveFileResponseModel> saveFile(SaveFileRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(
        SAVE_FILE, request.toJson(), headers);

    return SaveFileResponseModel.fromJson(response);
  }

  Future<SetAgentMpinResponseModel> setAgentMPIN(
      SetAgentMpinRequestModel request) async {
    final response =
        await HttpApiServiceHelper.postMethod(SET_AGENT_MPIN, request.toJson());

    return SetAgentMpinResponseModel.fromJson(response);
  }

  Future<SetFingerprintResponseModel> setFingerPrint() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response =
        await HttpApiServiceHelper.postMethod(SET_FINGERPRINT, null, headers);

    return SetFingerprintResponseModel.fromJson(response);
  }

  Future<DeRegisterFingerprintResponseModel> deRegisterFingerprint() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(
        DE_REGISTER_FINGERPRINT, null, headers);

    return DeRegisterFingerprintResponseModel.fromJson(response);
  }

  Future<LoginbyMpinResponseModel> loginByMpin(
      LoginbyMpinRequestModel request) async {
    final response =
        await HttpApiServiceHelper.postMethod(LOGIN_BY_MPIN, request.toJson());

    return LoginbyMpinResponseModel.fromJson(response);
  }

  Future<LoginByFpResponseModel> loginByFP(
      LoginByFpRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(
        LOGIN_BY_BIOMETRIC, request.toJson(), headers);

    return LoginByFpResponseModel.fromJson(response);
  }

  Future<LogoutResponseModel> logout() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response =
        await HttpApiServiceHelper.postMethod(LOGOUT, null, headers);

    return LogoutResponseModel.fromJson(response);
  }

  Future<GetAgentDetailsResponseModel> getAgentDetails() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response =
        await HttpApiServiceHelper.postMethod(GET_AGENT_DETAILS, null, headers);

    return GetAgentDetailsResponseModel.fromJson(response);
  }

  Future<VerifyMPINResponseModel> verifyMPIN(
      VerifyMPINRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };
    final response = await HttpApiServiceHelper.postMethod(
        VERIFY_MPIN, request.toJson(), headers);

    return VerifyMPINResponseModel.fromJson(response);
  }
}

// import 'package:dio/dio.dart';
// import 'package:ekyc/features/auth_profile/data/models/save_file/request/save_file_request_model.dart';
// import 'package:ekyc/features/auth_profile/data/models/save_file/response/save_file_response_model.dart';
// import 'package:ekyc/features/login_otp/data/models/resend_otp/request/resend_otp_request_model.dart';
// import 'package:ekyc/features/login_otp/data/models/resend_otp/response/resend_otp_response_model.dart';
// import 'package:ekyc/features/login_otp/data/models/validate_otp/request/validate_otp_request_model.dart';
// import 'package:ekyc/features/login_otp/data/models/validate_otp/response/validate_otp_response_model.dart';
// import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/request/verify_mobile_number_request_model.dart';
// import 'package:ekyc/features/login_otp/data/models/verify_mobile_number/response/verify_mobile_number_response_model.dart';
// import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/request/login_by_fp_request_model.dart';
// import 'package:ekyc/features/mpin_face_id/data/models/login_by_biometric/response/login_by_fp_response_model.dart';
// import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/request/login_by_mpin_request_model.dart';
// import 'package:ekyc/features/mpin_face_id/data/models/login_by_mpin/response/login_by_mpin_response_model.dart';
// import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/request/set_agent_mpin_request_model.dart';
// import 'package:ekyc/features/mpin_face_id/data/models/set_agent_mpin/response/set_agent_mpin_response_model.dart';
// import 'package:ekyc/features/mpin_face_id/data/models/set_fingerprint/response/set_fingerprint_response_model.dart';
// import 'package:ekyc/features/profile/data/models/de_register_fingerprint/request/de_register_fingerprint_response_model.dart';
// import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
// import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
// import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
// import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
// import 'package:retrofit/retrofit.dart';
// import 'package:retrofit/retrofit.dart' as retrofit;

// part 'api_service.g.dart';

// @RestApi()
// abstract class ApiService {
//   static const LAUNCH_DETAILS = "/AgentAPI/AppStarts/LaunchDetails";
//   static const VERIFY_MOBILE_NUMBER = "/AgentAPI/Registration/VerifyMobileNumber";
//   static const VALIDATE_OTP = "/AgentAPI/Registration/ValidateAgentRegOTP";
//   static const RESEND_OTP = "/AgentAPI/Login/ResendOTP";
//   static const SAVE_FILE = "/AgentAPI/FileHandling/SaveFile";
//   static const SET_AGENT_MPIN = "/AgentAPI/Registration/SetAgentMPIN";
//   static const SET_FINGERPRINT = "/AgentAPI/Login/SetFingerPrint";
//   static const LOGIN_BY_MPIN = "/AgentAPI/Login/LoginByMPIN";
//   static const LOGIN_BY_BIOMETRIC = "/AgentAPI/Login/LoginByFP";
//   static const LOGOUT = "/AgentAPI/Login/Logout";
//   static const DE_REGISTER_FINGERPRINT = "/AgentAPI/Login/DeRegisterFingerPrint";
//   static const GET_AGENT_DETAILS = "/AgentAPI/Agent/GetAgentDetails";

//   factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

//   @POST(LAUNCH_DETAILS)
//   Future<LaunchDetailsResponse> launchDetails(@Body() LaunchDetailsRequest request);

//   @POST(VERIFY_MOBILE_NUMBER)
//   Future<VerifyMobileNumberResponseModel> verifyMobileNumber(@Body() VerifyMobileNumberRequestModel request);

//   @POST(VALIDATE_OTP)
//   Future<ValidateOtpResponseModel> validateOTP(@Body() ValidateOtpRequestModel request);

//   @POST(RESEND_OTP)
//   @retrofit.Headers(<String, dynamic>{'Authorization': true})
//   Future<ResendOtpResponseModel> resendOTP(@Body() ResendOtpRequestModel request);

//   @POST(SAVE_FILE)
//   @retrofit.Headers(<String, dynamic>{'Authorization': true})
//   Future<SaveFileResponseModel> saveFile(@Body() SaveFileRequestModel request);

//   @POST(SET_AGENT_MPIN)
//   Future<SetAgentMpinResponseModel> setAgentMPIN(@Body() SetAgentMpinRequestModel request);

//   @POST(SET_FINGERPRINT)
//   @retrofit.Headers(<String, dynamic>{'Authorization': true})
//   Future<SetFingerprintResponseModel> setFingerPrint();

//   @POST(DE_REGISTER_FINGERPRINT)
//   @retrofit.Headers(<String, dynamic>{'Authorization': true})
//   Future<DeRegisterFingerprintResponseModel> deRegisterFingerprint();

//   @POST(LOGIN_BY_MPIN)
//   Future<LoginbyMpinResponseModel> loginByMpin(@Body() LoginbyMpinRequestModel request);

//   @POST(LOGIN_BY_BIOMETRIC)
//   @retrofit.Headers(<String, dynamic>{'Authorization': true})
//   Future<LoginByFpResponseModel> loginByFP(@Body() LoginByFpRequestModel request);

//   @POST(LOGOUT)
//   @retrofit.Headers(<String, dynamic>{'Authorization': true})
//   Future<LogoutResponseModel> logout();

//   @POST(GET_AGENT_DETAILS)
//   @retrofit.Headers(<String, dynamic>{'Authorization': true})
//   Future<GetAgentDetailsResponseModel> getAgentDetails();
// }
