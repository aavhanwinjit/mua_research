// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_otp_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ValidateOtpRequestModel _$ValidateOtpRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ValidateOtpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateOtpRequestModel {
  @JsonKey(name: "preValidationModel")
  PreValidationModel? get preValidationModel =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateOtpRequestModelCopyWith<ValidateOtpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOtpRequestModelCopyWith<$Res> {
  factory $ValidateOtpRequestModelCopyWith(ValidateOtpRequestModel value,
          $Res Function(ValidateOtpRequestModel) then) =
      _$ValidateOtpRequestModelCopyWithImpl<$Res, ValidateOtpRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "preValidationModel")
      PreValidationModel? preValidationModel,
      @JsonKey(name: "mobileNumber") String? mobileNumber});

  $PreValidationModelCopyWith<$Res>? get preValidationModel;
}

/// @nodoc
class _$ValidateOtpRequestModelCopyWithImpl<$Res,
        $Val extends ValidateOtpRequestModel>
    implements $ValidateOtpRequestModelCopyWith<$Res> {
  _$ValidateOtpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preValidationModel = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_value.copyWith(
      preValidationModel: freezed == preValidationModel
          ? _value.preValidationModel
          : preValidationModel // ignore: cast_nullable_to_non_nullable
              as PreValidationModel?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreValidationModelCopyWith<$Res>? get preValidationModel {
    if (_value.preValidationModel == null) {
      return null;
    }

    return $PreValidationModelCopyWith<$Res>(_value.preValidationModel!,
        (value) {
      return _then(_value.copyWith(preValidationModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidateOtpRequestModelImplCopyWith<$Res>
    implements $ValidateOtpRequestModelCopyWith<$Res> {
  factory _$$ValidateOtpRequestModelImplCopyWith(
          _$ValidateOtpRequestModelImpl value,
          $Res Function(_$ValidateOtpRequestModelImpl) then) =
      __$$ValidateOtpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "preValidationModel")
      PreValidationModel? preValidationModel,
      @JsonKey(name: "mobileNumber") String? mobileNumber});

  @override
  $PreValidationModelCopyWith<$Res>? get preValidationModel;
}

/// @nodoc
class __$$ValidateOtpRequestModelImplCopyWithImpl<$Res>
    extends _$ValidateOtpRequestModelCopyWithImpl<$Res,
        _$ValidateOtpRequestModelImpl>
    implements _$$ValidateOtpRequestModelImplCopyWith<$Res> {
  __$$ValidateOtpRequestModelImplCopyWithImpl(
      _$ValidateOtpRequestModelImpl _value,
      $Res Function(_$ValidateOtpRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? preValidationModel = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_$ValidateOtpRequestModelImpl(
      preValidationModel: freezed == preValidationModel
          ? _value.preValidationModel
          : preValidationModel // ignore: cast_nullable_to_non_nullable
              as PreValidationModel?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateOtpRequestModelImpl implements _ValidateOtpRequestModel {
  const _$ValidateOtpRequestModelImpl(
      {@JsonKey(name: "preValidationModel") this.preValidationModel,
      @JsonKey(name: "mobileNumber") this.mobileNumber});

  factory _$ValidateOtpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateOtpRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "preValidationModel")
  final PreValidationModel? preValidationModel;
  @override
  @JsonKey(name: "mobileNumber")
  final String? mobileNumber;

  @override
  String toString() {
    return 'ValidateOtpRequestModel(preValidationModel: $preValidationModel, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOtpRequestModelImpl &&
            (identical(other.preValidationModel, preValidationModel) ||
                other.preValidationModel == preValidationModel) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, preValidationModel, mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateOtpRequestModelImplCopyWith<_$ValidateOtpRequestModelImpl>
      get copyWith => __$$ValidateOtpRequestModelImplCopyWithImpl<
          _$ValidateOtpRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateOtpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateOtpRequestModel implements ValidateOtpRequestModel {
  const factory _ValidateOtpRequestModel(
          {@JsonKey(name: "preValidationModel")
          final PreValidationModel? preValidationModel,
          @JsonKey(name: "mobileNumber") final String? mobileNumber}) =
      _$ValidateOtpRequestModelImpl;

  factory _ValidateOtpRequestModel.fromJson(Map<String, dynamic> json) =
      _$ValidateOtpRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "preValidationModel")
  PreValidationModel? get preValidationModel;
  @override
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$$ValidateOtpRequestModelImplCopyWith<_$ValidateOtpRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PreValidationModel _$PreValidationModelFromJson(Map<String, dynamic> json) {
  return _PreValidationModel.fromJson(json);
}

/// @nodoc
mixin _$PreValidationModel {
  @JsonKey(name: "validationType")
  String? get validationType => throw _privateConstructorUsedError;
  @JsonKey(name: "refCode")
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: "otpNumber")
  String? get otpNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "key")
  String? get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreValidationModelCopyWith<PreValidationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreValidationModelCopyWith<$Res> {
  factory $PreValidationModelCopyWith(
          PreValidationModel value, $Res Function(PreValidationModel) then) =
      _$PreValidationModelCopyWithImpl<$Res, PreValidationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "validationType") String? validationType,
      @JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "otpNumber") String? otpNumber,
      @JsonKey(name: "key") String? key});
}

/// @nodoc
class _$PreValidationModelCopyWithImpl<$Res, $Val extends PreValidationModel>
    implements $PreValidationModelCopyWith<$Res> {
  _$PreValidationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationType = freezed,
    Object? refCode = freezed,
    Object? otpNumber = freezed,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      validationType: freezed == validationType
          ? _value.validationType
          : validationType // ignore: cast_nullable_to_non_nullable
              as String?,
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      otpNumber: freezed == otpNumber
          ? _value.otpNumber
          : otpNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreValidationModelImplCopyWith<$Res>
    implements $PreValidationModelCopyWith<$Res> {
  factory _$$PreValidationModelImplCopyWith(_$PreValidationModelImpl value,
          $Res Function(_$PreValidationModelImpl) then) =
      __$$PreValidationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "validationType") String? validationType,
      @JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "otpNumber") String? otpNumber,
      @JsonKey(name: "key") String? key});
}

/// @nodoc
class __$$PreValidationModelImplCopyWithImpl<$Res>
    extends _$PreValidationModelCopyWithImpl<$Res, _$PreValidationModelImpl>
    implements _$$PreValidationModelImplCopyWith<$Res> {
  __$$PreValidationModelImplCopyWithImpl(_$PreValidationModelImpl _value,
      $Res Function(_$PreValidationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validationType = freezed,
    Object? refCode = freezed,
    Object? otpNumber = freezed,
    Object? key = freezed,
  }) {
    return _then(_$PreValidationModelImpl(
      validationType: freezed == validationType
          ? _value.validationType
          : validationType // ignore: cast_nullable_to_non_nullable
              as String?,
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      otpNumber: freezed == otpNumber
          ? _value.otpNumber
          : otpNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreValidationModelImpl implements _PreValidationModel {
  const _$PreValidationModelImpl(
      {@JsonKey(name: "validationType") this.validationType,
      @JsonKey(name: "refCode") this.refCode,
      @JsonKey(name: "otpNumber") this.otpNumber,
      @JsonKey(name: "key") this.key});

  factory _$PreValidationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreValidationModelImplFromJson(json);

  @override
  @JsonKey(name: "validationType")
  final String? validationType;
  @override
  @JsonKey(name: "refCode")
  final String? refCode;
  @override
  @JsonKey(name: "otpNumber")
  final String? otpNumber;
  @override
  @JsonKey(name: "key")
  final String? key;

  @override
  String toString() {
    return 'PreValidationModel(validationType: $validationType, refCode: $refCode, otpNumber: $otpNumber, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreValidationModelImpl &&
            (identical(other.validationType, validationType) ||
                other.validationType == validationType) &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.otpNumber, otpNumber) ||
                other.otpNumber == otpNumber) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, validationType, refCode, otpNumber, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreValidationModelImplCopyWith<_$PreValidationModelImpl> get copyWith =>
      __$$PreValidationModelImplCopyWithImpl<_$PreValidationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreValidationModelImplToJson(
      this,
    );
  }
}

abstract class _PreValidationModel implements PreValidationModel {
  const factory _PreValidationModel(
      {@JsonKey(name: "validationType") final String? validationType,
      @JsonKey(name: "refCode") final String? refCode,
      @JsonKey(name: "otpNumber") final String? otpNumber,
      @JsonKey(name: "key") final String? key}) = _$PreValidationModelImpl;

  factory _PreValidationModel.fromJson(Map<String, dynamic> json) =
      _$PreValidationModelImpl.fromJson;

  @override
  @JsonKey(name: "validationType")
  String? get validationType;
  @override
  @JsonKey(name: "refCode")
  String? get refCode;
  @override
  @JsonKey(name: "otpNumber")
  String? get otpNumber;
  @override
  @JsonKey(name: "key")
  String? get key;
  @override
  @JsonKey(ignore: true)
  _$$PreValidationModelImplCopyWith<_$PreValidationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
