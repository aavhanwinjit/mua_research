// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaunchDetailsResponseImpl _$$LaunchDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LaunchDetailsResponseImpl(
      header: json['h'] == null
          ? null
          : HeaderModel.fromJson(json['h'] as Map<String, dynamic>),
      body: json['b'] == null
          ? null
          : LaunchDetailsData.fromJson(json['b'] as Map<String, dynamic>),
      status: json['s'] == null
          ? null
          : StatusModel.fromJson(json['s'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LaunchDetailsResponseImplToJson(
        _$LaunchDetailsResponseImpl instance) =>
    <String, dynamic>{
      'h': instance.header,
      'b': instance.body,
      's': instance.status,
    };

_$LaunchDetailsDataImpl _$$LaunchDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LaunchDetailsDataImpl(
      responseBody: json['rb'] == null
          ? null
          : LaunchDetailsResponseBody.fromJson(
              json['rb'] as Map<String, dynamic>),
      checkSum: json['checkSum'] as String?,
    );

Map<String, dynamic> _$$LaunchDetailsDataImplToJson(
        _$LaunchDetailsDataImpl instance) =>
    <String, dynamic>{
      'rb': instance.responseBody,
      'checkSum': instance.checkSum,
    };

_$LaunchDetailsResponseBodyImpl _$$LaunchDetailsResponseBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$LaunchDetailsResponseBodyImpl(
      appStart: json['appStart'] == null
          ? null
          : AppStart.fromJson(json['appStart'] as Map<String, dynamic>),
      agentData: json['agentData'] == null
          ? null
          : AgentData.fromJson(json['agentData'] as Map<String, dynamic>),
      appSettingsData: json['appSettingsData'] == null
          ? null
          : AppSettingsData.fromJson(
              json['appSettingsData'] as Map<String, dynamic>),
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => Language.fromJson(e as Map<String, dynamic>))
          .toList(),
      tokenData: json['tokenData'] == null
          ? null
          : TokenData.fromJson(json['tokenData'] as Map<String, dynamic>),
      unreadPushMessageCount: json['unreadPushMessageCount'] as int?,
    );

Map<String, dynamic> _$$LaunchDetailsResponseBodyImplToJson(
        _$LaunchDetailsResponseBodyImpl instance) =>
    <String, dynamic>{
      'appStart': instance.appStart,
      'agentData': instance.agentData,
      'appSettingsData': instance.appSettingsData,
      'languages': instance.languages,
      'tokenData': instance.tokenData,
      'unreadPushMessageCount': instance.unreadPushMessageCount,
    };

_$AgentDataImpl _$$AgentDataImplFromJson(Map<String, dynamic> json) =>
    _$AgentDataImpl(
      isValidDeviceToken: json['isValidDeviceToken'] as bool?,
      isBlocked: json['isBlocked'] as bool?,
      blockedTill: json['blockedTill'] == null
          ? null
          : DateTime.parse(json['blockedTill'] as String),
      loginData: json['loginData'] == null
          ? null
          : LoginData.fromJson(json['loginData'] as Map<String, dynamic>),
      agentId: json['agentId'] as int?,
    );

Map<String, dynamic> _$$AgentDataImplToJson(_$AgentDataImpl instance) =>
    <String, dynamic>{
      'isValidDeviceToken': instance.isValidDeviceToken,
      'isBlocked': instance.isBlocked,
      'blockedTill': instance.blockedTill?.toIso8601String(),
      'loginData': instance.loginData,
      'agentId': instance.agentId,
    };

_$LoginDataImpl _$$LoginDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataImpl(
      isFpLogin: json['isFPLogin'] as bool?,
      mobileNo: json['mobileNo'] as String?,
      name: json['name'] as String?,
      deviceToken: json['deviceToken'] as String?,
      profileImagePath: json['profileImagePath'] as String?,
      isMpinExpired: json['isMPINExpired'] as bool?,
    );

Map<String, dynamic> _$$LoginDataImplToJson(_$LoginDataImpl instance) =>
    <String, dynamic>{
      'isFPLogin': instance.isFpLogin,
      'mobileNo': instance.mobileNo,
      'name': instance.name,
      'deviceToken': instance.deviceToken,
      'profileImagePath': instance.profileImagePath,
      'isMPINExpired': instance.isMpinExpired,
    };

_$AppSettingsDataImpl _$$AppSettingsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsDataImpl(
      currentServerDate: json['currentServerDate'] as String?,
      enableSslPinning: json['enableSSLPinning'] as bool?,
      keys: json['keys'] as String?,
      appShareLink: json['appShareLink'] as String?,
      fcmToken: json['fcmToken'] as String?,
      languageId: json['languageId'] as int?,
      dmsLink: json['dmsLink'] as String?,
      tempDmsLink: json['tempDMSLink'] as String?,
      callUsNumber: json['callUsNumber'] as String?,
      appDemoLink: json['appDemoLink'] as String?,
      tncurl: json['tncurl'] as String?,
    );

Map<String, dynamic> _$$AppSettingsDataImplToJson(
        _$AppSettingsDataImpl instance) =>
    <String, dynamic>{
      'currentServerDate': instance.currentServerDate,
      'enableSSLPinning': instance.enableSslPinning,
      'keys': instance.keys,
      'appShareLink': instance.appShareLink,
      'fcmToken': instance.fcmToken,
      'languageId': instance.languageId,
      'dmsLink': instance.dmsLink,
      'tempDMSLink': instance.tempDmsLink,
      'callUsNumber': instance.callUsNumber,
      'appDemoLink': instance.appDemoLink,
      'tncurl': instance.tncurl,
    };

_$AppStartImpl _$$AppStartImplFromJson(Map<String, dynamic> json) =>
    _$AppStartImpl(
      isDisabled: json['isDisabled'] as bool?,
      crd: json['crd'] == null ? null : DateTime.parse(json['crd'] as String),
      crdBy: json['crdBy'] as int?,
      lmd: json['lmd'] == null ? null : DateTime.parse(json['lmd'] as String),
      lmdBy: json['lmdBy'] as int?,
      appStartId: json['appStartId'] as int?,
      platform: json['platform'] as String?,
      storeVersion: json['storeVersion'] as String?,
      apiVer: json['apiVer'] as String?,
      isForceUpdate: json['isForceUpdate'] as bool?,
      description: json['description'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      isActive: json['isActive'] as bool?,
      channelId: json['channelId'] as String?,
    );

Map<String, dynamic> _$$AppStartImplToJson(_$AppStartImpl instance) =>
    <String, dynamic>{
      'isDisabled': instance.isDisabled,
      'crd': instance.crd?.toIso8601String(),
      'crdBy': instance.crdBy,
      'lmd': instance.lmd?.toIso8601String(),
      'lmdBy': instance.lmdBy,
      'appStartId': instance.appStartId,
      'platform': instance.platform,
      'storeVersion': instance.storeVersion,
      'apiVer': instance.apiVer,
      'isForceUpdate': instance.isForceUpdate,
      'description': instance.description,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'isActive': instance.isActive,
      'channelId': instance.channelId,
    };

_$LanguageImpl _$$LanguageImplFromJson(Map<String, dynamic> json) =>
    _$LanguageImpl(
      languageId: json['languageId'] as int?,
      languageCode: json['languageCode'] as String?,
      languageName: json['languageName'] as String?,
    );

Map<String, dynamic> _$$LanguageImplToJson(_$LanguageImpl instance) =>
    <String, dynamic>{
      'languageId': instance.languageId,
      'languageCode': instance.languageCode,
      'languageName': instance.languageName,
    };
