// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_agent_mpin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetAgentMpinResponseModelImpl _$$SetAgentMpinResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAgentMpinResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : SetAgentMpinData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetAgentMpinResponseModelImplToJson(
        _$SetAgentMpinResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$SetAgentMpinDataImpl _$$SetAgentMpinDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SetAgentMpinDataImpl(
      responseBody: json['rb'] == null
          ? null
          : ResponseBody.fromJson(json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$SetAgentMpinDataImplToJson(
        _$SetAgentMpinDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$ResponseBodyImpl _$$ResponseBodyImplFromJson(Map<String, dynamic> json) =>
    _$ResponseBodyImpl(
      agentId: json['agentId'] as int?,
      agentName: json['agentName'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      emailId: json['emailId'] as String?,
      authToken: json['authToken'] == null
          ? null
          : AuthToken.fromJson(json['authToken'] as Map<String, dynamic>),
      isMpinExpired: json['isMPINExpired'] as bool?,
      isFirstLogin: json['isFirstLogin'] as bool?,
      deviceToken: json['deviceToken'] as String?,
      fpDeviceToken: json['fpDeviceToken'] as String?,
      profileImagePath: json['profileImagePath'] as String?,
      referralCode: json['referralCode'] as String?,
      isBirthday: json['isBirthday'] as bool?,
      agentAuthStatus: json['agentAuthStatus'],
      kycType: json['kycType'],
      kycStatus: json['kycStatus'],
      isFpLogin: json['isFPLogin'] as bool?,
      authorized: json['authorized'],
      dailyLimit: json['dailyLimit'],
    );

Map<String, dynamic> _$$ResponseBodyImplToJson(_$ResponseBodyImpl instance) =>
    <String, dynamic>{
      'agentId': instance.agentId,
      'agentName': instance.agentName,
      'mobileNumber': instance.mobileNumber,
      'emailId': instance.emailId,
      'authToken': instance.authToken,
      'isMPINExpired': instance.isMpinExpired,
      'isFirstLogin': instance.isFirstLogin,
      'deviceToken': instance.deviceToken,
      'fpDeviceToken': instance.fpDeviceToken,
      'profileImagePath': instance.profileImagePath,
      'referralCode': instance.referralCode,
      'isBirthday': instance.isBirthday,
      'agentAuthStatus': instance.agentAuthStatus,
      'kycType': instance.kycType,
      'kycStatus': instance.kycStatus,
      'isFPLogin': instance.isFpLogin,
      'authorized': instance.authorized,
      'dailyLimit': instance.dailyLimit,
    };

_$AuthTokenImpl _$$AuthTokenImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokenImpl(
      token: json['token'] as String?,
      sessionId: json['sessionId'] as String?,
      expiry: json['expiry'] as int?,
    );

Map<String, dynamic> _$$AuthTokenImplToJson(_$AuthTokenImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'sessionId': instance.sessionId,
      'expiry': instance.expiry,
    };
