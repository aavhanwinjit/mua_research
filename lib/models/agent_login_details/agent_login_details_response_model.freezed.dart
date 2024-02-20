// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_login_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgentLoginDetailsResponseModel _$AgentLoginDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AgentLoginDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AgentLoginDetailsResponseModel {
  @JsonKey(name: "agentId")
  int? get agentId => throw _privateConstructorUsedError;
  @JsonKey(name: "agentName")
  String? get agentName => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "emailId")
  String? get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: "authToken")
  AuthToken? get authToken => throw _privateConstructorUsedError;
  @JsonKey(name: "isMPINExpired")
  bool? get isMpinExpired => throw _privateConstructorUsedError;
  @JsonKey(name: "isFirstLogin")
  bool? get isFirstLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "fpDeviceToken")
  String? get fpDeviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImagePath")
  String? get profileImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "referralCode")
  String? get referralCode => throw _privateConstructorUsedError;
  @JsonKey(name: "isBirthday")
  bool? get isBirthday => throw _privateConstructorUsedError;
  @JsonKey(name: "agentAuthStatus")
  String? get agentAuthStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "kycType")
  String? get kycType => throw _privateConstructorUsedError;
  @JsonKey(name: "kycStatus")
  String? get kycStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "isFPLogin")
  bool? get isFpLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "authorized")
  bool? get authorized => throw _privateConstructorUsedError;
  @JsonKey(name: "dailyLimit")
  int? get dailyLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentLoginDetailsResponseModelCopyWith<AgentLoginDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentLoginDetailsResponseModelCopyWith<$Res> {
  factory $AgentLoginDetailsResponseModelCopyWith(
          AgentLoginDetailsResponseModel value,
          $Res Function(AgentLoginDetailsResponseModel) then) =
      _$AgentLoginDetailsResponseModelCopyWithImpl<$Res,
          AgentLoginDetailsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentId") int? agentId,
      @JsonKey(name: "agentName") String? agentName,
      @JsonKey(name: "mobileNumber") String? mobileNumber,
      @JsonKey(name: "emailId") String? emailId,
      @JsonKey(name: "authToken") AuthToken? authToken,
      @JsonKey(name: "isMPINExpired") bool? isMpinExpired,
      @JsonKey(name: "isFirstLogin") bool? isFirstLogin,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "fpDeviceToken") String? fpDeviceToken,
      @JsonKey(name: "profileImagePath") String? profileImagePath,
      @JsonKey(name: "referralCode") String? referralCode,
      @JsonKey(name: "isBirthday") bool? isBirthday,
      @JsonKey(name: "agentAuthStatus") String? agentAuthStatus,
      @JsonKey(name: "kycType") String? kycType,
      @JsonKey(name: "kycStatus") String? kycStatus,
      @JsonKey(name: "isFPLogin") bool? isFpLogin,
      @JsonKey(name: "authorized") bool? authorized,
      @JsonKey(name: "dailyLimit") int? dailyLimit});

  $AuthTokenCopyWith<$Res>? get authToken;
}

