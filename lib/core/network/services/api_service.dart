import 'package:dio/dio.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/request/get_agent_applications_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_agent_application/response/get_agent_applications_response_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/request/get_kyc_types_request_model.dart';
import 'package:ekyc/features/dashboard/data/models/get_kyc_types/response/get_kyc_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/request/add_customer_information_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/add_customer_information/response/add_customer_information_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/request/generate_pdf_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/generate_pdf/response/generate_pdf_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_address_document_types/response/get_address_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/request/get_document_category_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_document_category/response/get_document_category_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_identity_document_types/response/get_identity_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_motor_insurance_document_types/response/get_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_non_motor_insurance_document_types/response/get_non_motor_insurance_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_policy_document_types/response/get_policy_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/get_por_document_types/response/get_por_document_types_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/request/save_additional_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_additional_documents/response/save_additional_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/request/save_address_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_address_details/response/save_address_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/request/save_identity_details_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_identity_details/response/save_identity_details_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/request/save_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_motor_insurance_documents/response/save_motor_insurance_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_non_motor_insurance_documents/request/save_non_motor_insurance_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_non_motor_insurance_documents/response/save_non_motor_insurance_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/request/save_policy_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_policy_documents/response/save_policy_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/request/save_por_documents_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/save_por_documents/response/save_por_documents_response_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/request/scan_document_request_model.dart';
import 'package:ekyc/features/kyc_process/data/models/scan_document/response/scan_document_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/change_mpin/request/change_mpin_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/change_mpin/response/change_mpin_response_model.dart';
import 'package:ekyc/features/login_otp/data/models/regsiter_device/request/register_device_request_model.dart';
import 'package:ekyc/features/login_otp/data/models/regsiter_device/response/register_device_response_model.dart';
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
  static const REGISTER_DEVICE = "/AgentAPI/Registration/RegisterDevice";
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
  static const ADD_CUSTOMER_INFORMATION = "/AgentAPI/Agent/AddCustomerInformation";
  static const SAVE_IDENTITY_DETAILS = "/AgentAPI/Agent/SaveIdentityDetails";
  static const GET_IDENTITY_DOCUMENT_TYPES = "/AgentAPI/Data/GetIdentityDocumentTypes";
  static const GET_DOCUMENT_CATEGORY = "/AgentAPI/Data/GetDocumentCategories";
  static const GET_ADDRESS_DOCUMENT_TYPES = "/AgentAPI/Data/GetAddressDocumentTypes";
  static const SCAN_DOCUMENT = "/AgentAPI/DocumentOCR/ScanDocument";
  static const SAVE_ADDRESS_DETAILS = "/AgentAPI/Agent/SaveAddressDetails";
  static const GET_POR_DOCUMENT_TYPES = "/AgentAPI/Data/GetPORDocumentTypes";
  static const SAVE_INSURED_DOCUMENTS = "/AgentAPI/Agent/SaveInsuredDocuments";
  static const GET_MOTOR_INSURANCE_DOCUMENT_TYPES = "/AgentAPI/Data/GetMotorInsuranceDocumentTypes";
  static const SAVE_MOTOR_INSURANCE_DOCUMENTS = "/AgentAPI/Agent/SaveMotorInsuranceDocuments";
  static const GET_NON_MOTOR_INSURANCE_DOCUMENT_TYPES = "/AgentAPI/Data/GetNonMotorInsuranceDocumentTypes";
  static const SAVE_NON_MOTOR_INSURANCE_DOCUMENTS = "/AgentAPI/Agent/SaveNonMotorInsuranceDocuments";
  static const SAVE_POR_DOCUMENTS = "/AgentAPI/Agent/SavePORDocuments";
  static const GET_POLICY_DOCUMENT_TYPES = "/AgentAPI/Data/GetPolicyDocumentTypes";
  static const SAVE_POLICY_DOCUMENTS = "/AgentAPI/Agent/SavePolicyDocuments";
  static const SAVE_ADDITIONAL_DOCUMENTS = "/AgentAPI/Agent/SaveAdditionalDocuments";
  static const GENERATE_PDF = "/AgentAPI/Agent/GeneratePDF";

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

  @POST(REGISTER_DEVICE)
  Future<RegisterDeviceResponseModel> registerDevice(@Body() RegisterDeviceRequestModel request);

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

  @POST(ADD_CUSTOMER_INFORMATION)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<AddCustomerInformationResponseModel> addCustomerInformation(
      @Body() AddCustomerInformationRequestModel request);

  @POST(SAVE_IDENTITY_DETAILS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SaveIdentityDetailsResponseModel> saveIdentityDetails(@Body() SaveIdentityDetailsRequestModel request);

  @POST(GET_IDENTITY_DOCUMENT_TYPES)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetIdentityDocumentTypesResponseModel> getIdentityDocumentTypes();

  @POST(GET_DOCUMENT_CATEGORY)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetDocumentCategoryResponseModel> getDocumentCategory(@Body() GetDocumentCategoryRequestModel request);

  @POST(GET_ADDRESS_DOCUMENT_TYPES)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetAddressDocumentTypesResponseModel> getAddressDocumentTypes();

  @POST(SCAN_DOCUMENT)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<ScanDocumentResponseModel> scanDocument(@Body() ScanDocumentRequestModel request);

  @POST(SAVE_ADDRESS_DETAILS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SaveAddressDetailsResponseModel> saveAddressDetails(@Body() SaveAddressDetailsRequestModel request);

  @POST(GET_POR_DOCUMENT_TYPES)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetPorDocumentTypesResponseModel> getPORDocumentTypes();

  @POST(GET_MOTOR_INSURANCE_DOCUMENT_TYPES)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetMotorInsuranceDocumentTypesResponseModel> getMotorInsuranceDocumentTypes();

  @POST(SAVE_MOTOR_INSURANCE_DOCUMENTS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SaveMotorInsuranceDocumentsResponseModel> saveMotorInsuranceDocuments(
      @Body() SaveMotorInsuranceDocumentsRequestModel request);

  @POST(GET_NON_MOTOR_INSURANCE_DOCUMENT_TYPES)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetNonMotorInsuranceDocumentTypesResponseModel> getNonMotorInsuranceDocumentTypes();

  @POST(SAVE_NON_MOTOR_INSURANCE_DOCUMENTS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SaveNonMotorInsuranceDocumentsResponseModel> saveNonMotorInsuranceDocuments(
      @Body() SaveNonMotorInsuranceDocumentsRequestModel request);

  @POST(SAVE_POR_DOCUMENTS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SavePorDocumentsResponseModel> savePORDocuments(@Body() SavePorDocumentsRequestModel request);

  @POST(GET_POLICY_DOCUMENT_TYPES)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GetPolicyDocumentTypesResponseModel> getPolicyDocumentTypes();

  @POST(SAVE_POLICY_DOCUMENTS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SavePolicyDocumentsResponseModel> savePolicyDocuments(@Body() SavePolicyDocumentsRequestModel request);

  @POST(SAVE_ADDITIONAL_DOCUMENTS)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<SaveAdditionalDocumentsResponseModel> saveAdditionalDocuments(
      @Body() SaveAdditionalDocumentsRequestModel request);

  @POST(GENERATE_PDF)
  @retrofit.Headers(<String, dynamic>{'Authorization': true})
  Future<GeneratePdfResponseModel> generatePdf(@Body() GeneratePdfRequestModel request);
}
