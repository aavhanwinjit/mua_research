// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_by_mpin_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginbyMpinResponseModelImpl _$$LoginbyMpinResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginbyMpinResponseModelImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : LoginByMpinData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginbyMpinResponseModelImplToJson(
        _$LoginbyMpinResponseModelImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$LoginByMpinDataImpl _$$LoginByMpinDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginByMpinDataImpl(
      responseBody: json['rb'] == null
          ? null
          : LoginByMpinResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$LoginByMpinDataImplToJson(
        _$LoginByMpinDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$LoginByMpinResponseBodyImpl _$$LoginByMpinResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginByMpinResponseBodyImpl(
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
      agentAuthStatus: json['agentAuthStatus'] as String?,
      kycType: json['kycType'] as String?,
      kycStatus: json['kycStatus'] as String?,
      isFpLogin: json['isFPLogin'] as bool?,
      authorized: json['authorized'] as bool?,
      dailyLimit: json['dailyLimit'] as int?,
    );

Map<String, dynamic> _$$LoginByMpinResponseBodyImplToJson(
        _$LoginByMpinResponseBodyImpl instance) =>
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
