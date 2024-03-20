// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_mobile_number_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyMobileNumberRequestModel _$VerifyMobileNumberRequestModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyMobileNumberRequestModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyMobileNumberRequestModel {
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMobileNumberRequestModelCopyWith<VerifyMobileNumberRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMobileNumberRequestModelCopyWith<$Res> {
  factory $VerifyMobileNumberRequestModelCopyWith(
          VerifyMobileNumberRequestModel value,
          $Res Function(VerifyMobileNumberRequestModel) then) =
      _$VerifyMobileNumberRequestModelCopyWithImpl<$Res,
          VerifyMobileNumberRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "mobileNumber") String? mobileNumber});
}

/// @nodoc
class _$VerifyMobileNumberRequestModelCopyWithImpl<$Res,
        $Val extends VerifyMobileNumberRequestModel>
    implements $VerifyMobileNumberRequestModelCopyWith<$Res> {
  _$VerifyMobileNumberRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
  }) {
    return _then(_value.copyWith(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyMobileNumberRequestModelImplCopyWith<$Res>
    implements $VerifyMobileNumberRequestModelCopyWith<$Res> {
  factory _$$VerifyMobileNumberRequestModelImplCopyWith(
          _$VerifyMobileNumberRequestModelImpl value,
          $Res Function(_$VerifyMobileNumberRequestModelImpl) then) =
      __$$VerifyMobileNumberRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "mobileNumber") String? mobileNumber});
}

/// @nodoc
class __$$VerifyMobileNumberRequestModelImplCopyWithImpl<$Res>
    extends _$VerifyMobileNumberRequestModelCopyWithImpl<$Res,
        _$VerifyMobileNumberRequestModelImpl>
    implements _$$VerifyMobileNumberRequestModelImplCopyWith<$Res> {
  __$$VerifyMobileNumberRequestModelImplCopyWithImpl(
      _$VerifyMobileNumberRequestModelImpl _value,
      $Res Function(_$VerifyMobileNumberRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobileNumber = freezed,
  }) {
    return _then(_$VerifyMobileNumberRequestModelImpl(
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyMobileNumberRequestModelImpl
    implements _VerifyMobileNumberRequestModel {
  const _$VerifyMobileNumberRequestModelImpl(
      {@JsonKey(name: "mobileNumber") this.mobileNumber});

  factory _$VerifyMobileNumberRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerifyMobileNumberRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "mobileNumber")
  final String? mobileNumber;

  @override
  String toString() {
    return 'VerifyMobileNumberRequestModel(mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMobileNumberRequestModelImpl &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyMobileNumberRequestModelImplCopyWith<
          _$VerifyMobileNumberRequestModelImpl>
      get copyWith => __$$VerifyMobileNumberRequestModelImplCopyWithImpl<
          _$VerifyMobileNumberRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMobileNumberRequestModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyMobileNumberRequestModel
    implements VerifyMobileNumberRequestModel {
  const factory _VerifyMobileNumberRequestModel(
          {@JsonKey(name: "mobileNumber") final String? mobileNumber}) =
      _$VerifyMobileNumberRequestModelImpl;

  factory _VerifyMobileNumberRequestModel.fromJson(Map<String, dynamic> json) =
      _$VerifyMobileNumberRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$$VerifyMobileNumberRequestModelImplCopyWith<
          _$VerifyMobileNumberRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
