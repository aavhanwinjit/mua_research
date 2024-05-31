import 'package:dio/dio.dart';
import 'package:ekyc/core/helpers/http_api_service_helper.dart';
import 'package:ekyc/core/helpers/local_data_helper.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/request/get_agent_applications_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/change_mpin/request/change_mpin_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/change_mpin/response/change_mpin_response_model.dart';
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
import 'package:ekyc/features/signature/data/models/save_file/request/save_file_request_model.dart';
import 'package:ekyc/features/signature/data/models/save_file/response/save_file_response_model.dart';
import 'package:ekyc/features/signature/data/models/save_signature/request/save_signature_request_model.dart';
import 'package:ekyc/features/signature/data/models/view_file/request/view_file_request_model.dart';
import 'package:ekyc/features/signature/data/models/view_file/response/view_file_response_model.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';

class ApiService {
  static const LAUNCH_DETAILS = "/AgentAPI/AppStarts/LaunchDetails";
  static const VERIFY_MOBILE_NUMBER = "/AgentAPI/Registration/VerifyMobileNumber";
  static const VALIDATE_OTP = "/AgentAPI/Registration/ValidateAgentRegOTP";
  static const RESEND_OTP = "/AgentAPI/Login/ResendOTP";
  static const SAVE_FILE = "/AgentAPI/Default/SaveFile";
  static const SAVE_SIGNATURE = "/AgentAPI/Agent/SaveSignature";
  static const VIEW_FILE = "/AgentAPI/Default/ViewFile";
  static const SET_AGENT_MPIN = "/AgentAPI/Registration/SetAgentMPIN";
  static const SET_FINGERPRINT = "/AgentAPI/Login/SetFingerPrint";
  static const LOGIN_BY_MPIN = "/AgentAPI/Login/LoginByMPIN";
  static const LOGIN_BY_BIOMETRIC = "/AgentAPI/Login/LoginByFP";
  static const LOGOUT = "/AgentAPI/Login/Logout";
  static const DE_REGISTER_FINGERPRINT = "/AgentAPI/Login/DeRegisterFingerPrint";
  static const GET_AGENT_DETAILS = "/AgentAPI/Agent/GetAgentDetails";
  static const VERIFY_MPIN = "/AgentAPI/Registration/ValidateMPIN";
  static const CHANGE_MPIN = "/AgentAPI/Registration/ChangeMPIN";
  static const GET_AGENT_APPLICATIONS = "/AgentAPI/Agent/GetAgentApplications";

  ApiService(Dio dio, {String? baseUrl});

  Future<LaunchDetailsResponse> launchDetails(LaunchDetailsRequest request) async {
    final response = await HttpApiServiceHelper.postMethod(LAUNCH_DETAILS, request.toJson());

    return LaunchDetailsResponse.fromJson(response);
  }

  Future<VerifyMobileNumberResponseModel> verifyMobileNumber(VerifyMobileNumberRequestModel request) async {
    final response = await HttpApiServiceHelper.postMethod(VERIFY_MOBILE_NUMBER, request.toJson());

    return VerifyMobileNumberResponseModel.fromJson(response);
  }

  Future<ValidateOtpResponseModel> validateOTP(ValidateOtpRequestModel request) async {
    final response = await HttpApiServiceHelper.postMethod(VALIDATE_OTP, request.toJson());

    return ValidateOtpResponseModel.fromJson(response);
  }

  Future<ResendOtpResponseModel> resendOTP(ResendOtpRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(RESEND_OTP, request.toJson(), headers);

    return ResendOtpResponseModel.fromJson(response);
  }

  Future<SaveFileResponseModel> saveFile(SaveFileRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(SAVE_FILE, request.toJson(), headers);

    return SaveFileResponseModel.fromJson(response);
  }

  Future<SaveFileResponseModel> saveSignature(SaveSignatureRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(SAVE_SIGNATURE, request.toJson(), headers);

    return SaveFileResponseModel.fromJson(response);
  }

  Future<ViewFileResponseModel> viewFile(ViewFileRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(VIEW_FILE, request.toJson(), headers);

    return ViewFileResponseModel.fromJson(response);
  }

  Future<SetAgentMpinResponseModel> setAgentMPIN(SetAgentMpinRequestModel request) async {
    final response = await HttpApiServiceHelper.postMethod(SET_AGENT_MPIN, request.toJson());

    return SetAgentMpinResponseModel.fromJson(response);
  }

  Future<SetFingerprintResponseModel> setFingerPrint() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(SET_FINGERPRINT, null, headers);

    return SetFingerprintResponseModel.fromJson(response);
  }

  Future<DeRegisterFingerprintResponseModel> deRegisterFingerprint() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(DE_REGISTER_FINGERPRINT, null, headers);

    return DeRegisterFingerprintResponseModel.fromJson(response);
  }

  Future<LoginbyMpinResponseModel> loginByMpin(LoginbyMpinRequestModel request) async {
    final response = await HttpApiServiceHelper.postMethod(LOGIN_BY_MPIN, request.toJson());

    return LoginbyMpinResponseModel.fromJson(response);
  }

  Future<LoginByFpResponseModel> loginByFP(LoginByFpRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(LOGIN_BY_BIOMETRIC, request.toJson(), headers);

    return LoginByFpResponseModel.fromJson(response);
  }

  Future<LogoutResponseModel> logout() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(LOGOUT, null, headers);

    return LogoutResponseModel.fromJson(response);
  }

  Future<GetAgentDetailsResponseModel> getAgentDetails() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(GET_AGENT_DETAILS, null, headers);

    return GetAgentDetailsResponseModel.fromJson(response);
  }

  Future<VerifyMPINResponseModel> verifyMPIN(VerifyMPINRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await HttpApiServiceHelper.postMethod(VERIFY_MPIN, request.toJson(), headers);

    return VerifyMPINResponseModel.fromJson(response);
  }

  Future<ChangeMPINResponseModel> changeMPIN(ChangeMPINRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };
    final response = await HttpApiServiceHelper.postMethod(CHANGE_MPIN, request.toJson(), headers);

    return ChangeMPINResponseModel.fromJson(response);
  }

  Future<GetAgentApplicationsResponseModel> getAgentApplications(GetAgentApplicationsRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };
    final response = await HttpApiServiceHelper.postMethod(GET_AGENT_APPLICATIONS, request.toJson(), headers);

    return GetAgentApplicationsResponseModel.fromJson(response);
  }
}
