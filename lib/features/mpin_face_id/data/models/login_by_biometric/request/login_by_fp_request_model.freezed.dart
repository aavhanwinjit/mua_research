// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_by_fp_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginByFpRequestModel _$LoginByFpRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LoginByFpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LoginByFpRequestModel {
  @JsonKey(name: "deviceId")
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "fpDeviceToken")
  String? get fpDeviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "biometricStatus")
  bool? get biometricStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginByFpRequestModelCopyWith<LoginByFpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginByFpRequestModelCopyWith<$Res> {
  factory $LoginByFpRequestModelCopyWith(LoginByFpRequestModel value,
          $Res Function(LoginByFpRequestModel) then) =
      _$LoginByFpRequestModelCopyWithImpl<$Res, LoginByFpRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "fpDeviceToken") String? fpDeviceToken,
      @JsonKey(name: "biometricStatus") bool? biometricStatus});
}

/// @nodoc
class _$LoginByFpRequestModelCopyWithImpl<$Res,
        $Val extends LoginByFpRequestModel>
    implements $LoginByFpRequestModelCopyWith<$Res> {
  _$LoginByFpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceToken = freezed,
    Object? fpDeviceToken = freezed,
    Object? biometricStatus = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fpDeviceToken: freezed == fpDeviceToken
          ? _value.fpDeviceToken
          : fpDeviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricStatus: freezed == biometricStatus
          ? _value.biometricStatus
          : biometricStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginByFpRequestModelImplCopyWith<$Res>
    implements $LoginByFpRequestModelCopyWith<$Res> {
  factory _$$LoginByFpRequestModelImplCopyWith(
          _$LoginByFpRequestModelImpl value,
          $Res Function(_$LoginByFpRequestModelImpl) then) =
      __$$LoginByFpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "fpDeviceToken") String? fpDeviceToken,
      @JsonKey(name: "biometricStatus") bool? biometricStatus});
}

/// @nodoc
class __$$LoginByFpRequestModelImplCopyWithImpl<$Res>
    extends _$LoginByFpRequestModelCopyWithImpl<$Res,
        _$LoginByFpRequestModelImpl>
    implements _$$LoginByFpRequestModelImplCopyWith<$Res> {
  __$$LoginByFpRequestModelImplCopyWithImpl(_$LoginByFpRequestModelImpl _value,
      $Res Function(_$LoginByFpRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceToken = freezed,
    Object? fpDeviceToken = freezed,
    Object? biometricStatus = freezed,
  }) {
    return _then(_$LoginByFpRequestModelImpl(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      fpDeviceToken: freezed == fpDeviceToken
          ? _value.fpDeviceToken
          : fpDeviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      biometricStatus: freezed == biometricStatus
          ? _value.biometricStatus
          : biometricStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginByFpRequestModelImpl implements _LoginByFpRequestModel {
  const _$LoginByFpRequestModelImpl(
      {@JsonKey(name: "deviceId") this.deviceId,
      @JsonKey(name: "deviceToken") this.deviceToken,
      @JsonKey(name: "fpDeviceToken") this.fpDeviceToken,
      @JsonKey(name: "biometricStatus") this.biometricStatus});

  factory _$LoginByFpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginByFpRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "deviceId")
  final String? deviceId;
  @override
  @JsonKey(name: "deviceToken")
  final String? deviceToken;
  @override
  @JsonKey(name: "fpDeviceToken")
  final String? fpDeviceToken;
  @override
  @JsonKey(name: "biometricStatus")
  final bool? biometricStatus;

  @override
  String toString() {
    return 'LoginByFpRequestModel(deviceId: $deviceId, deviceToken: $deviceToken, fpDeviceToken: $fpDeviceToken, biometricStatus: $biometricStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginByFpRequestModelImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.fpDeviceToken, fpDeviceToken) ||
                other.fpDeviceToken == fpDeviceToken) &&
            (identical(other.biometricStatus, biometricStatus) ||
                other.biometricStatus == biometricStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, deviceId, deviceToken, fpDeviceToken, biometricStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginByFpRequestModelImplCopyWith<_$LoginByFpRequestModelImpl>
      get copyWith => __$$LoginByFpRequestModelImplCopyWithImpl<
          _$LoginByFpRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginByFpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LoginByFpRequestModel implements LoginByFpRequestModel {
  const factory _LoginByFpRequestModel(
          {@JsonKey(name: "deviceId") final String? deviceId,
          @JsonKey(name: "deviceToken") final String? deviceToken,
          @JsonKey(name: "fpDeviceToken") final String? fpDeviceToken,
          @JsonKey(name: "biometricStatus") final bool? biometricStatus}) =
      _$LoginByFpRequestModelImpl;

  factory _LoginByFpRequestModel.fromJson(Map<String, dynamic> json) =
      _$LoginByFpRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "deviceId")
  String? get deviceId;
  @override
  @JsonKey(name: "deviceToken")
  String? get deviceToken;
  @override
  @JsonKey(name: "fpDeviceToken")
  String? get fpDeviceToken;
  @override
  @JsonKey(name: "biometricStatus")
  bool? get biometricStatus;
  @override
  @JsonKey(ignore: true)
  _$$LoginByFpRequestModelImplCopyWith<_$LoginByFpRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
