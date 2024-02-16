// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'header_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeaderModel _$HeaderModelFromJson(Map<String, dynamic> json) {
  return _HeaderModel.fromJson(json);
}

/// @nodoc
mixin _$HeaderModel {
  @JsonKey(name: "di")
  DeviceInfoModel? get deviceInfo => throw _privateConstructorUsedError;
  @JsonKey(name: "mk")
  MessageKeyModel? get messageKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeaderModelCopyWith<HeaderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderModelCopyWith<$Res> {
  factory $HeaderModelCopyWith(
          HeaderModel value, $Res Function(HeaderModel) then) =
      _$HeaderModelCopyWithImpl<$Res, HeaderModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "di") DeviceInfoModel? deviceInfo,
      @JsonKey(name: "mk") MessageKeyModel? messageKey});

  $DeviceInfoModelCopyWith<$Res>? get deviceInfo;
  $MessageKeyModelCopyWith<$Res>? get messageKey;
}

/// @nodoc
class _$HeaderModelCopyWithImpl<$Res, $Val extends HeaderModel>
    implements $HeaderModelCopyWith<$Res> {
  _$HeaderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = freezed,
    Object? messageKey = freezed,
  }) {
    return _then(_value.copyWith(
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfoModel?,
      messageKey: freezed == messageKey
          ? _value.messageKey
          : messageKey // ignore: cast_nullable_to_non_nullable
              as MessageKeyModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceInfoModelCopyWith<$Res>? get deviceInfo {
    if (_value.deviceInfo == null) {
      return null;
    }

    return $DeviceInfoModelCopyWith<$Res>(_value.deviceInfo!, (value) {
      return _then(_value.copyWith(deviceInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageKeyModelCopyWith<$Res>? get messageKey {
    if (_value.messageKey == null) {
      return null;
    }

    return $MessageKeyModelCopyWith<$Res>(_value.messageKey!, (value) {
      return _then(_value.copyWith(messageKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeaderModelImplCopyWith<$Res>
    implements $HeaderModelCopyWith<$Res> {
  factory _$$HeaderModelImplCopyWith(
          _$HeaderModelImpl value, $Res Function(_$HeaderModelImpl) then) =
      __$$HeaderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "di") DeviceInfoModel? deviceInfo,
      @JsonKey(name: "mk") MessageKeyModel? messageKey});

  @override
  $DeviceInfoModelCopyWith<$Res>? get deviceInfo;
  @override
  $MessageKeyModelCopyWith<$Res>? get messageKey;
}

/// @nodoc
class __$$HeaderModelImplCopyWithImpl<$Res>
    extends _$HeaderModelCopyWithImpl<$Res, _$HeaderModelImpl>
    implements _$$HeaderModelImplCopyWith<$Res> {
  __$$HeaderModelImplCopyWithImpl(
      _$HeaderModelImpl _value, $Res Function(_$HeaderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceInfo = freezed,
    Object? messageKey = freezed,
  }) {
    return _then(_$HeaderModelImpl(
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as DeviceInfoModel?,
      messageKey: freezed == messageKey
          ? _value.messageKey
          : messageKey // ignore: cast_nullable_to_non_nullable
              as MessageKeyModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeaderModelImpl implements _HeaderModel {
  const _$HeaderModelImpl(
      {@JsonKey(name: "di") this.deviceInfo,
      @JsonKey(name: "mk") this.messageKey});

  factory _$HeaderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeaderModelImplFromJson(json);

  @override
  @JsonKey(name: "di")
  final DeviceInfoModel? deviceInfo;
  @override
  @JsonKey(name: "mk")
  final MessageKeyModel? messageKey;

  @override
  String toString() {
    return 'HeaderModel(deviceInfo: $deviceInfo, messageKey: $messageKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeaderModelImpl &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo) &&
            (identical(other.messageKey, messageKey) ||
                other.messageKey == messageKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deviceInfo, messageKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeaderModelImplCopyWith<_$HeaderModelImpl> get copyWith =>
      __$$HeaderModelImplCopyWithImpl<_$HeaderModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeaderModelImplToJson(
      this,
    );
  }
}

abstract class _HeaderModel implements HeaderModel {
  const factory _HeaderModel(
          {@JsonKey(name: "di") final DeviceInfoModel? deviceInfo,
          @JsonKey(name: "mk") final MessageKeyModel? messageKey}) =
      _$HeaderModelImpl;

  factory _HeaderModel.fromJson(Map<String, dynamic> json) =
      _$HeaderModelImpl.fromJson;

  @override
  @JsonKey(name: "di")
  DeviceInfoModel? get deviceInfo;
  @override
  @JsonKey(name: "mk")
  MessageKeyModel? get messageKey;
  @override
  @JsonKey(ignore: true)
  _$$HeaderModelImplCopyWith<_$HeaderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
