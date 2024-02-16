// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_agent_mpin_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetAgentMpinResponseModel _$SetAgentMpinResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SetAgentMpinResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SetAgentMpinResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SetAgentMpinData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAgentMpinResponseModelCopyWith<SetAgentMpinResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAgentMpinResponseModelCopyWith<$Res> {
  factory $SetAgentMpinResponseModelCopyWith(SetAgentMpinResponseModel value,
          $Res Function(SetAgentMpinResponseModel) then) =
      _$SetAgentMpinResponseModelCopyWithImpl<$Res, SetAgentMpinResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SetAgentMpinData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SetAgentMpinDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$SetAgentMpinResponseModelCopyWithImpl<$Res,
        $Val extends SetAgentMpinResponseModel>
    implements $SetAgentMpinResponseModelCopyWith<$Res> {
  _$SetAgentMpinResponseModelCopyWithImpl(this._value, this._then);

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
              as SetAgentMpinData?,
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
  $SetAgentMpinDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SetAgentMpinDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$SetAgentMpinResponseModelImplCopyWith<$Res>
    implements $SetAgentMpinResponseModelCopyWith<$Res> {
  factory _$$SetAgentMpinResponseModelImplCopyWith(
          _$SetAgentMpinResponseModelImpl value,
          $Res Function(_$SetAgentMpinResponseModelImpl) then) =
      __$$SetAgentMpinResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SetAgentMpinData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SetAgentMpinDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SetAgentMpinResponseModelImplCopyWithImpl<$Res>
    extends _$SetAgentMpinResponseModelCopyWithImpl<$Res,
        _$SetAgentMpinResponseModelImpl>
    implements _$$SetAgentMpinResponseModelImplCopyWith<$Res> {
  __$$SetAgentMpinResponseModelImplCopyWithImpl(
      _$SetAgentMpinResponseModelImpl _value,
      $Res Function(_$SetAgentMpinResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SetAgentMpinResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SetAgentMpinData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAgentMpinResponseModelImpl implements _SetAgentMpinResponseModel {
  const _$SetAgentMpinResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SetAgentMpinResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAgentMpinResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SetAgentMpinData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SetAgentMpinResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAgentMpinResponseModelImpl &&
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
  _$$SetAgentMpinResponseModelImplCopyWith<_$SetAgentMpinResponseModelImpl>
      get copyWith => __$$SetAgentMpinResponseModelImplCopyWithImpl<
          _$SetAgentMpinResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAgentMpinResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SetAgentMpinResponseModel implements SetAgentMpinResponseModel {
  const factory _SetAgentMpinResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SetAgentMpinData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SetAgentMpinResponseModelImpl;

  factory _SetAgentMpinResponseModel.fromJson(Map<String, dynamic> json) =
      _$SetAgentMpinResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SetAgentMpinData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SetAgentMpinResponseModelImplCopyWith<_$SetAgentMpinResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SetAgentMpinData _$SetAgentMpinDataFromJson(Map<String, dynamic> json) {
  return _SetAgentMpinData.fromJson(json);
}

/// @nodoc
mixin _$SetAgentMpinData {
  @JsonKey(name: "rb")
  ResponseBody? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAgentMpinDataCopyWith<SetAgentMpinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAgentMpinDataCopyWith<$Res> {
  factory $SetAgentMpinDataCopyWith(
          SetAgentMpinData value, $Res Function(SetAgentMpinData) then) =
      _$SetAgentMpinDataCopyWithImpl<$Res, SetAgentMpinData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $ResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SetAgentMpinDataCopyWithImpl<$Res, $Val extends SetAgentMpinData>
    implements $SetAgentMpinDataCopyWith<$Res> {
  _$SetAgentMpinDataCopyWithImpl(this._value, this._then);

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
              as ResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $ResponseBodyCopyWith<$Res>(_value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetAgentMpinDataImplCopyWith<$Res>
    implements $SetAgentMpinDataCopyWith<$Res> {
  factory _$$SetAgentMpinDataImplCopyWith(_$SetAgentMpinDataImpl value,
          $Res Function(_$SetAgentMpinDataImpl) then) =
      __$$SetAgentMpinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $ResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SetAgentMpinDataImplCopyWithImpl<$Res>
    extends _$SetAgentMpinDataCopyWithImpl<$Res, _$SetAgentMpinDataImpl>
    implements _$$SetAgentMpinDataImplCopyWith<$Res> {
  __$$SetAgentMpinDataImplCopyWithImpl(_$SetAgentMpinDataImpl _value,
      $Res Function(_$SetAgentMpinDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SetAgentMpinDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as ResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAgentMpinDataImpl implements _SetAgentMpinData {
  const _$SetAgentMpinDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SetAgentMpinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAgentMpinDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final ResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SetAgentMpinData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAgentMpinDataImpl &&
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
  _$$SetAgentMpinDataImplCopyWith<_$SetAgentMpinDataImpl> get copyWith =>
      __$$SetAgentMpinDataImplCopyWithImpl<_$SetAgentMpinDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAgentMpinDataImplToJson(
      this,
    );
  }
}

abstract class _SetAgentMpinData implements SetAgentMpinData {
  const factory _SetAgentMpinData(
          {@JsonKey(name: "rb") final ResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$SetAgentMpinDataImpl;

  factory _SetAgentMpinData.fromJson(Map<String, dynamic> json) =
      _$SetAgentMpinDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  ResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SetAgentMpinDataImplCopyWith<_$SetAgentMpinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseBody _$ResponseBodyFromJson(Map<String, dynamic> json) {
  return _ResponseBody.fromJson(json);
}

/// @nodoc
mixin _$ResponseBody {
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
  dynamic get agentAuthStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "kycType")
  dynamic get kycType => throw _privateConstructorUsedError;
  @JsonKey(name: "kycStatus")
  dynamic get kycStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "isFPLogin")
  bool? get isFpLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "authorized")
  dynamic get authorized => throw _privateConstructorUsedError;
  @JsonKey(name: "dailyLimit")
  dynamic get dailyLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseBodyCopyWith<ResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseBodyCopyWith<$Res> {
  factory $ResponseBodyCopyWith(
          ResponseBody value, $Res Function(ResponseBody) then) =
      _$ResponseBodyCopyWithImpl<$Res, ResponseBody>;
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
      @JsonKey(name: "agentAuthStatus") dynamic agentAuthStatus,
      @JsonKey(name: "kycType") dynamic kycType,
      @JsonKey(name: "kycStatus") dynamic kycStatus,
      @JsonKey(name: "isFPLogin") bool? isFpLogin,
      @JsonKey(name: "authorized") dynamic authorized,
      @JsonKey(name: "dailyLimit") dynamic dailyLimit});

  $AuthTokenCopyWith<$Res>? get authToken;
}

/// @nodoc
class _$ResponseBodyCopyWithImpl<$Res, $Val extends ResponseBody>
    implements $ResponseBodyCopyWith<$Res> {
  _$ResponseBodyCopyWithImpl(this._value, this._then);

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
              as dynamic,
      kycType: freezed == kycType
          ? _value.kycType
          : kycType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kycStatus: freezed == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isFpLogin: freezed == isFpLogin
          ? _value.isFpLogin
          : isFpLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      authorized: freezed == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dailyLimit: freezed == dailyLimit
          ? _value.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$ResponseBodyImplCopyWith<$Res>
    implements $ResponseBodyCopyWith<$Res> {
  factory _$$ResponseBodyImplCopyWith(
          _$ResponseBodyImpl value, $Res Function(_$ResponseBodyImpl) then) =
      __$$ResponseBodyImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "agentAuthStatus") dynamic agentAuthStatus,
      @JsonKey(name: "kycType") dynamic kycType,
      @JsonKey(name: "kycStatus") dynamic kycStatus,
      @JsonKey(name: "isFPLogin") bool? isFpLogin,
      @JsonKey(name: "authorized") dynamic authorized,
      @JsonKey(name: "dailyLimit") dynamic dailyLimit});

  @override
  $AuthTokenCopyWith<$Res>? get authToken;
}

/// @nodoc
class __$$ResponseBodyImplCopyWithImpl<$Res>
    extends _$ResponseBodyCopyWithImpl<$Res, _$ResponseBodyImpl>
    implements _$$ResponseBodyImplCopyWith<$Res> {
  __$$ResponseBodyImplCopyWithImpl(
      _$ResponseBodyImpl _value, $Res Function(_$ResponseBodyImpl) _then)
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
    return _then(_$ResponseBodyImpl(
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
              as dynamic,
      kycType: freezed == kycType
          ? _value.kycType
          : kycType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kycStatus: freezed == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isFpLogin: freezed == isFpLogin
          ? _value.isFpLogin
          : isFpLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      authorized: freezed == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dailyLimit: freezed == dailyLimit
          ? _value.dailyLimit
          : dailyLimit // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseBodyImpl implements _ResponseBody {
  const _$ResponseBodyImpl(
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

  factory _$ResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseBodyImplFromJson(json);

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
  final dynamic agentAuthStatus;
  @override
  @JsonKey(name: "kycType")
  final dynamic kycType;
  @override
  @JsonKey(name: "kycStatus")
  final dynamic kycStatus;
  @override
  @JsonKey(name: "isFPLogin")
  final bool? isFpLogin;
  @override
  @JsonKey(name: "authorized")
  final dynamic authorized;
  @override
  @JsonKey(name: "dailyLimit")
  final dynamic dailyLimit;

  @override
  String toString() {
    return 'ResponseBody(agentId: $agentId, agentName: $agentName, mobileNumber: $mobileNumber, emailId: $emailId, authToken: $authToken, isMpinExpired: $isMpinExpired, isFirstLogin: $isFirstLogin, deviceToken: $deviceToken, fpDeviceToken: $fpDeviceToken, profileImagePath: $profileImagePath, referralCode: $referralCode, isBirthday: $isBirthday, agentAuthStatus: $agentAuthStatus, kycType: $kycType, kycStatus: $kycStatus, isFpLogin: $isFpLogin, authorized: $authorized, dailyLimit: $dailyLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseBodyImpl &&
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
            const DeepCollectionEquality()
                .equals(other.agentAuthStatus, agentAuthStatus) &&
            const DeepCollectionEquality().equals(other.kycType, kycType) &&
            const DeepCollectionEquality().equals(other.kycStatus, kycStatus) &&
            (identical(other.isFpLogin, isFpLogin) ||
                other.isFpLogin == isFpLogin) &&
            const DeepCollectionEquality()
                .equals(other.authorized, authorized) &&
            const DeepCollectionEquality()
                .equals(other.dailyLimit, dailyLimit));
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
      const DeepCollectionEquality().hash(agentAuthStatus),
      const DeepCollectionEquality().hash(kycType),
      const DeepCollectionEquality().hash(kycStatus),
      isFpLogin,
      const DeepCollectionEquality().hash(authorized),
      const DeepCollectionEquality().hash(dailyLimit));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseBodyImplCopyWith<_$ResponseBodyImpl> get copyWith =>
      __$$ResponseBodyImplCopyWithImpl<_$ResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _ResponseBody implements ResponseBody {
  const factory _ResponseBody(
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
          @JsonKey(name: "agentAuthStatus") final dynamic agentAuthStatus,
          @JsonKey(name: "kycType") final dynamic kycType,
          @JsonKey(name: "kycStatus") final dynamic kycStatus,
          @JsonKey(name: "isFPLogin") final bool? isFpLogin,
          @JsonKey(name: "authorized") final dynamic authorized,
          @JsonKey(name: "dailyLimit") final dynamic dailyLimit}) =
      _$ResponseBodyImpl;

  factory _ResponseBody.fromJson(Map<String, dynamic> json) =
      _$ResponseBodyImpl.fromJson;

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
  dynamic get agentAuthStatus;
  @override
  @JsonKey(name: "kycType")
  dynamic get kycType;
  @override
  @JsonKey(name: "kycStatus")
  dynamic get kycStatus;
  @override
  @JsonKey(name: "isFPLogin")
  bool? get isFpLogin;
  @override
  @JsonKey(name: "authorized")
  dynamic get authorized;
  @override
  @JsonKey(name: "dailyLimit")
  dynamic get dailyLimit;
  @override
  @JsonKey(ignore: true)
  _$$ResponseBodyImplCopyWith<_$ResponseBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