/// @nodoc
class _$AgentLoginDetailsResponseModelCopyWithImpl<$Res,
        $Val extends AgentLoginDetailsResponseModel>
    implements $AgentLoginDetailsResponseModelCopyWith<$Res> {
  _$AgentLoginDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentId = freezed,
    Object? agentName = freezed,
    Object? mobileNumber = freezed,
    Object? emailId = freezed,
    Object? authToken = freezed,
    Object? isMpinExpired = freezed,
    Object? isFirstLogin = freezed,
    Object? deviceToken = freezed,
    Object? fpDeviceToken = freezed,
    Object? profileImagePath = freezed,
    Object? referralCode = freezed,
    Object? isBirthday = freezed,
    Object? agentAuthStatus = freezed,
    Object? kycType = freezed,
    Object? kycStatus = freezed,
    Object? isFpLogin = freezed,
    Object? authorized = freezed,
    Object? dailyLimit = freezed,
  }) {
    return _then(_value.copyWith(
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentName: freezed == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as AuthToken?,
      isMpinExpired: freezed == isMpinExpired
          ? _value.isMpinExpired
          : isMpinExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFirstLogin: freezed == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fpDeviceToken: freezed == fpDeviceToken
          ? _value.fpDeviceToken
          : fpDeviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImagePath: freezed == profileImagePath
          ? _value.profileImagePath
          : profileImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isBirthday: freezed == isBirthday
          ? _value.isBirthday
          : isBirthday // ignore: cast_nullable_to_non_nullable
              as bool?,
      agentAuthStatus: freezed == agentAuthStatus
          ? _value.agentAuthStatus
          : agentAuthStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      kycType: freezed == kycType
          ? _value.kycType
          : kycType // ignore: cast_nullable_to_non_nullable
              as String?,
      kycStatus: freezed == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isFpLogin: freezed == isFpLogin
          ? _value.isFpLogin
          : isFpLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      authorized: freezed == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as bool?,
      dailyLimit: freezed == dailyLimit
          ? _value.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenCopyWith<$Res>? get authToken {
    if (_value.authToken == null) {
      return null;
    }

    return $AuthTokenCopyWith<$Res>(_value.authToken!, (value) {
      return _then(_value.copyWith(authToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentLoginDetailsResponseModelImplCopyWith<$Res>
    implements $AgentLoginDetailsResponseModelCopyWith<$Res> {
  factory _$$AgentLoginDetailsResponseModelImplCopyWith(
          _$AgentLoginDetailsResponseModelImpl value,
          $Res Function(_$AgentLoginDetailsResponseModelImpl) then) =
      __$$AgentLoginDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentId") int? agentId,
      @JsonKey(name: "agentName") String? agentName,
      @JsonKey(name: "mobileNumber") String? mobileNumber,
      @JsonKey(name: "emailId") String? emailId,
      @JsonKey(name: "authToken") AuthToken? authToken,
      @JsonKey(name: "isMPINExpired") bool? isMpinExpired,
      @JsonKey(name: "isFirstLogin") bool? isFirstLogin,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "fpDeviceToken") String? fpDeviceToken,
      @JsonKey(name: "profileImagePath") String? profileImagePath,
      @JsonKey(name: "referralCode") String? referralCode,
      @JsonKey(name: "isBirthday") bool? isBirthday,
      @JsonKey(name: "agentAuthStatus") String? agentAuthStatus,
      @JsonKey(name: "kycType") String? kycType,
      @JsonKey(name: "kycStatus") String? kycStatus,
      @JsonKey(name: "isFPLogin") bool? isFpLogin,
      @JsonKey(name: "authorized") bool? authorized,
      @JsonKey(name: "dailyLimit") int? dailyLimit});

  @override
  $AuthTokenCopyWith<$Res>? get authToken;
}

/// @nodoc
class __$$AgentLoginDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$AgentLoginDetailsResponseModelCopyWithImpl<$Res,
        _$AgentLoginDetailsResponseModelImpl>
    implements _$$AgentLoginDetailsResponseModelImplCopyWith<$Res> {
  __$$AgentLoginDetailsResponseModelImplCopyWithImpl(
      _$AgentLoginDetailsResponseModelImpl _value,
      $Res Function(_$AgentLoginDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentId = freezed,
    Object? agentName = freezed,
    Object? mobileNumber = freezed,
    Object? emailId = freezed,
    Object? authToken = freezed,
    Object? isMpinExpired = freezed,
    Object? isFirstLogin = freezed,
    Object? deviceToken = freezed,
    Object? fpDeviceToken = freezed,
    Object? profileImagePath = freezed,
    Object? referralCode = freezed,
    Object? isBirthday = freezed,
    Object? agentAuthStatus = freezed,
    Object? kycType = freezed,
    Object? kycStatus = freezed,
    Object? isFpLogin = freezed,
    Object? authorized = freezed,
    Object? dailyLimit = freezed,
  }) {
    return _then(_$AgentLoginDetailsResponseModelImpl(
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentName: freezed == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      authToken: freezed == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as AuthToken?,
      isMpinExpired: freezed == isMpinExpired
          ? _value.isMpinExpired
          : isMpinExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFirstLogin: freezed == isFirstLogin
          ? _value.isFirstLogin
          : isFirstLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fpDeviceToken: freezed == fpDeviceToken
          ? _value.fpDeviceToken
          : fpDeviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImagePath: freezed == profileImagePath
          ? _value.profileImagePath
          : profileImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isBirthday: freezed == isBirthday
          ? _value.isBirthday
          : isBirthday // ignore: cast_nullable_to_non_nullable
              as bool?,
      agentAuthStatus: freezed == agentAuthStatus
          ? _value.agentAuthStatus
          : agentAuthStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      kycType: freezed == kycType
          ? _value.kycType
          : kycType // ignore: cast_nullable_to_non_nullable
              as String?,
      kycStatus: freezed == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      isFpLogin: freezed == isFpLogin
          ? _value.isFpLogin
          : isFpLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      authorized: freezed == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as bool?,
      dailyLimit: freezed == dailyLimit
          ? _value.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentLoginDetailsResponseModelImpl
    implements _AgentLoginDetailsResponseModel {
  const _$AgentLoginDetailsResponseModelImpl(
      {@JsonKey(name: "agentId") this.agentId,
      @JsonKey(name: "agentName") this.agentName,
      @JsonKey(name: "mobileNumber") this.mobileNumber,
      @JsonKey(name: "emailId") this.emailId,
      @JsonKey(name: "authToken") this.authToken,
      @JsonKey(name: "isMPINExpired") this.isMpinExpired,
      @JsonKey(name: "isFirstLogin") this.isFirstLogin,
      @JsonKey(name: "deviceToken") this.deviceToken,
      @JsonKey(name: "fpDeviceToken") this.fpDeviceToken,
      @JsonKey(name: "profileImagePath") this.profileImagePath,
      @JsonKey(name: "referralCode") this.referralCode,
      @JsonKey(name: "isBirthday") this.isBirthday,
      @JsonKey(name: "agentAuthStatus") this.agentAuthStatus,
      @JsonKey(name: "kycType") this.kycType,
      @JsonKey(name: "kycStatus") this.kycStatus,
      @JsonKey(name: "isFPLogin") this.isFpLogin,
      @JsonKey(name: "authorized") this.authorized,
      @JsonKey(name: "dailyLimit") this.dailyLimit});

  factory _$AgentLoginDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AgentLoginDetailsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "agentId")
  final int? agentId;
  @override
  @JsonKey(name: "agentName")
  final String? agentName;
  @override
  @JsonKey(name: "mobileNumber")
  final String? mobileNumber;
  @override
  @JsonKey(name: "emailId")
  final String? emailId;
  @override
  @JsonKey(name: "authToken")
  final AuthToken? authToken;
  @override
  @JsonKey(name: "isMPINExpired")
  final bool? isMpinExpired;
  @override
  @JsonKey(name: "isFirstLogin")
  final bool? isFirstLogin;
  @override
  @JsonKey(name: "deviceToken")
  final String? deviceToken;
  @override
  @JsonKey(name: "fpDeviceToken")
  final String? fpDeviceToken;
  @override
  @JsonKey(name: "profileImagePath")
  final String? profileImagePath;
  @override
  @JsonKey(name: "referralCode")
  final String? referralCode;
  @override
  @JsonKey(name: "isBirthday")
  final bool? isBirthday;
  @override
  @JsonKey(name: "agentAuthStatus")
  final String? agentAuthStatus;
  @override
  @JsonKey(name: "kycType")
  final String? kycType;
  @override
  @JsonKey(name: "kycStatus")
  final String? kycStatus;
  @override
  @JsonKey(name: "isFPLogin")
  final bool? isFpLogin;
  @override
  @JsonKey(name: "authorized")
  final bool? authorized;
  @override
  @JsonKey(name: "dailyLimit")
  final int? dailyLimit;

  @override
  String toString() {
    return 'AgentLoginDetailsResponseModel(agentId: $agentId, agentName: $agentName, mobileNumber: $mobileNumber, emailId: $emailId, authToken: $authToken, isMpinExpired: $isMpinExpired, isFirstLogin: $isFirstLogin, deviceToken: $deviceToken, fpDeviceToken: $fpDeviceToken, profileImagePath: $profileImagePath, referralCode: $referralCode, isBirthday: $isBirthday, agentAuthStatus: $agentAuthStatus, kycType: $kycType, kycStatus: $kycStatus, isFpLogin: $isFpLogin, authorized: $authorized, dailyLimit: $dailyLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentLoginDetailsResponseModelImpl &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.isMpinExpired, isMpinExpired) ||
                other.isMpinExpired == isMpinExpired) &&
            (identical(other.isFirstLogin, isFirstLogin) ||
                other.isFirstLogin == isFirstLogin) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.fpDeviceToken, fpDeviceToken) ||
                other.fpDeviceToken == fpDeviceToken) &&
            (identical(other.profileImagePath, profileImagePath) ||
                other.profileImagePath == profileImagePath) &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            (identical(other.isBirthday, isBirthday) ||
                other.isBirthday == isBirthday) &&
            (identical(other.agentAuthStatus, agentAuthStatus) ||
                other.agentAuthStatus == agentAuthStatus) &&
            (identical(other.kycType, kycType) || other.kycType == kycType) &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus) &&
            (identical(other.isFpLogin, isFpLogin) ||
                other.isFpLogin == isFpLogin) &&
            (identical(other.authorized, authorized) ||
                other.authorized == authorized) &&
            (identical(other.dailyLimit, dailyLimit) ||
                other.dailyLimit == dailyLimit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentId,
      agentName,
      mobileNumber,
      emailId,
      authToken,
      isMpinExpired,
      isFirstLogin,
      deviceToken,
      fpDeviceToken,
      profileImagePath,
      referralCode,
      isBirthday,
      agentAuthStatus,
      kycType,
      kycStatus,
      isFpLogin,
      authorized,
      dailyLimit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentLoginDetailsResponseModelImplCopyWith<
          _$AgentLoginDetailsResponseModelImpl>
      get copyWith => __$$AgentLoginDetailsResponseModelImplCopyWithImpl<
          _$AgentLoginDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentLoginDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AgentLoginDetailsResponseModel
    implements AgentLoginDetailsResponseModel {
  const factory _AgentLoginDetailsResponseModel(
          {@JsonKey(name: "agentId") final int? agentId,
          @JsonKey(name: "agentName") final String? agentName,
          @JsonKey(name: "mobileNumber") final String? mobileNumber,
          @JsonKey(name: "emailId") final String? emailId,
          @JsonKey(name: "authToken") final AuthToken? authToken,
          @JsonKey(name: "isMPINExpired") final bool? isMpinExpired,
          @JsonKey(name: "isFirstLogin") final bool? isFirstLogin,
          @JsonKey(name: "deviceToken") final String? deviceToken,
          @JsonKey(name: "fpDeviceToken") final String? fpDeviceToken,
          @JsonKey(name: "profileImagePath") final String? profileImagePath,
          @JsonKey(name: "referralCode") final String? referralCode,
          @JsonKey(name: "isBirthday") final bool? isBirthday,
          @JsonKey(name: "agentAuthStatus") final String? agentAuthStatus,
          @JsonKey(name: "kycType") final String? kycType,
          @JsonKey(name: "kycStatus") final String? kycStatus,
          @JsonKey(name: "isFPLogin") final bool? isFpLogin,
          @JsonKey(name: "authorized") final bool? authorized,
          @JsonKey(name: "dailyLimit") final int? dailyLimit}) =
      _$AgentLoginDetailsResponseModelImpl;

  factory _AgentLoginDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$AgentLoginDetailsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "agentId")
  int? get agentId;
  @override
  @JsonKey(name: "agentName")
  String? get agentName;
  @override
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber;
  @override
  @JsonKey(name: "emailId")
  String? get emailId;
  @override
  @JsonKey(name: "authToken")
  AuthToken? get authToken;
  @override
  @JsonKey(name: "isMPINExpired")
  bool? get isMpinExpired;
  @override
  @JsonKey(name: "isFirstLogin")
  bool? get isFirstLogin;
  @override
  @JsonKey(name: "deviceToken")
  String? get deviceToken;
  @override
  @JsonKey(name: "fpDeviceToken")
  String? get fpDeviceToken;
  @override
  @JsonKey(name: "profileImagePath")
  String? get profileImagePath;
  @override
  @JsonKey(name: "referralCode")
  String? get referralCode;
  @override
  @JsonKey(name: "isBirthday")
  bool? get isBirthday;
  @override
  @JsonKey(name: "agentAuthStatus")
  String? get agentAuthStatus;
  @override
  @JsonKey(name: "kycType")
  String? get kycType;
  @override
  @JsonKey(name: "kycStatus")
  String? get kycStatus;
  @override
  @JsonKey(name: "isFPLogin")
  bool? get isFpLogin;
  @override
  @JsonKey(name: "authorized")
  bool? get authorized;
  @override
  @JsonKey(name: "dailyLimit")
  int? get dailyLimit;
  @override
  @JsonKey(ignore: true)
  _$$AgentLoginDetailsResponseModelImplCopyWith<
          _$AgentLoginDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthToken _$AuthTokenFromJson(Map<String, dynamic> json) {
  return _AuthToken.fromJson(json);
}

/// @nodoc
mixin _$AuthToken {
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionId")
  String? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry")
  int? get expiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokenCopyWith<AuthToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenCopyWith<$Res> {
  factory $AuthTokenCopyWith(AuthToken value, $Res Function(AuthToken) then) =
      _$AuthTokenCopyWithImpl<$Res, AuthToken>;
  @useResult
  $Res call(
      {@JsonKey(name: "token") String? token,
      @JsonKey(name: "sessionId") String? sessionId,
      @JsonKey(name: "expiry") int? expiry});
}

/// @nodoc
class _$AuthTokenCopyWithImpl<$Res, $Val extends AuthToken>
    implements $AuthTokenCopyWith<$Res> {
  _$AuthTokenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? sessionId = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthTokenImplCopyWith<$Res>
    implements $AuthTokenCopyWith<$Res> {
  factory _$$AuthTokenImplCopyWith(
          _$AuthTokenImpl value, $Res Function(_$AuthTokenImpl) then) =
      __$$AuthTokenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "token") String? token,
      @JsonKey(name: "sessionId") String? sessionId,
      @JsonKey(name: "expiry") int? expiry});
}

/// @nodoc
class __$$AuthTokenImplCopyWithImpl<$Res>
    extends _$AuthTokenCopyWithImpl<$Res, _$AuthTokenImpl>
    implements _$$AuthTokenImplCopyWith<$Res> {
  __$$AuthTokenImplCopyWithImpl(
      _$AuthTokenImpl _value, $Res Function(_$AuthTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? sessionId = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_$AuthTokenImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokenImpl implements _AuthToken {
  const _$AuthTokenImpl(
      {@JsonKey(name: "token") this.token,
      @JsonKey(name: "sessionId") this.sessionId,
      @JsonKey(name: "expiry") this.expiry});

  factory _$AuthTokenImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokenImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final String? token;
  @override
  @JsonKey(name: "sessionId")
  final String? sessionId;
  @override
  @JsonKey(name: "expiry")
  final int? expiry;

  @override
  String toString() {
    return 'AuthToken(token: $token, sessionId: $sessionId, expiry: $expiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, sessionId, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenImplCopyWith<_$AuthTokenImpl> get copyWith =>
      __$$AuthTokenImplCopyWithImpl<_$AuthTokenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokenImplToJson(
      this,
    );
  }
}

abstract class _AuthToken implements AuthToken {
  const factory _AuthToken(
      {@JsonKey(name: "token") final String? token,
      @JsonKey(name: "sessionId") final String? sessionId,
      @JsonKey(name: "expiry") final int? expiry}) = _$AuthTokenImpl;

  factory _AuthToken.fromJson(Map<String, dynamic> json) =
      _$AuthTokenImpl.fromJson;

  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "sessionId")
  String? get sessionId;
  @override
  @JsonKey(name: "expiry")
  int? get expiry;
  @override
  @JsonKey(ignore: true)
  _$$AuthTokenImplCopyWith<_$AuthTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
