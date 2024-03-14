// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_mpin_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangeMPINRequestModel _$ChangeMPINRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ChangeMPINRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ChangeMPINRequestModel {
  @JsonKey(name: "mPIN")
  MPIN get mPIN => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  OTP get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeMPINRequestModelCopyWith<ChangeMPINRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeMPINRequestModelCopyWith<$Res> {
  factory $ChangeMPINRequestModelCopyWith(ChangeMPINRequestModel value,
          $Res Function(ChangeMPINRequestModel) then) =
      _$ChangeMPINRequestModelCopyWithImpl<$Res, ChangeMPINRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "mPIN") MPIN mPIN, @JsonKey(name: "otp") OTP otp});

  $MPINCopyWith<$Res> get mPIN;
  $OTPCopyWith<$Res> get otp;
}

/// @nodoc
class _$ChangeMPINRequestModelCopyWithImpl<$Res,
        $Val extends ChangeMPINRequestModel>
    implements $ChangeMPINRequestModelCopyWith<$Res> {
  _$ChangeMPINRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mPIN = null,
    Object? otp = null,
  }) {
    return _then(_value.copyWith(
      mPIN: null == mPIN
          ? _value.mPIN
          : mPIN // ignore: cast_nullable_to_non_nullable
              as MPIN,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MPINCopyWith<$Res> get mPIN {
    return $MPINCopyWith<$Res>(_value.mPIN, (value) {
      return _then(_value.copyWith(mPIN: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OTPCopyWith<$Res> get otp {
    return $OTPCopyWith<$Res>(_value.otp, (value) {
      return _then(_value.copyWith(otp: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeMPINRequestModelImplCopyWith<$Res>
    implements $ChangeMPINRequestModelCopyWith<$Res> {
  factory _$$ChangeMPINRequestModelImplCopyWith(
          _$ChangeMPINRequestModelImpl value,
          $Res Function(_$ChangeMPINRequestModelImpl) then) =
      __$$ChangeMPINRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "mPIN") MPIN mPIN, @JsonKey(name: "otp") OTP otp});

  @override
  $MPINCopyWith<$Res> get mPIN;
  @override
  $OTPCopyWith<$Res> get otp;
}

/// @nodoc
class __$$ChangeMPINRequestModelImplCopyWithImpl<$Res>
    extends _$ChangeMPINRequestModelCopyWithImpl<$Res,
        _$ChangeMPINRequestModelImpl>
    implements _$$ChangeMPINRequestModelImplCopyWith<$Res> {
  __$$ChangeMPINRequestModelImplCopyWithImpl(
      _$ChangeMPINRequestModelImpl _value,
      $Res Function(_$ChangeMPINRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mPIN = null,
    Object? otp = null,
  }) {
    return _then(_$ChangeMPINRequestModelImpl(
      mPIN: null == mPIN
          ? _value.mPIN
          : mPIN // ignore: cast_nullable_to_non_nullable
              as MPIN,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as OTP,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeMPINRequestModelImpl implements _ChangeMPINRequestModel {
  const _$ChangeMPINRequestModelImpl(
      {@JsonKey(name: "mPIN") required this.mPIN,
      @JsonKey(name: "otp") required this.otp});

  factory _$ChangeMPINRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeMPINRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "mPIN")
  final MPIN mPIN;
  @override
  @JsonKey(name: "otp")
  final OTP otp;

  @override
  String toString() {
    return 'ChangeMPINRequestModel(mPIN: $mPIN, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMPINRequestModelImpl &&
            (identical(other.mPIN, mPIN) || other.mPIN == mPIN) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mPIN, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeMPINRequestModelImplCopyWith<_$ChangeMPINRequestModelImpl>
      get copyWith => __$$ChangeMPINRequestModelImplCopyWithImpl<
          _$ChangeMPINRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeMPINRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ChangeMPINRequestModel implements ChangeMPINRequestModel {
  const factory _ChangeMPINRequestModel(
          {@JsonKey(name: "mPIN") required final MPIN mPIN,
          @JsonKey(name: "otp") required final OTP otp}) =
      _$ChangeMPINRequestModelImpl;

  factory _ChangeMPINRequestModel.fromJson(Map<String, dynamic> json) =
      _$ChangeMPINRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "mPIN")
  MPIN get mPIN;
  @override
  @JsonKey(name: "otp")
  OTP get otp;
  @override
  @JsonKey(ignore: true)
  _$$ChangeMPINRequestModelImplCopyWith<_$ChangeMPINRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MPIN _$MPINFromJson(Map<String, dynamic> json) {
  return _MPIN.fromJson(json);
}

/// @nodoc
mixin _$MPIN {
  @JsonKey(name: "oldMPIN")
  String get oldMPIN => throw _privateConstructorUsedError;
  @JsonKey(name: "newMPIN")
  String get newMPIN => throw _privateConstructorUsedError;
  @JsonKey(name: "confirmNewMPIN")
  String get confirmNewMPIN => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MPINCopyWith<MPIN> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MPINCopyWith<$Res> {
  factory $MPINCopyWith(MPIN value, $Res Function(MPIN) then) =
      _$MPINCopyWithImpl<$Res, MPIN>;
  @useResult
  $Res call(
      {@JsonKey(name: "oldMPIN") String oldMPIN,
      @JsonKey(name: "newMPIN") String newMPIN,
      @JsonKey(name: "confirmNewMPIN") String confirmNewMPIN});
}

/// @nodoc
class _$MPINCopyWithImpl<$Res, $Val extends MPIN>
    implements $MPINCopyWith<$Res> {
  _$MPINCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldMPIN = null,
    Object? newMPIN = null,
    Object? confirmNewMPIN = null,
  }) {
    return _then(_value.copyWith(
      oldMPIN: null == oldMPIN
          ? _value.oldMPIN
          : oldMPIN // ignore: cast_nullable_to_non_nullable
              as String,
      newMPIN: null == newMPIN
          ? _value.newMPIN
          : newMPIN // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewMPIN: null == confirmNewMPIN
          ? _value.confirmNewMPIN
          : confirmNewMPIN // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MPINImplCopyWith<$Res> implements $MPINCopyWith<$Res> {
  factory _$$MPINImplCopyWith(
          _$MPINImpl value, $Res Function(_$MPINImpl) then) =
      __$$MPINImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "oldMPIN") String oldMPIN,
      @JsonKey(name: "newMPIN") String newMPIN,
      @JsonKey(name: "confirmNewMPIN") String confirmNewMPIN});
}

/// @nodoc
class __$$MPINImplCopyWithImpl<$Res>
    extends _$MPINCopyWithImpl<$Res, _$MPINImpl>
    implements _$$MPINImplCopyWith<$Res> {
  __$$MPINImplCopyWithImpl(_$MPINImpl _value, $Res Function(_$MPINImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldMPIN = null,
    Object? newMPIN = null,
    Object? confirmNewMPIN = null,
  }) {
    return _then(_$MPINImpl(
      oldMPIN: null == oldMPIN
          ? _value.oldMPIN
          : oldMPIN // ignore: cast_nullable_to_non_nullable
              as String,
      newMPIN: null == newMPIN
          ? _value.newMPIN
          : newMPIN // ignore: cast_nullable_to_non_nullable
              as String,
      confirmNewMPIN: null == confirmNewMPIN
          ? _value.confirmNewMPIN
          : confirmNewMPIN // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MPINImpl implements _MPIN {
  const _$MPINImpl(
      {@JsonKey(name: "oldMPIN") required this.oldMPIN,
      @JsonKey(name: "newMPIN") required this.newMPIN,
      @JsonKey(name: "confirmNewMPIN") required this.confirmNewMPIN});

  factory _$MPINImpl.fromJson(Map<String, dynamic> json) =>
      _$$MPINImplFromJson(json);

  @override
  @JsonKey(name: "oldMPIN")
  final String oldMPIN;
  @override
  @JsonKey(name: "newMPIN")
  final String newMPIN;
  @override
  @JsonKey(name: "confirmNewMPIN")
  final String confirmNewMPIN;

  @override
  String toString() {
    return 'MPIN(oldMPIN: $oldMPIN, newMPIN: $newMPIN, confirmNewMPIN: $confirmNewMPIN)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MPINImpl &&
            (identical(other.oldMPIN, oldMPIN) || other.oldMPIN == oldMPIN) &&
            (identical(other.newMPIN, newMPIN) || other.newMPIN == newMPIN) &&
            (identical(other.confirmNewMPIN, confirmNewMPIN) ||
                other.confirmNewMPIN == confirmNewMPIN));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, oldMPIN, newMPIN, confirmNewMPIN);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MPINImplCopyWith<_$MPINImpl> get copyWith =>
      __$$MPINImplCopyWithImpl<_$MPINImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MPINImplToJson(
      this,
    );
  }
}

abstract class _MPIN implements MPIN {
  const factory _MPIN(
      {@JsonKey(name: "oldMPIN") required final String oldMPIN,
      @JsonKey(name: "newMPIN") required final String newMPIN,
      @JsonKey(name: "confirmNewMPIN")
      required final String confirmNewMPIN}) = _$MPINImpl;

  factory _MPIN.fromJson(Map<String, dynamic> json) = _$MPINImpl.fromJson;

  @override
  @JsonKey(name: "oldMPIN")
  String get oldMPIN;
  @override
  @JsonKey(name: "newMPIN")
  String get newMPIN;
  @override
  @JsonKey(name: "confirmNewMPIN")
  String get confirmNewMPIN;
  @override
  @JsonKey(ignore: true)
  _$$MPINImplCopyWith<_$MPINImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OTP _$OTPFromJson(Map<String, dynamic> json) {
  return _OTP.fromJson(json);
}

/// @nodoc
mixin _$OTP {
  @JsonKey(name: "refCode")
  String get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: "otpNumber")
  String get otpNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OTPCopyWith<OTP> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPCopyWith<$Res> {
  factory $OTPCopyWith(OTP value, $Res Function(OTP) then) =
      _$OTPCopyWithImpl<$Res, OTP>;
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String refCode,
      @JsonKey(name: "otpNumber") String otpNumber});
}

/// @nodoc
class _$OTPCopyWithImpl<$Res, $Val extends OTP> implements $OTPCopyWith<$Res> {
  _$OTPCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCode = null,
    Object? otpNumber = null,
  }) {
    return _then(_value.copyWith(
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      otpNumber: null == otpNumber
          ? _value.otpNumber
          : otpNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OTPImplCopyWith<$Res> implements $OTPCopyWith<$Res> {
  factory _$$OTPImplCopyWith(_$OTPImpl value, $Res Function(_$OTPImpl) then) =
      __$$OTPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String refCode,
      @JsonKey(name: "otpNumber") String otpNumber});
}

/// @nodoc
class __$$OTPImplCopyWithImpl<$Res> extends _$OTPCopyWithImpl<$Res, _$OTPImpl>
    implements _$$OTPImplCopyWith<$Res> {
  __$$OTPImplCopyWithImpl(_$OTPImpl _value, $Res Function(_$OTPImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCode = null,
    Object? otpNumber = null,
  }) {
    return _then(_$OTPImpl(
      refCode: null == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String,
      otpNumber: null == otpNumber
          ? _value.otpNumber
          : otpNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OTPImpl implements _OTP {
  const _$OTPImpl(
      {@JsonKey(name: "refCode") required this.refCode,
      @JsonKey(name: "otpNumber") required this.otpNumber});

  factory _$OTPImpl.fromJson(Map<String, dynamic> json) =>
      _$$OTPImplFromJson(json);

  @override
  @JsonKey(name: "refCode")
  final String refCode;
  @override
  @JsonKey(name: "otpNumber")
  final String otpNumber;

  @override
  String toString() {
    return 'OTP(refCode: $refCode, otpNumber: $otpNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPImpl &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.otpNumber, otpNumber) ||
                other.otpNumber == otpNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refCode, otpNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPImplCopyWith<_$OTPImpl> get copyWith =>
      __$$OTPImplCopyWithImpl<_$OTPImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OTPImplToJson(
      this,
    );
  }
}

abstract class _OTP implements OTP {
  const factory _OTP(
      {@JsonKey(name: "refCode") required final String refCode,
      @JsonKey(name: "otpNumber") required final String otpNumber}) = _$OTPImpl;

  factory _OTP.fromJson(Map<String, dynamic> json) = _$OTPImpl.fromJson;

  @override
  @JsonKey(name: "refCode")
  String get refCode;
  @override
  @JsonKey(name: "otpNumber")
  String get otpNumber;
  @override
  @JsonKey(ignore: true)
  _$$OTPImplCopyWith<_$OTPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
