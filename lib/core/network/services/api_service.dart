import 'package:dio/dio.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/request/get_agent_applications_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/request/get_kyc_types_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
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
import 'package:retrofit/retrofit.dart' as retrofit;
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
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
  static const GET_KYC_TYPES = "/AgentAPI/Data/GetKYCTypes";

  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(LAUNCH_DETAILS)
  Future<LaunchDetailsResponse> launchDetails(@Body() LaunchDetailsRequest request);

  @POST(VERIFY_MOBILE_NUMBER)
  Future<VerifyMobileNumberResponseModel> verifyMobileNumber(@Body() VerifyMobileNumberRequestModel request);

  @POST(VALIDATE_OTP)
  Future<ValidateOtpResponseModel> validateOTP(@Body() ValidateOtpRequestModel request);

  @POST(RESEND_OTP)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<ResendOtpResponseModel> resendOTP(@Body() ResendOtpRequestModel request);

  @POST(SAVE_FILE)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SaveFileResponseModel> saveFile(@Body() SaveFileRequestModel request);

  @POST(SAVE_SIGNATURE)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SaveFileResponseModel> saveSignature(@Body() SaveSignatureRequestModel request);

  @POST(VIEW_FILE)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<ViewFileResponseModel> viewFile(@Body() ViewFileRequestModel request);

  @POST(SET_AGENT_MPIN)
  Future<SetAgentMpinResponseModel> setAgentMPIN(@Body() SetAgentMpinRequestModel request);

  @POST(SET_FINGERPRINT)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SetFingerprintResponseModel> setFingerPrint();

  @POST(DE_REGISTER_FINGERPRINT)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<DeRegisterFingerprintResponseModel> deRegisterFingerprint();

  @POST(LOGIN_BY_MPIN)
  Future<LoginbyMpinResponseModel> loginByMpin(@Body() LoginbyMpinRequestModel request);

  @POST(LOGIN_BY_BIOMETRIC)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<LoginByFpResponseModel> loginByFP(@Body() LoginByFpRequestModel request);

  @POST(LOGOUT)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<LogoutResponseModel> logout();

  @POST(GET_AGENT_DETAILS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetAgentDetailsResponseModel> getAgentDetails();

  @POST(VERIFY_MPIN)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<VerifyMPINResponseModel> verifyMPIN(@Body() VerifyMPINRequestModel request);

  @POST(CHANGE_MPIN)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<ChangeMPINResponseModel> changeMPIN(@Body() ChangeMPINRequestModel request);

  @POST(GET_AGENT_APPLICATIONS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetAgentApplicationsResponseModel> getAgentApplications(@Body() GetAgentApplicationsRequestModel request);

  @POST(GET_KYC_TYPES)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetKycTypesResponseModel> getKycTypes(@Body() GetKycTypesRequestModel request);
}
