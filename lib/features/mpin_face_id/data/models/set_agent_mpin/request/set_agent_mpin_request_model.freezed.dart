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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetAgentMpinRequestModel _$SetAgentMpinRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SetAgentMpinRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SetAgentMpinRequestModel {
  @JsonKey(name: "mPIN")
  String? get mPIN => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmMPIN")
  String? get confirmMpin => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNo")
  String? get mobileNo => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "mPIN") String? mPIN,
      @JsonKey(name: "confirmMPIN") String? confirmMpin,
      @JsonKey(name: "mobileNo") String? mobileNo});
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
    Object? mPIN = freezed,
    Object? confirmMpin = freezed,
    Object? mobileNo = freezed,
  }) {
    return _then(_value.copyWith(
      mPIN: freezed == mPIN
          ? _value.mPIN
          : mPIN // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmMpin: freezed == confirmMpin
          ? _value.confirmMpin
          : confirmMpin // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "mPIN") String? mPIN,
      @JsonKey(name: "confirmMPIN") String? confirmMpin,
      @JsonKey(name: "mobileNo") String? mobileNo});
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
    Object? mPIN = freezed,
    Object? confirmMpin = freezed,
    Object? mobileNo = freezed,
  }) {
    return _then(_$SetAgentMpinRequestModelImpl(
      mPIN: freezed == mPIN
          ? _value.mPIN
          : mPIN // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmMpin: freezed == confirmMpin
          ? _value.confirmMpin
          : confirmMpin // ignore: cast_nullable_to_non_nullable
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
class _$SetAgentMpinRequestModelImpl implements _SetAgentMpinRequestModel {
  const _$SetAgentMpinRequestModelImpl(
      {@JsonKey(name: "mPIN") this.mPIN,
      @JsonKey(name: "confirmMPIN") this.confirmMpin,
      @JsonKey(name: "mobileNo") this.mobileNo});

  factory _$SetAgentMpinRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAgentMpinRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "mPIN")
  final String? mPIN;
  @override
  @JsonKey(name: "confirmMPIN")
  final String? confirmMpin;
  @override
  @JsonKey(name: "mobileNo")
  final String? mobileNo;

  @override
  String toString() {
    return 'SetAgentMpinRequestModel(mPIN: $mPIN, confirmMpin: $confirmMpin, mobileNo: $mobileNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAgentMpinRequestModelImpl &&
            (identical(other.mPIN, mPIN) || other.mPIN == mPIN) &&
            (identical(other.confirmMpin, confirmMpin) ||
                other.confirmMpin == confirmMpin) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mPIN, confirmMpin, mobileNo);

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
          {@JsonKey(name: "mPIN") final String? mPIN,
          @JsonKey(name: "confirmMPIN") final String? confirmMpin,
          @JsonKey(name: "mobileNo") final String? mobileNo}) =
      _$SetAgentMpinRequestModelImpl;

  factory _SetAgentMpinRequestModel.fromJson(Map<String, dynamic> json) =
      _$SetAgentMpinRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "mPIN")
  String? get mPIN;
  @override
  @JsonKey(name: "confirmMPIN")
  String? get confirmMpin;
  @override
  @JsonKey(name: "mobileNo")
  String? get mobileNo;
  @override
  @JsonKey(ignore: true)
  _$$SetAgentMpinRequestModelImplCopyWith<_$SetAgentMpinRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
