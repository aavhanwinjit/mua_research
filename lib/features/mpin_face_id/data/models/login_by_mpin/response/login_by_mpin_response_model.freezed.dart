// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_by_mpin_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginbyMpinResponseModel _$LoginbyMpinResponseModelFromJson(
    Map<String, dynamic> json) {
  return _LoginbyMpinResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginbyMpinResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  LoginByMpinData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginbyMpinResponseModelCopyWith<LoginbyMpinResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginbyMpinResponseModelCopyWith<$Res> {
  factory $LoginbyMpinResponseModelCopyWith(LoginbyMpinResponseModel value,
          $Res Function(LoginbyMpinResponseModel) then) =
      _$LoginbyMpinResponseModelCopyWithImpl<$Res, LoginbyMpinResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LoginByMpinData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $LoginByMpinDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$LoginbyMpinResponseModelCopyWithImpl<$Res,
        $Val extends LoginbyMpinResponseModel>
    implements $LoginbyMpinResponseModelCopyWith<$Res> {
  _$LoginbyMpinResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as LoginByMpinData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HeaderModelCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $HeaderModelCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginByMpinDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $LoginByMpinDataCopyWith<$Res>(_value.body!, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginbyMpinResponseModelImplCopyWith<$Res>
    implements $LoginbyMpinResponseModelCopyWith<$Res> {
  factory _$$LoginbyMpinResponseModelImplCopyWith(
          _$LoginbyMpinResponseModelImpl value,
          $Res Function(_$LoginbyMpinResponseModelImpl) then) =
      __$$LoginbyMpinResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LoginByMpinData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $LoginByMpinDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$LoginbyMpinResponseModelImplCopyWithImpl<$Res>
    extends _$LoginbyMpinResponseModelCopyWithImpl<$Res,
        _$LoginbyMpinResponseModelImpl>
    implements _$$LoginbyMpinResponseModelImplCopyWith<$Res> {
  __$$LoginbyMpinResponseModelImplCopyWithImpl(
      _$LoginbyMpinResponseModelImpl _value,
      $Res Function(_$LoginbyMpinResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$LoginbyMpinResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as LoginByMpinData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginbyMpinResponseModelImpl implements _LoginbyMpinResponseModel {
  const _$LoginbyMpinResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$LoginbyMpinResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginbyMpinResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final LoginByMpinData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'LoginbyMpinResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginbyMpinResponseModelImpl &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, header, body, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginbyMpinResponseModelImplCopyWith<_$LoginbyMpinResponseModelImpl>
      get copyWith => __$$LoginbyMpinResponseModelImplCopyWithImpl<
          _$LoginbyMpinResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginbyMpinResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginbyMpinResponseModel implements LoginbyMpinResponseModel {
  const factory _LoginbyMpinResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final LoginByMpinData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$LoginbyMpinResponseModelImpl;

  factory _LoginbyMpinResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginbyMpinResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  LoginByMpinData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$LoginbyMpinResponseModelImplCopyWith<_$LoginbyMpinResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoginByMpinData _$LoginByMpinDataFromJson(Map<String, dynamic> json) {
  return _LoginByMpinData.fromJson(json);
}

/// @nodoc
mixin _$LoginByMpinData {
  @JsonKey(name: "rb")
  LoginByMpinResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginByMpinDataCopyWith<LoginByMpinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginByMpinDataCopyWith<$Res> {
  factory $LoginByMpinDataCopyWith(
          LoginByMpinData value, $Res Function(LoginByMpinData) then) =
      _$LoginByMpinDataCopyWithImpl<$Res, LoginByMpinData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") LoginByMpinResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $LoginByMpinResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$LoginByMpinDataCopyWithImpl<$Res, $Val extends LoginByMpinData>
    implements $LoginByMpinDataCopyWith<$Res> {
  _$LoginByMpinDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_value.copyWith(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as LoginByMpinResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginByMpinResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $LoginByMpinResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginByMpinDataImplCopyWith<$Res>
    implements $LoginByMpinDataCopyWith<$Res> {
  factory _$$LoginByMpinDataImplCopyWith(_$LoginByMpinDataImpl value,
          $Res Function(_$LoginByMpinDataImpl) then) =
      __$$LoginByMpinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") LoginByMpinResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $LoginByMpinResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$LoginByMpinDataImplCopyWithImpl<$Res>
    extends _$LoginByMpinDataCopyWithImpl<$Res, _$LoginByMpinDataImpl>
    implements _$$LoginByMpinDataImplCopyWith<$Res> {
  __$$LoginByMpinDataImplCopyWithImpl(
      _$LoginByMpinDataImpl _value, $Res Function(_$LoginByMpinDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$LoginByMpinDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as LoginByMpinResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginByMpinDataImpl implements _LoginByMpinData {
  const _$LoginByMpinDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$LoginByMpinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginByMpinDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final LoginByMpinResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'LoginByMpinData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginByMpinDataImpl &&
            (identical(other.responseBody, responseBody) ||
                other.responseBody == responseBody) &&
            (identical(other.checkSum, checkSum) ||
                other.checkSum == checkSum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, responseBody, checkSum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginByMpinDataImplCopyWith<_$LoginByMpinDataImpl> get copyWith =>
      __$$LoginByMpinDataImplCopyWithImpl<_$LoginByMpinDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginByMpinDataImplToJson(
      this,
    );
  }
}

abstract class _LoginByMpinData implements LoginByMpinData {
  const factory _LoginByMpinData(
          {@JsonKey(name: "rb") final LoginByMpinResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$LoginByMpinDataImpl;

  factory _LoginByMpinData.fromJson(Map<String, dynamic> json) =
      _$LoginByMpinDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  LoginByMpinResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$LoginByMpinDataImplCopyWith<_$LoginByMpinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginByMpinResponseBody _$LoginByMpinResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _LoginByMpinResponseBody.fromJson(json);
}

/// @nodoc
mixin _$LoginByMpinResponseBody {
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
  $LoginByMpinResponseBodyCopyWith<LoginByMpinResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginByMpinResponseBodyCopyWith<$Res> {
  factory $LoginByMpinResponseBodyCopyWith(LoginByMpinResponseBody value,
          $Res Function(LoginByMpinResponseBody) then) =
      _$LoginByMpinResponseBodyCopyWithImpl<$Res, LoginByMpinResponseBody>;
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
class _$LoginByMpinResponseBodyCopyWithImpl<$Res,
        $Val extends LoginByMpinResponseBody>
    implements $LoginByMpinResponseBodyCopyWith<$Res> {
  _$LoginByMpinResponseBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginByMpinResponseBodyImplCopyWith<$Res>
    implements $LoginByMpinResponseBodyCopyWith<$Res> {
  factory _$$LoginByMpinResponseBodyImplCopyWith(
          _$LoginByMpinResponseBodyImpl value,
          $Res Function(_$LoginByMpinResponseBodyImpl) then) =
      __$$LoginByMpinResponseBodyImplCopyWithImpl<$Res>;
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
class __$$LoginByMpinResponseBodyImplCopyWithImpl<$Res>
    extends _$LoginByMpinResponseBodyCopyWithImpl<$Res,
        _$LoginByMpinResponseBodyImpl>
    implements _$$LoginByMpinResponseBodyImplCopyWith<$Res> {
  __$$LoginByMpinResponseBodyImplCopyWithImpl(
      _$LoginByMpinResponseBodyImpl _value,
      $Res Function(_$LoginByMpinResponseBodyImpl) _then)
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
    return _then(_$LoginByMpinResponseBodyImpl(
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
class _$LoginByMpinResponseBodyImpl implements _LoginByMpinResponseBody {
  const _$LoginByMpinResponseBodyImpl(
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

  factory _$LoginByMpinResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginByMpinResponseBodyImplFromJson(json);

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
    return 'LoginByMpinResponseBody(agentId: $agentId, agentName: $agentName, mobileNumber: $mobileNumber, emailId: $emailId, authToken: $authToken, isMpinExpired: $isMpinExpired, isFirstLogin: $isFirstLogin, deviceToken: $deviceToken, fpDeviceToken: $fpDeviceToken, profileImagePath: $profileImagePath, referralCode: $referralCode, isBirthday: $isBirthday, agentAuthStatus: $agentAuthStatus, kycType: $kycType, kycStatus: $kycStatus, isFpLogin: $isFpLogin, authorized: $authorized, dailyLimit: $dailyLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginByMpinResponseBodyImpl &&
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
  _$$LoginByMpinResponseBodyImplCopyWith<_$LoginByMpinResponseBodyImpl>
      get copyWith => __$$LoginByMpinResponseBodyImplCopyWithImpl<
          _$LoginByMpinResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginByMpinResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _LoginByMpinResponseBody implements LoginByMpinResponseBody {
  const factory _LoginByMpinResponseBody(
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
      _$LoginByMpinResponseBodyImpl;

  factory _LoginByMpinResponseBody.fromJson(Map<String, dynamic> json) =
      _$LoginByMpinResponseBodyImpl.fromJson;

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
  _$$LoginByMpinResponseBodyImplCopyWith<_$LoginByMpinResponseBodyImpl>
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
