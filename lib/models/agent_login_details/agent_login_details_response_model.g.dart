// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_login_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AgentLoginDetailsResponseModelImpl
    _$$AgentLoginDetailsResponseModelImplFromJson(Map<String, dynamic> json) =>
        _$AgentLoginDetailsResponseModelImpl(
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

Map<String, dynamic> _$$AgentLoginDetailsResponseModelImplToJson(
        _$AgentLoginDetailsResponseModelImpl instance) =>
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
