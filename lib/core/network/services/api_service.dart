import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekyc/core/dependency/injection.dart';
import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/core/helpers/encryption_helper.dart';
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
import 'package:ekyc/models/app_config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// part 'api_service.g.dart';

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
  static const DE_REGISTER_FINGERPRINT = "/AgentAPI/Login/DeRegisterFingerPrint";

  ApiService(Dio dio, {String? baseUrl});

  Future<LaunchDetailsResponse> launchDetails(
      LaunchDetailsRequest request) async {
    final response = await postMethod(LAUNCH_DETAILS, request.toJson());

    return LaunchDetailsResponse.fromJson(response);
  }

  Future<VerifyMobileNumberResponseModel> verifyMobileNumber(
      VerifyMobileNumberRequestModel request) async {
    final response = await postMethod(VERIFY_MOBILE_NUMBER, request.toJson());

    return VerifyMobileNumberResponseModel.fromJson(response);
  }

  Future<ValidateOtpResponseModel> validateOTP(
      ValidateOtpRequestModel request) async {
    final response = await postMethod(VALIDATE_OTP, request.toJson());

    return ValidateOtpResponseModel.fromJson(response);
  }

  Future<ResendOtpResponseModel> resendOTP(
      String token, String sessionId, ResendOtpRequestModel request) async {
    // final headers = {
    //   "Authorization":
    //       'cx1J782xODD0PTp2myhNrJcwV0/xPayiyRlJ1cpGW3S0zkfTgAQB8ic8D8olRTBIo7S39urt3PMMCLb0/BsepoORw69wGB/fXz2qhUr7mxFx8ntVCGRHEE9wRzjcitVjfzKTRLfa/AmDhSW5QvpfobbnOHOTMcLGd673jky0RHBkejGxY44CSa0b/P3GfSvdL/RR8o4xXidE+sLd2UO1QWZ+oGCtVxxzaXc+epKEFbD5hc9S7FUwYLkN4wo0fK3y',
    //   "SessionId": 'bddb0fea-170922155961618',
    // };

    final headers = {
      "Authorization": token,
      // "SessionId": sessionId,
    };

    final response = await postMethod(RESEND_OTP, request.toJson(), headers);

    return ResendOtpResponseModel.fromJson(response);
  }

  Future<SaveFileResponseModel> saveFile(
      String token, SaveFileRequestModel request) async {
    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(SAVE_FILE, request.toJson(), headers);

    return SaveFileResponseModel.fromJson(response);
  }

  Future<SetAgentMpinResponseModel> setAgentMPIN(
      SetAgentMpinRequestModel request) async {
    final response = await postMethod(SET_AGENT_MPIN, request.toJson());

    return SetAgentMpinResponseModel.fromJson(response);
  }

  Future setFingerPrint(String token) async {
    final headers = {
      "Authorization": token,
    };

    final response = await postMethod(SET_FINGERPRINT, null, headers);

    return response;

    // return SetAgentMpinResponseModel.fromJson(response);
  }

  Future deRegisterFingerprint(String token, String sessionId) async {
    final headers = {
      "Authorization": token,
      "SessionId": sessionId,
    };

    final response = await postMethod(DE_REGISTER_FINGERPRINT, null, headers);

    return response;

    // return SetAgentMpinResponseModel.fromJson(response);
  }

  Future<LoginbyMpinResponseModel> loginByMpin(LoginbyMpinRequestModel request) async {
    final response = await postMethod(LOGIN_BY_MPIN, request.toJson());

    return LoginbyMpinResponseModel.fromJson(response);
  }

  Future<LoginByFpResponseModel> loginByFP(
      LoginByFpRequestModel request) async {
    final response = await postMethod(LOGIN_BY_BIOMETRIC, request.toJson());

    return LoginByFpResponseModel.fromJson(response);
  }

  Future<LogoutResponseModel> logout(String token) async {
    // final headers = {
    //   // "SessionId": "7bdf0dba-170862610595707",
    //   "Authorization":
    //       "cx1J782xODBxnYDJV4d3Yg3MSbhh+1uFyZ6xoEOacg5uayZUrKP4TbGDJuQ/RbFtgbBaHH66gRLCeKsC4onUCQFZ6zeyySnt99VYpvLgkeO9GfRsGoL1UCREEUhCkqClYskqSb3GJDs+eYckxbTu8odQvktvpDhxrBhxCriTHBCFzqSE0GRIwNlbDBp6mA2X+USNq5IOlX92jSPpYUCULxq1HvJH8amHBsTxVJztiHeAagJf2eqDe15lVBjHDNmZSAc821QD80Z/d9ijq6F2/l33cGl0zgqDSG9RkFiWprxpyQ7E4a6srHFjSvfbcDmOaXljcEoFKR9MN6x5pQxiSXuex2pQ+GDi9yE/C1+Cj0ZOQCOw8X9tMHSU6I7BX9eLiRhs8xXrS3UaG84wQ06YJG6Mme/s6FQgfwEhDpimI1g+VTf38FRqiBsCo4iENqo4JcGQIiPVU1LxUdGbVEWUqZZzAFDfIO4ohk2T+OnyZY0y9HVG68UxrK8lmkB8O8jv9bIzn7DZunu1DuSaftJOmnGN4HBnKm/DubhKhdbgPcGPC/+b6IkVUhBTJHxFhA/R9WihajJCTE/wzKamgx+EsrQFc2qIUTx7tx6YrS9x+y+D9EaEdfqy7g==",
    // };
    final headers = {
      "Authorization": token,
      // "SessionId": sessionId,
    };

    final response = await postMethod(LOGOUT, null, headers);

    return LogoutResponseModel.fromJson(response);
  }

  Future<Map<String, dynamic>> postMethod(
    String endpoint,
    Map<String, dynamic>? payLoad, [
    Map<String, String>? headers,
    bool? logout,
  ]) async {
    final baseURL = getIt<AppConfig>().baseUrl;
    final deviceInfo =
        await getIt<DeviceInformationHelper>().generateDeviceInformation();

    debugPrint('******************* REQUEST ***********************');
    debugPrint(
        'POST ${baseURL! + endpoint}  + plain request = ${jsonEncode(payLoad)}');
    debugPrint('******************* ********** ***********************');

    if (headers != null) {
      headers['Content-Type'] = 'application/json';
    } else {
      headers = {'Content-Type': 'application/json'};
    }

    debugPrint('******************* HEADER ***********************');
    debugPrint('Headers: $headers');
    debugPrint('******************* ****** ***********************');

    final Map<String, dynamic> encryptedRequest = EncryptionHelper.encrypt(
      plainData: payLoad,
      deviceInfoModel: deviceInfo,
      serviceRequestURL: endpoint,
    );

    // final data = {
    //   "h": {
    //     "di": {
    //       "p": "Android",
    //       "o": "8.1.0",
    //       "m": "vivo 1820",
    //       "d": "918794c4-a479-36ad-949d-8c631c260a6b",
    //       "a": "1.0.1.8",
    //       "i": "10.235.234.111"
    //     },
    //     "mk": {
    //       "r": "1624521819414qj7ld,2024022915501721",
    //       "sr": "AgentAPI/Login/ResendOTP",
    //       "c": "Customer",
    //       "j": "1624521806YQkAr",
    //       "s": "d0b35662-170922181573141",
    //       "i": "1",
    //       "l": "1",
    //       "t": "20240229102015",
    //       "ci": null
    //     }
    //   },
    //   "b":
    //       "QcBzIEuGI6uOqYCwWHh1z/lt+INszAbvgqfay1HyWTGrLD6eLTJD5xRTH2dWmQIr9JJJtOGgH/HWRQRm/APJl0eLux6Yc4TU9SPHZEX/h9d/xVeHQZjFzLi4To04bpLtsW2NWVwv5zTYJn8gj5CrRIJFOgp4kmrhQAhIzhPi8bVmR1ob9kZBPE71MKlV+3be"
    // };

    if (logout == true) {
      return {};
    }

    var response = await http.post(
      Uri.parse(baseURL),
      body: json.encode(encryptedRequest),
      // body: json.encode(logout == true ? data : encryptedRequest),
      headers: headers,
    );

    return _handledResponse(response, endpoint);
  }

  Future<Map<String, dynamic>> _handledResponse(
      http.Response response, String endpoint) async {
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

        debugPrint(
            '******************* DECRYPTED RESPONSE ***********************');
        log("$decryptedResponse");
        debugPrint(
            '******************* ****************** ***********************');

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

// @RestApi()
// abstract class ApiService {
//   static const LAUNCH_DETAILS = "/AgentAPI/AppStarts/LaunchDetails";
//   static const VERIFY_MOBILE_NUMBER = "/AgentAPI/Registration/VerifyMobileNumber";
//   static const VALIDATE_OTP = "/AgentAPI/Registration/ValidateAgentRegOTP";
//   static const RESEND_OTP = "/AgentAPI/Login/ResendOTP";
//   static const SAVE_FILE = "/AgentAPI/FileHandling/SaveFile";
//   static const SET_AGENT_MPIN = "/AgentAPI/Registration/SetAgentMPIN";
//   static const LOGIN_BY_MPIN = "/AgentAPI/Login/LoginByMPIN";
//   static const LOGIN_BY_BIOMETRIC = "/AgentAPI/Login/LoginByFP";
//   static const LOGOUT = "/AgentAPI/Login/Logout";

//   factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

//   @POST(LAUNCH_DETAILS)
//   // @Headers(<String, dynamic>{
//   //   'Content-Type': 'application/json',
//   // })
//   Future<LaunchDetailsResponse> launchDetails(@Body() LaunchDetailsRequest request);

//   @POST(VERIFY_MOBILE_NUMBER)
//   Future<VerifyMobileNumberResponseModel> verifyMobileNumber(@Body() VerifyMobileNumberRequestModel request);

//   @POST(VALIDATE_OTP)
//   Future<ValidateOtpResponseModel> validateOTP(@Body() ValidateOtpRequestModel request);

//   @POST(RESEND_OTP)
//   Future<ResendOtpResponseModel> resendOTP(
//     @Header("Authorization") String authorization,
//     @Header("SessionId") String sessionId,
//     @Body() ResendOtpRequestModel request,
//   );

//   @POST(SAVE_FILE)
//   Future<SaveFileResponseModel> saveFile(
//     @Header("Authorization") String authorization,
//     @Body() SaveFileRequestModel request,
//   );

//   @POST(SET_AGENT_MPIN)
//   Future<SetAgentMpinResponseModel> setAgentMPIN(@Body() SetAgentMpinRequestModel request);

//   @POST(LOGIN_BY_MPIN)
//   Future<LoginbyMpinResponseModel> loginByMpin(
//     // @Header("Authorization") String authorization,
//     // @Header("SessionId") String sessionId,
//     @Body() LoginbyMpinRequestModel request,
//   );

//   @POST(LOGIN_BY_BIOMETRIC)
//   Future<LoginByFpResponseModel> loginByFP(@Body() LoginByFpRequestModel request);

//   @POST(LOGOUT)
//   Future<LogoutResponseModel> logout(
//     @Header("Authorization") String authorization,
//     // @Header("SessionId") String sessionId,
//   );
// }
