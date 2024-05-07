// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_device_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterDeviceResponseModel _$RegisterDeviceResponseModelFromJson(
    Map<String, dynamic> json) {
  return _RegisterDeviceResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RegisterDeviceResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  RegisterDeviceData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDeviceResponseModelCopyWith<RegisterDeviceResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDeviceResponseModelCopyWith<$Res> {
  factory $RegisterDeviceResponseModelCopyWith(
          RegisterDeviceResponseModel value,
          $Res Function(RegisterDeviceResponseModel) then) =
      _$RegisterDeviceResponseModelCopyWithImpl<$Res,
          RegisterDeviceResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") RegisterDeviceData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $RegisterDeviceDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$RegisterDeviceResponseModelCopyWithImpl<$Res,
        $Val extends RegisterDeviceResponseModel>
    implements $RegisterDeviceResponseModelCopyWith<$Res> {
  _$RegisterDeviceResponseModelCopyWithImpl(this._value, this._then);

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
              as RegisterDeviceData?,
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
  $RegisterDeviceDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $RegisterDeviceDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$RegisterDeviceResponseModelImplCopyWith<$Res>
    implements $RegisterDeviceResponseModelCopyWith<$Res> {
  factory _$$RegisterDeviceResponseModelImplCopyWith(
          _$RegisterDeviceResponseModelImpl value,
          $Res Function(_$RegisterDeviceResponseModelImpl) then) =
      __$$RegisterDeviceResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") RegisterDeviceData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $RegisterDeviceDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$RegisterDeviceResponseModelImplCopyWithImpl<$Res>
    extends _$RegisterDeviceResponseModelCopyWithImpl<$Res,
        _$RegisterDeviceResponseModelImpl>
    implements _$$RegisterDeviceResponseModelImplCopyWith<$Res> {
  __$$RegisterDeviceResponseModelImplCopyWithImpl(
      _$RegisterDeviceResponseModelImpl _value,
      $Res Function(_$RegisterDeviceResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$RegisterDeviceResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as RegisterDeviceData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterDeviceResponseModelImpl
    implements _RegisterDeviceResponseModel {
  const _$RegisterDeviceResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$RegisterDeviceResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegisterDeviceResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final RegisterDeviceData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'RegisterDeviceResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDeviceResponseModelImpl &&
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
  _$$RegisterDeviceResponseModelImplCopyWith<_$RegisterDeviceResponseModelImpl>
      get copyWith => __$$RegisterDeviceResponseModelImplCopyWithImpl<
          _$RegisterDeviceResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDeviceResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RegisterDeviceResponseModel
    implements RegisterDeviceResponseModel {
  const factory _RegisterDeviceResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final RegisterDeviceData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$RegisterDeviceResponseModelImpl;

  factory _RegisterDeviceResponseModel.fromJson(Map<String, dynamic> json) =
      _$RegisterDeviceResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  RegisterDeviceData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$RegisterDeviceResponseModelImplCopyWith<_$RegisterDeviceResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegisterDeviceData _$RegisterDeviceDataFromJson(Map<String, dynamic> json) {
  return _RegisterDeviceData.fromJson(json);
}

/// @nodoc
mixin _$RegisterDeviceData {
  @JsonKey(name: "rb")
  RegisterDeviceResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDeviceDataCopyWith<RegisterDeviceData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDeviceDataCopyWith<$Res> {
  factory $RegisterDeviceDataCopyWith(
          RegisterDeviceData value, $Res Function(RegisterDeviceData) then) =
      _$RegisterDeviceDataCopyWithImpl<$Res, RegisterDeviceData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") RegisterDeviceResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $RegisterDeviceResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$RegisterDeviceDataCopyWithImpl<$Res, $Val extends RegisterDeviceData>
    implements $RegisterDeviceDataCopyWith<$Res> {
  _$RegisterDeviceDataCopyWithImpl(this._value, this._then);

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
              as RegisterDeviceResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterDeviceResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $RegisterDeviceResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterDeviceDataImplCopyWith<$Res>
    implements $RegisterDeviceDataCopyWith<$Res> {
  factory _$$RegisterDeviceDataImplCopyWith(_$RegisterDeviceDataImpl value,
          $Res Function(_$RegisterDeviceDataImpl) then) =
      __$$RegisterDeviceDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") RegisterDeviceResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $RegisterDeviceResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$RegisterDeviceDataImplCopyWithImpl<$Res>
    extends _$RegisterDeviceDataCopyWithImpl<$Res, _$RegisterDeviceDataImpl>
    implements _$$RegisterDeviceDataImplCopyWith<$Res> {
  __$$RegisterDeviceDataImplCopyWithImpl(_$RegisterDeviceDataImpl _value,
      $Res Function(_$RegisterDeviceDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$RegisterDeviceDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as RegisterDeviceResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterDeviceDataImpl implements _RegisterDeviceData {
  const _$RegisterDeviceDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$RegisterDeviceDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterDeviceDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final RegisterDeviceResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'RegisterDeviceData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDeviceDataImpl &&
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
  _$$RegisterDeviceDataImplCopyWith<_$RegisterDeviceDataImpl> get copyWith =>
      __$$RegisterDeviceDataImplCopyWithImpl<_$RegisterDeviceDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDeviceDataImplToJson(
      this,
    );
  }
}

abstract class _RegisterDeviceData implements RegisterDeviceData {
  const factory _RegisterDeviceData(
          {@JsonKey(name: "rb") final RegisterDeviceResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$RegisterDeviceDataImpl;

  factory _RegisterDeviceData.fromJson(Map<String, dynamic> json) =
      _$RegisterDeviceDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  RegisterDeviceResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$RegisterDeviceDataImplCopyWith<_$RegisterDeviceDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RegisterDeviceResponseBody _$RegisterDeviceResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _RegisterDeviceResponseBody.fromJson(json);
}

/// @nodoc
mixin _$RegisterDeviceResponseBody {
  @JsonKey(name: "isDisabled")
  bool? get isDisabled => throw _privateConstructorUsedError;
  @JsonKey(name: "crd")
  DateTime? get crd => throw _privateConstructorUsedError;
  @JsonKey(name: "crdBy")
  int? get crdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "lmd")
  DateTime? get lmd => throw _privateConstructorUsedError;
  @JsonKey(name: "lmdBy")
  int? get lmdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "appDeviceId")
  int? get appDeviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "channelId")
  String? get channelId => throw _privateConstructorUsedError;
  @JsonKey(name: "loginId")
  int? get loginId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceId")
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "modelName")
  String? get modelName => throw _privateConstructorUsedError;
  @JsonKey(name: "platform")
  String? get platform => throw _privateConstructorUsedError;
  @JsonKey(name: "osVersion")
  String? get osVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "deregistered")
  bool? get deregistered => throw _privateConstructorUsedError;
  @JsonKey(name: "inactive")
  bool? get inactive => throw _privateConstructorUsedError;
  @JsonKey(name: "blockedTill")
  DateTime? get blockedTill => throw _privateConstructorUsedError;
  @JsonKey(name: "wrongMPINAttempts")
  int? get wrongMpinAttempts => throw _privateConstructorUsedError;
  @JsonKey(name: "isFPLogin")
  bool? get isFpLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "fingerPrintToken")
  String? get fingerPrintToken => throw _privateConstructorUsedError;
  @JsonKey(name: "fpBlockedTill")
  DateTime? get fpBlockedTill => throw _privateConstructorUsedError;
  @JsonKey(name: "wrongFPAttempts")
  int? get wrongFpAttempts => throw _privateConstructorUsedError;
  @JsonKey(name: "lastLogin")
  DateTime? get lastLogin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDeviceResponseBodyCopyWith<RegisterDeviceResponseBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDeviceResponseBodyCopyWith<$Res> {
  factory $RegisterDeviceResponseBodyCopyWith(RegisterDeviceResponseBody value,
          $Res Function(RegisterDeviceResponseBody) then) =
      _$RegisterDeviceResponseBodyCopyWithImpl<$Res,
          RegisterDeviceResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "appDeviceId") int? appDeviceId,
      @JsonKey(name: "channelId") String? channelId,
      @JsonKey(name: "loginId") int? loginId,
      @JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "modelName") String? modelName,
      @JsonKey(name: "platform") String? platform,
      @JsonKey(name: "osVersion") String? osVersion,
      @JsonKey(name: "deregistered") bool? deregistered,
      @JsonKey(name: "inactive") bool? inactive,
      @JsonKey(name: "blockedTill") DateTime? blockedTill,
      @JsonKey(name: "wrongMPINAttempts") int? wrongMpinAttempts,
      @JsonKey(name: "isFPLogin") bool? isFpLogin,
      @JsonKey(name: "fingerPrintToken") String? fingerPrintToken,
      @JsonKey(name: "fpBlockedTill") DateTime? fpBlockedTill,
      @JsonKey(name: "wrongFPAttempts") int? wrongFpAttempts,
      @JsonKey(name: "lastLogin") DateTime? lastLogin});
}

/// @nodoc
class _$RegisterDeviceResponseBodyCopyWithImpl<$Res,
        $Val extends RegisterDeviceResponseBody>
    implements $RegisterDeviceResponseBodyCopyWith<$Res> {
  _$RegisterDeviceResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? appDeviceId = freezed,
    Object? channelId = freezed,
    Object? loginId = freezed,
    Object? deviceId = freezed,
    Object? deviceToken = freezed,
    Object? modelName = freezed,
    Object? platform = freezed,
    Object? osVersion = freezed,
    Object? deregistered = freezed,
    Object? inactive = freezed,
    Object? blockedTill = freezed,
    Object? wrongMpinAttempts = freezed,
    Object? isFpLogin = freezed,
    Object? fingerPrintToken = freezed,
    Object? fpBlockedTill = freezed,
    Object? wrongFpAttempts = freezed,
    Object? lastLogin = freezed,
  }) {
    return _then(_value.copyWith(
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      crd: freezed == crd
          ? _value.crd
          : crd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      crdBy: freezed == crdBy
          ? _value.crdBy
          : crdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lmd: freezed == lmd
          ? _value.lmd
          : lmd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lmdBy: freezed == lmdBy
          ? _value.lmdBy
          : lmdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      appDeviceId: freezed == appDeviceId
          ? _value.appDeviceId
          : appDeviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deregistered: freezed == deregistered
          ? _value.deregistered
          : deregistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      inactive: freezed == inactive
          ? _value.inactive
          : inactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockedTill: freezed == blockedTill
          ? _value.blockedTill
          : blockedTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      wrongMpinAttempts: freezed == wrongMpinAttempts
          ? _value.wrongMpinAttempts
          : wrongMpinAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      isFpLogin: freezed == isFpLogin
          ? _value.isFpLogin
          : isFpLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      fingerPrintToken: freezed == fingerPrintToken
          ? _value.fingerPrintToken
          : fingerPrintToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fpBlockedTill: freezed == fpBlockedTill
          ? _value.fpBlockedTill
          : fpBlockedTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      wrongFpAttempts: freezed == wrongFpAttempts
          ? _value.wrongFpAttempts
          : wrongFpAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterDeviceResponseBodyImplCopyWith<$Res>
    implements $RegisterDeviceResponseBodyCopyWith<$Res> {
  factory _$$RegisterDeviceResponseBodyImplCopyWith(
          _$RegisterDeviceResponseBodyImpl value,
          $Res Function(_$RegisterDeviceResponseBodyImpl) then) =
      __$$RegisterDeviceResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "appDeviceId") int? appDeviceId,
      @JsonKey(name: "channelId") String? channelId,
      @JsonKey(name: "loginId") int? loginId,
      @JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "modelName") String? modelName,
      @JsonKey(name: "platform") String? platform,
      @JsonKey(name: "osVersion") String? osVersion,
      @JsonKey(name: "deregistered") bool? deregistered,
      @JsonKey(name: "inactive") bool? inactive,
      @JsonKey(name: "blockedTill") DateTime? blockedTill,
      @JsonKey(name: "wrongMPINAttempts") int? wrongMpinAttempts,
      @JsonKey(name: "isFPLogin") bool? isFpLogin,
      @JsonKey(name: "fingerPrintToken") String? fingerPrintToken,
      @JsonKey(name: "fpBlockedTill") DateTime? fpBlockedTill,
      @JsonKey(name: "wrongFPAttempts") int? wrongFpAttempts,
      @JsonKey(name: "lastLogin") DateTime? lastLogin});
}

/// @nodoc
class __$$RegisterDeviceResponseBodyImplCopyWithImpl<$Res>
    extends _$RegisterDeviceResponseBodyCopyWithImpl<$Res,
        _$RegisterDeviceResponseBodyImpl>
    implements _$$RegisterDeviceResponseBodyImplCopyWith<$Res> {
  __$$RegisterDeviceResponseBodyImplCopyWithImpl(
      _$RegisterDeviceResponseBodyImpl _value,
      $Res Function(_$RegisterDeviceResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? appDeviceId = freezed,
    Object? channelId = freezed,
    Object? loginId = freezed,
    Object? deviceId = freezed,
    Object? deviceToken = freezed,
    Object? modelName = freezed,
    Object? platform = freezed,
    Object? osVersion = freezed,
    Object? deregistered = freezed,
    Object? inactive = freezed,
    Object? blockedTill = freezed,
    Object? wrongMpinAttempts = freezed,
    Object? isFpLogin = freezed,
    Object? fingerPrintToken = freezed,
    Object? fpBlockedTill = freezed,
    Object? wrongFpAttempts = freezed,
    Object? lastLogin = freezed,
  }) {
    return _then(_$RegisterDeviceResponseBodyImpl(
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      crd: freezed == crd
          ? _value.crd
          : crd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      crdBy: freezed == crdBy
          ? _value.crdBy
          : crdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lmd: freezed == lmd
          ? _value.lmd
          : lmd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lmdBy: freezed == lmdBy
          ? _value.lmdBy
          : lmdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      appDeviceId: freezed == appDeviceId
          ? _value.appDeviceId
          : appDeviceId // ignore: cast_nullable_to_non_nullable
              as int?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
      loginId: freezed == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      deregistered: freezed == deregistered
          ? _value.deregistered
          : deregistered // ignore: cast_nullable_to_non_nullable
              as bool?,
      inactive: freezed == inactive
          ? _value.inactive
          : inactive // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockedTill: freezed == blockedTill
          ? _value.blockedTill
          : blockedTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      wrongMpinAttempts: freezed == wrongMpinAttempts
          ? _value.wrongMpinAttempts
          : wrongMpinAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      isFpLogin: freezed == isFpLogin
          ? _value.isFpLogin
          : isFpLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      fingerPrintToken: freezed == fingerPrintToken
          ? _value.fingerPrintToken
          : fingerPrintToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fpBlockedTill: freezed == fpBlockedTill
          ? _value.fpBlockedTill
          : fpBlockedTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      wrongFpAttempts: freezed == wrongFpAttempts
          ? _value.wrongFpAttempts
          : wrongFpAttempts // ignore: cast_nullable_to_non_nullable
              as int?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterDeviceResponseBodyImpl implements _RegisterDeviceResponseBody {
  const _$RegisterDeviceResponseBodyImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "appDeviceId") this.appDeviceId,
      @JsonKey(name: "channelId") this.channelId,
      @JsonKey(name: "loginId") this.loginId,
      @JsonKey(name: "deviceId") this.deviceId,
      @JsonKey(name: "deviceToken") this.deviceToken,
      @JsonKey(name: "modelName") this.modelName,
      @JsonKey(name: "platform") this.platform,
      @JsonKey(name: "osVersion") this.osVersion,
      @JsonKey(name: "deregistered") this.deregistered,
      @JsonKey(name: "inactive") this.inactive,
      @JsonKey(name: "blockedTill") this.blockedTill,
      @JsonKey(name: "wrongMPINAttempts") this.wrongMpinAttempts,
      @JsonKey(name: "isFPLogin") this.isFpLogin,
      @JsonKey(name: "fingerPrintToken") this.fingerPrintToken,
      @JsonKey(name: "fpBlockedTill") this.fpBlockedTill,
      @JsonKey(name: "wrongFPAttempts") this.wrongFpAttempts,
      @JsonKey(name: "lastLogin") this.lastLogin});

  factory _$RegisterDeviceResponseBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegisterDeviceResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "isDisabled")
  final bool? isDisabled;
  @override
  @JsonKey(name: "crd")
  final DateTime? crd;
  @override
  @JsonKey(name: "crdBy")
  final int? crdBy;
  @override
  @JsonKey(name: "lmd")
  final DateTime? lmd;
  @override
  @JsonKey(name: "lmdBy")
  final int? lmdBy;
  @override
  @JsonKey(name: "appDeviceId")
  final int? appDeviceId;
  @override
  @JsonKey(name: "channelId")
  final String? channelId;
  @override
  @JsonKey(name: "loginId")
  final int? loginId;
  @override
  @JsonKey(name: "deviceId")
  final String? deviceId;
  @override
  @JsonKey(name: "deviceToken")
  final String? deviceToken;
  @override
  @JsonKey(name: "modelName")
  final String? modelName;
  @override
  @JsonKey(name: "platform")
  final String? platform;
  @override
  @JsonKey(name: "osVersion")
  final String? osVersion;
  @override
  @JsonKey(name: "deregistered")
  final bool? deregistered;
  @override
  @JsonKey(name: "inactive")
  final bool? inactive;
  @override
  @JsonKey(name: "blockedTill")
  final DateTime? blockedTill;
  @override
  @JsonKey(name: "wrongMPINAttempts")
  final int? wrongMpinAttempts;
  @override
  @JsonKey(name: "isFPLogin")
  final bool? isFpLogin;
  @override
  @JsonKey(name: "fingerPrintToken")
  final String? fingerPrintToken;
  @override
  @JsonKey(name: "fpBlockedTill")
  final DateTime? fpBlockedTill;
  @override
  @JsonKey(name: "wrongFPAttempts")
  final int? wrongFpAttempts;
  @override
  @JsonKey(name: "lastLogin")
  final DateTime? lastLogin;

  @override
  String toString() {
    return 'RegisterDeviceResponseBody(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, appDeviceId: $appDeviceId, channelId: $channelId, loginId: $loginId, deviceId: $deviceId, deviceToken: $deviceToken, modelName: $modelName, platform: $platform, osVersion: $osVersion, deregistered: $deregistered, inactive: $inactive, blockedTill: $blockedTill, wrongMpinAttempts: $wrongMpinAttempts, isFpLogin: $isFpLogin, fingerPrintToken: $fingerPrintToken, fpBlockedTill: $fpBlockedTill, wrongFpAttempts: $wrongFpAttempts, lastLogin: $lastLogin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterDeviceResponseBodyImpl &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.appDeviceId, appDeviceId) ||
                other.appDeviceId == appDeviceId) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.loginId, loginId) || other.loginId == loginId) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.deregistered, deregistered) ||
                other.deregistered == deregistered) &&
            (identical(other.inactive, inactive) ||
                other.inactive == inactive) &&
            (identical(other.blockedTill, blockedTill) ||
                other.blockedTill == blockedTill) &&
            (identical(other.wrongMpinAttempts, wrongMpinAttempts) ||
                other.wrongMpinAttempts == wrongMpinAttempts) &&
            (identical(other.isFpLogin, isFpLogin) ||
                other.isFpLogin == isFpLogin) &&
            (identical(other.fingerPrintToken, fingerPrintToken) ||
                other.fingerPrintToken == fingerPrintToken) &&
            (identical(other.fpBlockedTill, fpBlockedTill) ||
                other.fpBlockedTill == fpBlockedTill) &&
            (identical(other.wrongFpAttempts, wrongFpAttempts) ||
                other.wrongFpAttempts == wrongFpAttempts) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isDisabled,
        crd,
        crdBy,
        lmd,
        lmdBy,
        appDeviceId,
        channelId,
        loginId,
        deviceId,
        deviceToken,
        modelName,
        platform,
        osVersion,
        deregistered,
        inactive,
        blockedTill,
        wrongMpinAttempts,
        isFpLogin,
        fingerPrintToken,
        fpBlockedTill,
        wrongFpAttempts,
        lastLogin
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterDeviceResponseBodyImplCopyWith<_$RegisterDeviceResponseBodyImpl>
      get copyWith => __$$RegisterDeviceResponseBodyImplCopyWithImpl<
          _$RegisterDeviceResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterDeviceResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _RegisterDeviceResponseBody
    implements RegisterDeviceResponseBody {
  const factory _RegisterDeviceResponseBody(
          {@JsonKey(name: "isDisabled") final bool? isDisabled,
          @JsonKey(name: "crd") final DateTime? crd,
          @JsonKey(name: "crdBy") final int? crdBy,
          @JsonKey(name: "lmd") final DateTime? lmd,
          @JsonKey(name: "lmdBy") final int? lmdBy,
          @JsonKey(name: "appDeviceId") final int? appDeviceId,
          @JsonKey(name: "channelId") final String? channelId,
          @JsonKey(name: "loginId") final int? loginId,
          @JsonKey(name: "deviceId") final String? deviceId,
          @JsonKey(name: "deviceToken") final String? deviceToken,
          @JsonKey(name: "modelName") final String? modelName,
          @JsonKey(name: "platform") final String? platform,
          @JsonKey(name: "osVersion") final String? osVersion,
          @JsonKey(name: "deregistered") final bool? deregistered,
          @JsonKey(name: "inactive") final bool? inactive,
          @JsonKey(name: "blockedTill") final DateTime? blockedTill,
          @JsonKey(name: "wrongMPINAttempts") final int? wrongMpinAttempts,
          @JsonKey(name: "isFPLogin") final bool? isFpLogin,
          @JsonKey(name: "fingerPrintToken") final String? fingerPrintToken,
          @JsonKey(name: "fpBlockedTill") final DateTime? fpBlockedTill,
          @JsonKey(name: "wrongFPAttempts") final int? wrongFpAttempts,
          @JsonKey(name: "lastLogin") final DateTime? lastLogin}) =
      _$RegisterDeviceResponseBodyImpl;

  factory _RegisterDeviceResponseBody.fromJson(Map<String, dynamic> json) =
      _$RegisterDeviceResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "isDisabled")
  bool? get isDisabled;
  @override
  @JsonKey(name: "crd")
  DateTime? get crd;
  @override
  @JsonKey(name: "crdBy")
  int? get crdBy;
  @override
  @JsonKey(name: "lmd")
  DateTime? get lmd;
  @override
  @JsonKey(name: "lmdBy")
  int? get lmdBy;
  @override
  @JsonKey(name: "appDeviceId")
  int? get appDeviceId;
  @override
  @JsonKey(name: "channelId")
  String? get channelId;
  @override
  @JsonKey(name: "loginId")
  int? get loginId;
  @override
  @JsonKey(name: "deviceId")
  String? get deviceId;
  @override
  @JsonKey(name: "deviceToken")
  String? get deviceToken;
  @override
  @JsonKey(name: "modelName")
  String? get modelName;
  @override
  @JsonKey(name: "platform")
  String? get platform;
  @override
  @JsonKey(name: "osVersion")
  String? get osVersion;
  @override
  @JsonKey(name: "deregistered")
  bool? get deregistered;
  @override
  @JsonKey(name: "inactive")
  bool? get inactive;
  @override
  @JsonKey(name: "blockedTill")
  DateTime? get blockedTill;
  @override
  @JsonKey(name: "wrongMPINAttempts")
  int? get wrongMpinAttempts;
  @override
  @JsonKey(name: "isFPLogin")
  bool? get isFpLogin;
  @override
  @JsonKey(name: "fingerPrintToken")
  String? get fingerPrintToken;
  @override
  @JsonKey(name: "fpBlockedTill")
  DateTime? get fpBlockedTill;
  @override
  @JsonKey(name: "wrongFPAttempts")
  int? get wrongFpAttempts;
  @override
  @JsonKey(name: "lastLogin")
  DateTime? get lastLogin;
  @override
  @JsonKey(ignore: true)
  _$$RegisterDeviceResponseBodyImplCopyWith<_$RegisterDeviceResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
