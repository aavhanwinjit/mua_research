// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_by_mpin_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginbyMpinRequestModel _$LoginbyMpinRequestModelFromJson(
    Map<String, dynamic> json) {
  return _LoginbyMpinRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LoginbyMpinRequestModel {
  @JsonKey(name: "deviceId")
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "mPIN")
  String? get mPin => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNo")
  String? get mobileNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginbyMpinRequestModelCopyWith<LoginbyMpinRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginbyMpinRequestModelCopyWith<$Res> {
  factory $LoginbyMpinRequestModelCopyWith(LoginbyMpinRequestModel value,
          $Res Function(LoginbyMpinRequestModel) then) =
      _$LoginbyMpinRequestModelCopyWithImpl<$Res, LoginbyMpinRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "mPIN") String? mPin,
      @JsonKey(name: "mobileNo") String? mobileNo});
}

/// @nodoc
class _$LoginbyMpinRequestModelCopyWithImpl<$Res,
        $Val extends LoginbyMpinRequestModel>
    implements $LoginbyMpinRequestModelCopyWith<$Res> {
  _$LoginbyMpinRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceToken = freezed,
    Object? mPin = freezed,
    Object? mobileNo = freezed,
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
      mPin: freezed == mPin
          ? _value.mPin
          : mPin // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginbyMpinRequestModelImplCopyWith<$Res>
    implements $LoginbyMpinRequestModelCopyWith<$Res> {
  factory _$$LoginbyMpinRequestModelImplCopyWith(
          _$LoginbyMpinRequestModelImpl value,
          $Res Function(_$LoginbyMpinRequestModelImpl) then) =
      __$$LoginbyMpinRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "deviceId") String? deviceId,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "mPIN") String? mPin,
      @JsonKey(name: "mobileNo") String? mobileNo});
}

/// @nodoc
class __$$LoginbyMpinRequestModelImplCopyWithImpl<$Res>
    extends _$LoginbyMpinRequestModelCopyWithImpl<$Res,
        _$LoginbyMpinRequestModelImpl>
    implements _$$LoginbyMpinRequestModelImplCopyWith<$Res> {
  __$$LoginbyMpinRequestModelImplCopyWithImpl(
      _$LoginbyMpinRequestModelImpl _value,
      $Res Function(_$LoginbyMpinRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceId = freezed,
    Object? deviceToken = freezed,
    Object? mPin = freezed,
    Object? mobileNo = freezed,
  }) {
    return _then(_$LoginbyMpinRequestModelImpl(
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      mPin: freezed == mPin
          ? _value.mPin
          : mPin // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginbyMpinRequestModelImpl implements _LoginbyMpinRequestModel {
  const _$LoginbyMpinRequestModelImpl(
      {@JsonKey(name: "deviceId") this.deviceId,
      @JsonKey(name: "deviceToken") this.deviceToken,
      @JsonKey(name: "mPIN") this.mPin,
      @JsonKey(name: "mobileNo") this.mobileNo});

  factory _$LoginbyMpinRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginbyMpinRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "deviceId")
  final String? deviceId;
  @override
  @JsonKey(name: "deviceToken")
  final String? deviceToken;
  @override
  @JsonKey(name: "mPIN")
  final String? mPin;
  @override
  @JsonKey(name: "mobileNo")
  final String? mobileNo;

  @override
  String toString() {
    return 'LoginbyMpinRequestModel(deviceId: $deviceId, deviceToken: $deviceToken, mPin: $mPin, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginbyMpinRequestModelImpl &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.mPin, mPin) || other.mPin == mPin) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deviceId, deviceToken, mPin, mobileNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginbyMpinRequestModelImplCopyWith<_$LoginbyMpinRequestModelImpl>
      get copyWith => __$$LoginbyMpinRequestModelImplCopyWithImpl<
          _$LoginbyMpinRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginbyMpinRequestModelImplToJson(
      this,
    );
  }
}

abstract class _LoginbyMpinRequestModel implements LoginbyMpinRequestModel {
  const factory _LoginbyMpinRequestModel(
          {@JsonKey(name: "deviceId") final String? deviceId,
          @JsonKey(name: "deviceToken") final String? deviceToken,
          @JsonKey(name: "mPIN") final String? mPin,
          @JsonKey(name: "mobileNo") final String? mobileNo}) =
      _$LoginbyMpinRequestModelImpl;

  factory _LoginbyMpinRequestModel.fromJson(Map<String, dynamic> json) =
      _$LoginbyMpinRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "deviceId")
  String? get deviceId;
  @override
  @JsonKey(name: "deviceToken")
  String? get deviceToken;
  @override
  @JsonKey(name: "mPIN")
  String? get mPin;
  @override
  @JsonKey(name: "mobileNo")
  String? get mobileNo;
  @override
  @JsonKey(ignore: true)
  _$$LoginbyMpinRequestModelImplCopyWith<_$LoginbyMpinRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
