// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_mpin_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyMPINRequestModel _$VerifyMPINRequestModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyMPINRequestModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyMPINRequestModel {
  @JsonKey(name: "isExistingCustomer")
  bool? get isExistingCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: "oldMPIN")
  String? get oldMPIN => throw _privateConstructorUsedError;
  @JsonKey(name: "newMPIN")
  String? get newMPIN => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmNewMPIN")
  String? get confirmNewMPIN => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMPINRequestModelCopyWith<VerifyMPINRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMPINRequestModelCopyWith<$Res> {
  factory $VerifyMPINRequestModelCopyWith(VerifyMPINRequestModel value,
          $Res Function(VerifyMPINRequestModel) then) =
      _$VerifyMPINRequestModelCopyWithImpl<$Res, VerifyMPINRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "isExistingCustomer") bool? isExistingCustomer,
      @JsonKey(name: "oldMPIN") String? oldMPIN,
      @JsonKey(name: "newMPIN") String? newMPIN,
      @JsonKey(name: "confirmNewMPIN") String? confirmNewMPIN});
}

/// @nodoc
class _$VerifyMPINRequestModelCopyWithImpl<$Res,
        $Val extends VerifyMPINRequestModel>
    implements $VerifyMPINRequestModelCopyWith<$Res> {
  _$VerifyMPINRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExistingCustomer = freezed,
    Object? oldMPIN = freezed,
    Object? newMPIN = freezed,
    Object? confirmNewMPIN = freezed,
  }) {
    return _then(_value.copyWith(
      isExistingCustomer: freezed == isExistingCustomer
          ? _value.isExistingCustomer
          : isExistingCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldMPIN: freezed == oldMPIN
          ? _value.oldMPIN
          : oldMPIN // ignore: cast_nullable_to_non_nullable
              as String?,
      newMPIN: freezed == newMPIN
          ? _value.newMPIN
          : newMPIN // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmNewMPIN: freezed == confirmNewMPIN
          ? _value.confirmNewMPIN
          : confirmNewMPIN // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyMPINRequestModelImplCopyWith<$Res>
    implements $VerifyMPINRequestModelCopyWith<$Res> {
  factory _$$VerifyMPINRequestModelImplCopyWith(
          _$VerifyMPINRequestModelImpl value,
          $Res Function(_$VerifyMPINRequestModelImpl) then) =
      __$$VerifyMPINRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isExistingCustomer") bool? isExistingCustomer,
      @JsonKey(name: "oldMPIN") String? oldMPIN,
      @JsonKey(name: "newMPIN") String? newMPIN,
      @JsonKey(name: "confirmNewMPIN") String? confirmNewMPIN});
}

/// @nodoc
class __$$VerifyMPINRequestModelImplCopyWithImpl<$Res>
    extends _$VerifyMPINRequestModelCopyWithImpl<$Res,
        _$VerifyMPINRequestModelImpl>
    implements _$$VerifyMPINRequestModelImplCopyWith<$Res> {
  __$$VerifyMPINRequestModelImplCopyWithImpl(
      _$VerifyMPINRequestModelImpl _value,
      $Res Function(_$VerifyMPINRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExistingCustomer = freezed,
    Object? oldMPIN = freezed,
    Object? newMPIN = freezed,
    Object? confirmNewMPIN = freezed,
  }) {
    return _then(_$VerifyMPINRequestModelImpl(
      isExistingCustomer: freezed == isExistingCustomer
          ? _value.isExistingCustomer
          : isExistingCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      oldMPIN: freezed == oldMPIN
          ? _value.oldMPIN
          : oldMPIN // ignore: cast_nullable_to_non_nullable
              as String?,
      newMPIN: freezed == newMPIN
          ? _value.newMPIN
          : newMPIN // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmNewMPIN: freezed == confirmNewMPIN
          ? _value.confirmNewMPIN
          : confirmNewMPIN // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyMPINRequestModelImpl implements _VerifyMPINRequestModel {
  const _$VerifyMPINRequestModelImpl(
      {@JsonKey(name: "isExistingCustomer") this.isExistingCustomer,
      @JsonKey(name: "oldMPIN") this.oldMPIN,
      @JsonKey(name: "newMPIN") this.newMPIN,
      @JsonKey(name: "confirmNewMPIN") this.confirmNewMPIN});

  factory _$VerifyMPINRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyMPINRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "isExistingCustomer")
  final bool? isExistingCustomer;
  @override
  @JsonKey(name: "oldMPIN")
  final String? oldMPIN;
  @override
  @JsonKey(name: "newMPIN")
  final String? newMPIN;
  @override
  @JsonKey(name: "confirmNewMPIN")
  final String? confirmNewMPIN;

  @override
  String toString() {
    return 'VerifyMPINRequestModel(isExistingCustomer: $isExistingCustomer, oldMPIN: $oldMPIN, newMPIN: $newMPIN, confirmNewMPIN: $confirmNewMPIN)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMPINRequestModelImpl &&
            (identical(other.isExistingCustomer, isExistingCustomer) ||
                other.isExistingCustomer == isExistingCustomer) &&
            (identical(other.oldMPIN, oldMPIN) || other.oldMPIN == oldMPIN) &&
            (identical(other.newMPIN, newMPIN) || other.newMPIN == newMPIN) &&
            (identical(other.confirmNewMPIN, confirmNewMPIN) ||
                other.confirmNewMPIN == confirmNewMPIN));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, isExistingCustomer, oldMPIN, newMPIN, confirmNewMPIN);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyMPINRequestModelImplCopyWith<_$VerifyMPINRequestModelImpl>
      get copyWith => __$$VerifyMPINRequestModelImplCopyWithImpl<
          _$VerifyMPINRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMPINRequestModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyMPINRequestModel implements VerifyMPINRequestModel {
  const factory _VerifyMPINRequestModel(
          {@JsonKey(name: "isExistingCustomer") final bool? isExistingCustomer,
          @JsonKey(name: "oldMPIN") final String? oldMPIN,
          @JsonKey(name: "newMPIN") final String? newMPIN,
          @JsonKey(name: "confirmNewMPIN") final String? confirmNewMPIN}) =
      _$VerifyMPINRequestModelImpl;

  factory _VerifyMPINRequestModel.fromJson(Map<String, dynamic> json) =
      _$VerifyMPINRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "isExistingCustomer")
  bool? get isExistingCustomer;
  @override
  @JsonKey(name: "oldMPIN")
  String? get oldMPIN;
  @override
  @JsonKey(name: "newMPIN")
  String? get newMPIN;
  @override
  @JsonKey(name: "confirmNewMPIN")
  String? get confirmNewMPIN;
  @override
  @JsonKey(ignore: true)
  _$$VerifyMPINRequestModelImplCopyWith<_$VerifyMPINRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
