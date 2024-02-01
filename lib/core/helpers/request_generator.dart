import 'dart:math';

import 'package:ekyc/core/helpers/device_information_helper.dart';
import 'package:ekyc/models/generic_header/header_model.dart';
import 'package:ekyc/models/generic_request/request_model.dart';
import 'package:ekyc/models/message_key/message_key_model.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class RequestGenerator {
  final DeviceInformationHelper deviceInformationHelper;

  RequestGenerator({required this.deviceInformationHelper});

  MessageKeyModel generateMessageKeyModel({required String serviceRequest}) {
    const String requestUUID = "1624521819414qj7ld, a23a5494-cc56-4ae3-a2ed-cdcd59acc23a_2024012316365815";
    const String channelId = "Agent";
    const String journeyId = "fa71c4eb-170602780284924";
    const String sessionId = "fa71c4eb-170602780284924";
    final int index = generateIndex();
    const String languageId = "1";
    final String timestamp = DateTime.now().millisecondsSinceEpoch.toString();

    final MessageKeyModel messageKeyModel = MessageKeyModel(
      requestUUID: requestUUID,
      serviceRequest: serviceRequest,
      channelId: channelId,
      journeyId: journeyId,
      sessionId: sessionId,
      index: index.toString(),
      languageId: languageId,
      timestamp: timestamp,
    );

    return messageKeyModel;
  }

  Future<HeaderModel> generateHeaderObject({required String serviceRequest}) async {
    final deviceInfo = await deviceInformationHelper.generateDeviceInformation();
    final messageKey = generateMessageKeyModel(serviceRequest: serviceRequest);

    final HeaderModel header = HeaderModel(deviceInfo: deviceInfo, messageKey: messageKey);

    return header;
  }

  Future<RequestModel> generateRequestModel({required dynamic body, required String apiEndpoint}) async {
    final HeaderModel header = await generateHeaderObject(serviceRequest: apiEndpoint);

    RequestModel request = RequestModel(body: body, header: header);

    return request;
  }

  static int generateIndex() {
    return Random().nextInt(15);
  }
}
