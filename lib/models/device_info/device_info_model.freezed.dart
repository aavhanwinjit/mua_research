// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceInfoModel _$DeviceInfoModelFromJson(Map<String, dynamic> json) {
  return _DeviceInfoModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceInfoModel {
  @JsonKey(name: "p")
  String? get platform => throw _privateConstructorUsedError;
  @JsonKey(name: "o")
  String? get osVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "m")
  String? get model => throw _privateConstructorUsedError;
  @JsonKey(name: "d")
  String? get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: "a")
  String? get appVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "i")
  String? get ipAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceInfoModelCopyWith<DeviceInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceInfoModelCopyWith<$Res> {
  factory $DeviceInfoModelCopyWith(
          DeviceInfoModel value, $Res Function(DeviceInfoModel) then) =
      _$DeviceInfoModelCopyWithImpl<$Res, DeviceInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "p") String? platform,
      @JsonKey(name: "o") String? osVersion,
      @JsonKey(name: "m") String? model,
      @JsonKey(name: "d") String? deviceId,
      @JsonKey(name: "a") String? appVersion,
      @JsonKey(name: "i") String? ipAddress});
}

/// @nodoc
class _$DeviceInfoModelCopyWithImpl<$Res, $Val extends DeviceInfoModel>
    implements $DeviceInfoModelCopyWith<$Res> {
  _$DeviceInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = freezed,
    Object? osVersion = freezed,
    Object? model = freezed,
    Object? deviceId = freezed,
    Object? appVersion = freezed,
    Object? ipAddress = freezed,
  }) {
    return _then(_value.copyWith(
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceInfoModelImplCopyWith<$Res>
    implements $DeviceInfoModelCopyWith<$Res> {
  factory _$$DeviceInfoModelImplCopyWith(_$DeviceInfoModelImpl value,
          $Res Function(_$DeviceInfoModelImpl) then) =
      __$$DeviceInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "p") String? platform,
      @JsonKey(name: "o") String? osVersion,
      @JsonKey(name: "m") String? model,
      @JsonKey(name: "d") String? deviceId,
      @JsonKey(name: "a") String? appVersion,
      @JsonKey(name: "i") String? ipAddress});
}

/// @nodoc
class __$$DeviceInfoModelImplCopyWithImpl<$Res>
    extends _$DeviceInfoModelCopyWithImpl<$Res, _$DeviceInfoModelImpl>
    implements _$$DeviceInfoModelImplCopyWith<$Res> {
  __$$DeviceInfoModelImplCopyWithImpl(
      _$DeviceInfoModelImpl _value, $Res Function(_$DeviceInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = freezed,
    Object? osVersion = freezed,
    Object? model = freezed,
    Object? deviceId = freezed,
    Object? appVersion = freezed,
    Object? ipAddress = freezed,
  }) {
    return _then(_$DeviceInfoModelImpl(
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      osVersion: freezed == osVersion
          ? _value.osVersion
          : osVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
      appVersion: freezed == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      ipAddress: freezed == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceInfoModelImpl implements _DeviceInfoModel {
  const _$DeviceInfoModelImpl(
      {@JsonKey(name: "p") this.platform,
      @JsonKey(name: "o") this.osVersion,
      @JsonKey(name: "m") this.model,
      @JsonKey(name: "d") this.deviceId,
      @JsonKey(name: "a") this.appVersion,
      @JsonKey(name: "i") this.ipAddress});

  factory _$DeviceInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceInfoModelImplFromJson(json);

  @override
  @JsonKey(name: "p")
  final String? platform;
  @override
  @JsonKey(name: "o")
  final String? osVersion;
  @override
  @JsonKey(name: "m")
  final String? model;
  @override
  @JsonKey(name: "d")
  final String? deviceId;
  @override
  @JsonKey(name: "a")
  final String? appVersion;
  @override
  @JsonKey(name: "i")
  final String? ipAddress;

  @override
  String toString() {
    return 'DeviceInfoModel(platform: $platform, osVersion: $osVersion, model: $model, deviceId: $deviceId, appVersion: $appVersion, ipAddress: $ipAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceInfoModelImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.osVersion, osVersion) ||
                other.osVersion == osVersion) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, platform, osVersion, model, deviceId, appVersion, ipAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceInfoModelImplCopyWith<_$DeviceInfoModelImpl> get copyWith =>
      __$$DeviceInfoModelImplCopyWithImpl<_$DeviceInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceInfoModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceInfoModel implements DeviceInfoModel {
  const factory _DeviceInfoModel(
      {@JsonKey(name: "p") final String? platform,
      @JsonKey(name: "o") final String? osVersion,
      @JsonKey(name: "m") final String? model,
      @JsonKey(name: "d") final String? deviceId,
      @JsonKey(name: "a") final String? appVersion,
      @JsonKey(name: "i") final String? ipAddress}) = _$DeviceInfoModelImpl;

  factory _DeviceInfoModel.fromJson(Map<String, dynamic> json) =
      _$DeviceInfoModelImpl.fromJson;

  @override
  @JsonKey(name: "p")
  String? get platform;
  @override
  @JsonKey(name: "o")
  String? get osVersion;
  @override
  @JsonKey(name: "m")
  String? get model;
  @override
  @JsonKey(name: "d")
  String? get deviceId;
  @override
  @JsonKey(name: "a")
  String? get appVersion;
  @override
  @JsonKey(name: "i")
  String? get ipAddress;
  @override
  @JsonKey(ignore: true)
  _$$DeviceInfoModelImplCopyWith<_$DeviceInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
