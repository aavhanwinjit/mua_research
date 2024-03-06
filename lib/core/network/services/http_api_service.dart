import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/encryption_helper.dart';
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
import 'package:ekyc/features/profile/data/models/de_register_fingerprint/request/de_register_fingerprint_response_model.dart';
import 'package:ekyc/features/profile/data/models/get_agent_details/response/get_agent_details_response_model.dart';
import 'package:ekyc/features/profile/data/models/logout/response/logout_response_model.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:ekyc/models/app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const LAUNCH_DETAILS = "/AgentAPI/AppStarts/LaunchDetails";
  static const VERIFY_MOBILE_NUMBER = "/AgentAPI/Registration/VerifyMobileNumber";
  static const VALIDATE_OTP = "/AgentAPI/Registration/ValidateAgentRegOTP";
  static const RESEND_OTP = "/AgentAPI/Login/ResendOTP";
  static const SAVE_FILE = "/AgentAPI/FileHandling/SaveFile";
  static const SET_AGENT_MPIN = "/AgentAPI/Registration/SetAgentMPIN";
  static const SET_FINGERPRINT = "/AgentAPI/Login/SetFingerPrint";
  static const LOGIN_BY_MPIN = "/AgentAPI/Login/LoginByMPIN";
  static const LOGIN_BY_BIOMETRIC = "/AgentAPI/Login/LoginByFP";
  static const LOGOUT = "/AgentAPI/Login/Logout";
  static const DE_REGISTER_FINGERPRINT = "/AgentAPI/Login/DeRegisterFingerPrint";
  static const GET_AGENT_DETAILS = "/AgentAPI/Agent/GetAgentDetails";

  ApiService(Dio dio, {String? baseUrl});

  Future<LaunchDetailsResponse> launchDetails(LaunchDetailsRequest request) async {
    final response = await postMethod(LAUNCH_DETAILS, request.toJson());

    return LaunchDetailsResponse.fromJson(response);
  }

  Future<VerifyMobileNumberResponseModel> verifyMobileNumber(VerifyMobileNumberRequestModel request) async {
    final response = await postMethod(VERIFY_MOBILE_NUMBER, request.toJson());

    return VerifyMobileNumberResponseModel.fromJson(response);
  }

  Future<ValidateOtpResponseModel> validateOTP(ValidateOtpRequestModel request) async {
    final response = await postMethod(VALIDATE_OTP, request.toJson());

    return ValidateOtpResponseModel.fromJson(response);
  }

  Future<ResendOtpResponseModel> resendOTP(ResendOtpRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(RESEND_OTP, request.toJson(), headers);

    return ResendOtpResponseModel.fromJson(response);
  }

  Future<SaveFileResponseModel> saveFile(SaveFileRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(SAVE_FILE, request.toJson(), headers);

    return SaveFileResponseModel.fromJson(response);
  }

  Future<SetAgentMpinResponseModel> setAgentMPIN(SetAgentMpinRequestModel request) async {
    final response = await postMethod(SET_AGENT_MPIN, request.toJson());

    return SetAgentMpinResponseModel.fromJson(response);
  }

  Future<SetFingerprintResponseModel> setFingerPrint() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(SET_FINGERPRINT, null, headers);

    return SetFingerprintResponseModel.fromJson(response);
  }

  Future<DeRegisterFingerprintResponseModel> deRegisterFingerprint() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(DE_REGISTER_FINGERPRINT, null, headers);

    return DeRegisterFingerprintResponseModel.fromJson(response);
  }

  Future<LoginbyMpinResponseModel> loginByMpin(LoginbyMpinRequestModel request) async {
    final response = await postMethod(LOGIN_BY_MPIN, request.toJson());

    return LoginbyMpinResponseModel.fromJson(response);
  }

  Future<LoginByFpResponseModel> loginByFP(LoginByFpRequestModel request) async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(LOGIN_BY_BIOMETRIC, request.toJson(), headers);

    return LoginByFpResponseModel.fromJson(response);
  }

  Future<LogoutResponseModel> logout() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(LOGOUT, null, headers);

    return LogoutResponseModel.fromJson(response);
  }

  Future<GetAgentDetailsResponseModel> getAgentDetails() async {
    final token = await LocalDataHelper.getAuthToken();

    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(GET_AGENT_DETAILS, null, headers);

    return GetAgentDetailsResponseModel.fromJson(response);
  }

  Future<Map<String, dynamic>> postMethod(
    String endpoint,
    Map<String, dynamic>? payLoad, [
    Map<String, String>? headers,
  ]) async {
    final baseURL = getIt<AppConfig>().baseUrl;
    final deviceInfo = await getIt<DeviceInformationHelper>().generateDeviceInformation();

    debugPrint('******************* REQUEST ***********************');
    debugPrint('POST ${baseURL! + endpoint}  + plain request = ${jsonEncode(payLoad)}');
    debugPrint('******************* ********** ***********************');

    if (headers != null) {
      headers['Content-Type'] = 'application/json';
    } else {
      headers = {'Content-Type': 'application/json'};
    }

    debugPrint('******************* HEADER ***********************');
    debugPrint('Headers: $headers');
    debugPrint('******************* ****** ***********************');

    final Map<String, dynamic> encryptedRequest = await EncryptionHelper.encrypt(
      plainData: payLoad,
      deviceInfoModel: deviceInfo,
      serviceRequestURL: endpoint,
    );

    var response = await http.post(
      Uri.parse(baseURL),
      body: json.encode(encryptedRequest),
      headers: headers,
    );

    return _handledResponse(response, endpoint);
  }

  Future<Map<String, dynamic>> _handledResponse(http.Response response, String endpoint) async {
    debugPrint('******************* RESPONSE ***********************');
    debugPrint('status code: ${response.statusCode}');
    debugPrint("Response Headers: ${response.headers}");
    debugPrint('response[$endpoint]: ${response.body}');
    debugPrint('******************* ******** ***********************');

    // if (response.body!['auth'] == false) {
    //   LogoutDialog().logout();
    //   return null;
    // }

    if (response.statusCode >= 200 && response.statusCode < 400) {
      final Map<String, dynamic> responseJson = jsonDecode(response.body);

      if (responseJson['b'] != null) {
        Map<String, dynamic> decryptedResponse = EncryptionHelper.decrypt(
          cipherText: responseJson["b"],
          deviceID: responseJson["h"]["di"]["d"],
          requestUUID: responseJson["h"]["mk"]["r"],
          sessionId: responseJson["h"]["mk"]["s"],
          timestamp: responseJson["h"]["mk"]["t"],
          index: int.parse(responseJson["h"]["mk"]["i"]),
        );

        debugPrint('******************* DECRYPTED RESPONSE ***********************');
        debugPrint("$decryptedResponse");
        debugPrint('******************* ****************** ***********************');

        decryptedResponse['rb'] = json.decode(decryptedResponse['rb']);

        responseJson['b'] = decryptedResponse;

        return responseJson;
      }

      return responseJson;
    } else if (response.statusCode == 400) {
      throw Exception(response.toString());
    } else if (response.statusCode == 403) {
      throw Exception(response.toString());
    } else {
      throw Exception(response.toString());
    }
  }
}