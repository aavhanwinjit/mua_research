// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_details_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LaunchDetailsRequest _$LaunchDetailsRequestFromJson(Map<String, dynamic> json) {
  return _LaunchDetailsRequest.fromJson(json);
}

/// @nodoc
mixin _$LaunchDetailsRequest {
  bool get rootedDevice => throw _privateConstructorUsedError;
  String get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchDetailsRequestCopyWith<LaunchDetailsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchDetailsRequestCopyWith<$Res> {
  factory $LaunchDetailsRequestCopyWith(LaunchDetailsRequest value,
          $Res Function(LaunchDetailsRequest) then) =
      _$LaunchDetailsRequestCopyWithImpl<$Res, LaunchDetailsRequest>;
  @useResult
  $Res call({bool rootedDevice, String deviceToken});
}

/// @nodoc
class _$LaunchDetailsRequestCopyWithImpl<$Res,
        $Val extends LaunchDetailsRequest>
    implements $LaunchDetailsRequestCopyWith<$Res> {
  _$LaunchDetailsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootedDevice = null,
    Object? deviceToken = null,
  }) {
    return _then(_value.copyWith(
      rootedDevice: null == rootedDevice
          ? _value.rootedDevice
          : rootedDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaunchDetailsRequestImplCopyWith<$Res>
    implements $LaunchDetailsRequestCopyWith<$Res> {
  factory _$$LaunchDetailsRequestImplCopyWith(_$LaunchDetailsRequestImpl value,
          $Res Function(_$LaunchDetailsRequestImpl) then) =
      __$$LaunchDetailsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool rootedDevice, String deviceToken});
}

/// @nodoc
class __$$LaunchDetailsRequestImplCopyWithImpl<$Res>
    extends _$LaunchDetailsRequestCopyWithImpl<$Res, _$LaunchDetailsRequestImpl>
    implements _$$LaunchDetailsRequestImplCopyWith<$Res> {
  __$$LaunchDetailsRequestImplCopyWithImpl(_$LaunchDetailsRequestImpl _value,
      $Res Function(_$LaunchDetailsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootedDevice = null,
    Object? deviceToken = null,
  }) {
    return _then(_$LaunchDetailsRequestImpl(
      rootedDevice: null == rootedDevice
          ? _value.rootedDevice
          : rootedDevice // ignore: cast_nullable_to_non_nullable
              as bool,
      deviceToken: null == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaunchDetailsRequestImpl implements _LaunchDetailsRequest {
  _$LaunchDetailsRequestImpl(
      {required this.rootedDevice, required this.deviceToken});

  factory _$LaunchDetailsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchDetailsRequestImplFromJson(json);

  @override
  final bool rootedDevice;
  @override
  final String deviceToken;

  @override
  String toString() {
    return 'LaunchDetailsRequest(rootedDevice: $rootedDevice, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchDetailsRequestImpl &&
            (identical(other.rootedDevice, rootedDevice) ||
                other.rootedDevice == rootedDevice) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rootedDevice, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchDetailsRequestImplCopyWith<_$LaunchDetailsRequestImpl>
      get copyWith =>
          __$$LaunchDetailsRequestImplCopyWithImpl<_$LaunchDetailsRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchDetailsRequestImplToJson(
      this,
    );
  }
}

abstract class _LaunchDetailsRequest implements LaunchDetailsRequest {
  factory _LaunchDetailsRequest(
      {required final bool rootedDevice,
      required final String deviceToken}) = _$LaunchDetailsRequestImpl;

  factory _LaunchDetailsRequest.fromJson(Map<String, dynamic> json) =
      _$LaunchDetailsRequestImpl.fromJson;

  @override
  bool get rootedDevice;
  @override
  String get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$LaunchDetailsRequestImplCopyWith<_$LaunchDetailsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
