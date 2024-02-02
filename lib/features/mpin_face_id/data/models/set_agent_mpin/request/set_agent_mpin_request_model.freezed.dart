// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_agent_mpin_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetAgentMpinRequestModel _$SetAgentMpinRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SetAgentMpinRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SetAgentMpinRequestModel {
  @JsonKey(name: "mpin")
  String? get mpin => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmMPIN")
  String? get confirmMpin => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNo")
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "signaturePath")
  String? get signaturePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAgentMpinRequestModelCopyWith<SetAgentMpinRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAgentMpinRequestModelCopyWith<$Res> {
  factory $SetAgentMpinRequestModelCopyWith(SetAgentMpinRequestModel value,
          $Res Function(SetAgentMpinRequestModel) then) =
      _$SetAgentMpinRequestModelCopyWithImpl<$Res, SetAgentMpinRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "mpin") String? mpin,
      @JsonKey(name: "confirmMPIN") String? confirmMpin,
      @JsonKey(name: "mobileNo") String? mobileNo,
      @JsonKey(name: "signaturePath") String? signaturePath});
}

/// @nodoc
class _$SetAgentMpinRequestModelCopyWithImpl<$Res,
        $Val extends SetAgentMpinRequestModel>
    implements $SetAgentMpinRequestModelCopyWith<$Res> {
  _$SetAgentMpinRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mpin = freezed,
    Object? confirmMpin = freezed,
    Object? mobileNo = freezed,
    Object? signaturePath = freezed,
  }) {
    return _then(_value.copyWith(
      mpin: freezed == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmMpin: freezed == confirmMpin
          ? _value.confirmMpin
          : confirmMpin // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      signaturePath: freezed == signaturePath
          ? _value.signaturePath
          : signaturePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetAgentMpinRequestModelImplCopyWith<$Res>
    implements $SetAgentMpinRequestModelCopyWith<$Res> {
  factory _$$SetAgentMpinRequestModelImplCopyWith(
          _$SetAgentMpinRequestModelImpl value,
          $Res Function(_$SetAgentMpinRequestModelImpl) then) =
      __$$SetAgentMpinRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "mpin") String? mpin,
      @JsonKey(name: "confirmMPIN") String? confirmMpin,
      @JsonKey(name: "mobileNo") String? mobileNo,
      @JsonKey(name: "signaturePath") String? signaturePath});
}

/// @nodoc
class __$$SetAgentMpinRequestModelImplCopyWithImpl<$Res>
    extends _$SetAgentMpinRequestModelCopyWithImpl<$Res,
        _$SetAgentMpinRequestModelImpl>
    implements _$$SetAgentMpinRequestModelImplCopyWith<$Res> {
  __$$SetAgentMpinRequestModelImplCopyWithImpl(
      _$SetAgentMpinRequestModelImpl _value,
      $Res Function(_$SetAgentMpinRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mpin = freezed,
    Object? confirmMpin = freezed,
    Object? mobileNo = freezed,
    Object? signaturePath = freezed,
  }) {
    return _then(_$SetAgentMpinRequestModelImpl(
      mpin: freezed == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmMpin: freezed == confirmMpin
          ? _value.confirmMpin
          : confirmMpin // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      signaturePath: freezed == signaturePath
          ? _value.signaturePath
          : signaturePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAgentMpinRequestModelImpl implements _SetAgentMpinRequestModel {
  const _$SetAgentMpinRequestModelImpl(
      {@JsonKey(name: "mpin") this.mpin,
      @JsonKey(name: "confirmMPIN") this.confirmMpin,
      @JsonKey(name: "mobileNo") this.mobileNo,
      @JsonKey(name: "signaturePath") this.signaturePath});

  factory _$SetAgentMpinRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAgentMpinRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "mpin")
  final String? mpin;
  @override
  @JsonKey(name: "confirmMPIN")
  final String? confirmMpin;
  @override
  @JsonKey(name: "mobileNo")
  final String? mobileNo;
  @override
  @JsonKey(name: "signaturePath")
  final String? signaturePath;

  @override
  String toString() {
    return 'SetAgentMpinRequestModel(mpin: $mpin, confirmMpin: $confirmMpin, mobileNo: $mobileNo, signaturePath: $signaturePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAgentMpinRequestModelImpl &&
            (identical(other.mpin, mpin) || other.mpin == mpin) &&
            (identical(other.confirmMpin, confirmMpin) ||
                other.confirmMpin == confirmMpin) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.signaturePath, signaturePath) ||
                other.signaturePath == signaturePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, mpin, confirmMpin, mobileNo, signaturePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAgentMpinRequestModelImplCopyWith<_$SetAgentMpinRequestModelImpl>
      get copyWith => __$$SetAgentMpinRequestModelImplCopyWithImpl<
          _$SetAgentMpinRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAgentMpinRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SetAgentMpinRequestModel implements SetAgentMpinRequestModel {
  const factory _SetAgentMpinRequestModel(
          {@JsonKey(name: "mpin") final String? mpin,
          @JsonKey(name: "confirmMPIN") final String? confirmMpin,
          @JsonKey(name: "mobileNo") final String? mobileNo,
          @JsonKey(name: "signaturePath") final String? signaturePath}) =
      _$SetAgentMpinRequestModelImpl;

  factory _SetAgentMpinRequestModel.fromJson(Map<String, dynamic> json) =
      _$SetAgentMpinRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "mpin")
  String? get mpin;
  @override
  @JsonKey(name: "confirmMPIN")
  String? get confirmMpin;
  @override
  @JsonKey(name: "mobileNo")
  String? get mobileNo;
  @override
  @JsonKey(name: "signaturePath")
  String? get signaturePath;
  @override
  @JsonKey(ignore: true)
  _$$SetAgentMpinRequestModelImplCopyWith<_$SetAgentMpinRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
