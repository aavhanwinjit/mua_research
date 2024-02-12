import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/request/launch_details_request.dart';
import 'package:ekyc/features/splash_screen/data/models/launch_details/response/launch_details_response.dart';
import 'package:flutter/material.dart';

class ApiService2 {
  static const LAUNCH_DETAILS = "/AgentAPI/AppStarts/LaunchDetails";
  static const VERIFY_MOBILE_NUMBER = "/AgentAPI/Registration/VerifyMobileNumber";
  static const VALIDATE_OTP = "/AgentAPI/Registration/ValidateAgentRegOTP";
  static const RESEND_OTP = "/AgentAPI/Login/ResendOTP";
  static const SAVE_FILE = "/AgentAPI/FileHandling/SaveFile";
  static const SET_AGENT_MPIN = "/AgentAPI/Registration/SetAgentMPIN";

  Future<LaunchDetailsResponse> launchDetails({required LaunchDetailsRequest request}) {
    debugPrint("inside launch details api service 2: ${request.toJson()}");
    Dio dio = Dio();

    return dio.post("http://192.168.0.134:9890$LAUNCH_DETAILS", data: jsonEncode(request)).then(
      (value) {
        debugPrint("value: $value");
        // if (value.data != null) {
        return LaunchDetailsResponse.fromJson(value.data);
        // }

        // return Future.error(
        //   BasicErrorResponse.fromJson(value['error']),
        // );
      },
    );
  }
}
