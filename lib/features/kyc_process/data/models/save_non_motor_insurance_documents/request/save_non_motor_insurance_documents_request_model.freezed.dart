// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_non_motor_insurance_documents_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveNonMotorInsuranceDocumentsRequestModel
    _$SaveNonMotorInsuranceDocumentsRequestModelFromJson(
        Map<String, dynamic> json) {
  return _SaveNonMotorInsuranceDocumentsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SaveNonMotorInsuranceDocumentsRequestModel {
  @JsonKey(name: 'agentApplicationId')
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isMotorDocVerificationCompleted')
  bool? get isMotorDocVerificationCompleted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'motorDoumentDetailsModel')
  List<MotorDocDetail>? get motorDocumentDetailsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveNonMotorInsuranceDocumentsRequestModelCopyWith<
          SaveNonMotorInsuranceDocumentsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveNonMotorInsuranceDocumentsRequestModelCopyWith<$Res> {
  factory $SaveNonMotorInsuranceDocumentsRequestModelCopyWith(
          SaveNonMotorInsuranceDocumentsRequestModel value,
          $Res Function(SaveNonMotorInsuranceDocumentsRequestModel) then) =
      _$SaveNonMotorInsuranceDocumentsRequestModelCopyWithImpl<$Res,
          SaveNonMotorInsuranceDocumentsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'agentApplicationId') int? agentApplicationId,
      @JsonKey(name: 'isMotorDocVerificationCompleted')
      bool? isMotorDocVerificationCompleted,
      @JsonKey(name: 'motorDoumentDetailsModel')
      List<MotorDocDetail>? motorDocumentDetailsModel});
}

/// @nodoc
class _$SaveNonMotorInsuranceDocumentsRequestModelCopyWithImpl<$Res,
        $Val extends SaveNonMotorInsuranceDocumentsRequestModel>
    implements $SaveNonMotorInsuranceDocumentsRequestModelCopyWith<$Res> {
  _$SaveNonMotorInsuranceDocumentsRequestModelCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isMotorDocVerificationCompleted = freezed,
    Object? motorDocumentDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isMotorDocVerificationCompleted: freezed ==
              isMotorDocVerificationCompleted
          ? _value.isMotorDocVerificationCompleted
          : isMotorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      motorDocumentDetailsModel: freezed == motorDocumentDetailsModel
          ? _value.motorDocumentDetailsModel
          : motorDocumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<MotorDocDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWith<$Res>
    implements $SaveNonMotorInsuranceDocumentsRequestModelCopyWith<$Res> {
  factory _$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWith(
          _$SaveNonMotorInsuranceDocumentsRequestModelImpl value,
          $Res Function(_$SaveNonMotorInsuranceDocumentsRequestModelImpl)
              then) =
      __$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'agentApplicationId') int? agentApplicationId,
      @JsonKey(name: 'isMotorDocVerificationCompleted')
      bool? isMotorDocVerificationCompleted,
      @JsonKey(name: 'motorDoumentDetailsModel')
      List<MotorDocDetail>? motorDocumentDetailsModel});
}

/// @nodoc
class __$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWithImpl<$Res>
    extends _$SaveNonMotorInsuranceDocumentsRequestModelCopyWithImpl<$Res,
        _$SaveNonMotorInsuranceDocumentsRequestModelImpl>
    implements _$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWith<$Res> {
  __$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWithImpl(
      _$SaveNonMotorInsuranceDocumentsRequestModelImpl _value,
      $Res Function(_$SaveNonMotorInsuranceDocumentsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isMotorDocVerificationCompleted = freezed,
    Object? motorDocumentDetailsModel = freezed,
  }) {
    return _then(_$SaveNonMotorInsuranceDocumentsRequestModelImpl(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isMotorDocVerificationCompleted: freezed ==
              isMotorDocVerificationCompleted
          ? _value.isMotorDocVerificationCompleted
          : isMotorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      motorDocumentDetailsModel: freezed == motorDocumentDetailsModel
          ? _value._motorDocumentDetailsModel
          : motorDocumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<MotorDocDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveNonMotorInsuranceDocumentsRequestModelImpl
    implements _SaveNonMotorInsuranceDocumentsRequestModel {
  const _$SaveNonMotorInsuranceDocumentsRequestModelImpl(
      {@JsonKey(name: 'agentApplicationId') this.agentApplicationId,
      @JsonKey(name: 'isMotorDocVerificationCompleted')
      this.isMotorDocVerificationCompleted,
      @JsonKey(name: 'motorDoumentDetailsModel')
      final List<MotorDocDetail>? motorDocumentDetailsModel})
      : _motorDocumentDetailsModel = motorDocumentDetailsModel;

  factory _$SaveNonMotorInsuranceDocumentsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveNonMotorInsuranceDocumentsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'agentApplicationId')
  final int? agentApplicationId;
  @override
  @JsonKey(name: 'isMotorDocVerificationCompleted')
  final bool? isMotorDocVerificationCompleted;
  final List<MotorDocDetail>? _motorDocumentDetailsModel;
  @override
  @JsonKey(name: 'motorDoumentDetailsModel')
  List<MotorDocDetail>? get motorDocumentDetailsModel {
    final value = _motorDocumentDetailsModel;
    if (value == null) return null;
    if (_motorDocumentDetailsModel is EqualUnmodifiableListView)
      return _motorDocumentDetailsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SaveNonMotorInsuranceDocumentsRequestModel(agentApplicationId: $agentApplicationId, isMotorDocVerificationCompleted: $isMotorDocVerificationCompleted, motorDocumentDetailsModel: $motorDocumentDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveNonMotorInsuranceDocumentsRequestModelImpl &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.isMotorDocVerificationCompleted,
                    isMotorDocVerificationCompleted) ||
                other.isMotorDocVerificationCompleted ==
                    isMotorDocVerificationCompleted) &&
            const DeepCollectionEquality().equals(
                other._motorDocumentDetailsModel, _motorDocumentDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentApplicationId,
      isMotorDocVerificationCompleted,
      const DeepCollectionEquality().hash(_motorDocumentDetailsModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWith<
          _$SaveNonMotorInsuranceDocumentsRequestModelImpl>
      get copyWith =>
          __$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWithImpl<
                  _$SaveNonMotorInsuranceDocumentsRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveNonMotorInsuranceDocumentsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SaveNonMotorInsuranceDocumentsRequestModel
    implements SaveNonMotorInsuranceDocumentsRequestModel {
  const factory _SaveNonMotorInsuranceDocumentsRequestModel(
          {@JsonKey(name: 'agentApplicationId') final int? agentApplicationId,
          @JsonKey(name: 'isMotorDocVerificationCompleted')
          final bool? isMotorDocVerificationCompleted,
          @JsonKey(name: 'motorDoumentDetailsModel')
          final List<MotorDocDetail>? motorDocumentDetailsModel}) =
      _$SaveNonMotorInsuranceDocumentsRequestModelImpl;

  factory _SaveNonMotorInsuranceDocumentsRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$SaveNonMotorInsuranceDocumentsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'agentApplicationId')
  int? get agentApplicationId;
  @override
  @JsonKey(name: 'isMotorDocVerificationCompleted')
  bool? get isMotorDocVerificationCompleted;
  @override
  @JsonKey(name: 'motorDoumentDetailsModel')
  List<MotorDocDetail>? get motorDocumentDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWith<
          _$SaveNonMotorInsuranceDocumentsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MotorDocDetail _$MotorDocDetailFromJson(Map<String, dynamic> json) {
  return _MotorDocDetail.fromJson(json);
}

/// @nodoc
mixin _$MotorDocDetail {
  @JsonKey(name: 'uploadDocumentId')
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'motorDocumentTypeId')
  int? get motorDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'motorDocuImagePath')
  String? get motorDocuImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotorDocDetailCopyWith<MotorDocDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorDocDetailCopyWith<$Res> {
  factory $MotorDocDetailCopyWith(
          MotorDocDetail value, $Res Function(MotorDocDetail) then) =
      _$MotorDocDetailCopyWithImpl<$Res, MotorDocDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadDocumentId') int? uploadDocumentId,
      @JsonKey(name: 'motorDocumentTypeId') int? motorDocumentTypeId,
      @JsonKey(name: 'motorDocuImagePath') String? motorDocuImagePath});
}

/// @nodoc
class _$MotorDocDetailCopyWithImpl<$Res, $Val extends MotorDocDetail>
    implements $MotorDocDetailCopyWith<$Res> {
  _$MotorDocDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadDocumentId = freezed,
    Object? motorDocumentTypeId = freezed,
    Object? motorDocuImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorDocumentTypeId: freezed == motorDocumentTypeId
          ? _value.motorDocumentTypeId
          : motorDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorDocuImagePath: freezed == motorDocuImagePath
          ? _value.motorDocuImagePath
          : motorDocuImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MotorDocDetailImplCopyWith<$Res>
    implements $MotorDocDetailCopyWith<$Res> {
  factory _$$MotorDocDetailImplCopyWith(_$MotorDocDetailImpl value,
          $Res Function(_$MotorDocDetailImpl) then) =
      __$$MotorDocDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadDocumentId') int? uploadDocumentId,
      @JsonKey(name: 'motorDocumentTypeId') int? motorDocumentTypeId,
      @JsonKey(name: 'motorDocuImagePath') String? motorDocuImagePath});
}

/// @nodoc
class __$$MotorDocDetailImplCopyWithImpl<$Res>
    extends _$MotorDocDetailCopyWithImpl<$Res, _$MotorDocDetailImpl>
    implements _$$MotorDocDetailImplCopyWith<$Res> {
  __$$MotorDocDetailImplCopyWithImpl(
      _$MotorDocDetailImpl _value, $Res Function(_$MotorDocDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadDocumentId = freezed,
    Object? motorDocumentTypeId = freezed,
    Object? motorDocuImagePath = freezed,
  }) {
    return _then(_$MotorDocDetailImpl(
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorDocumentTypeId: freezed == motorDocumentTypeId
          ? _value.motorDocumentTypeId
          : motorDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorDocuImagePath: freezed == motorDocuImagePath
          ? _value.motorDocuImagePath
          : motorDocuImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotorDocDetailImpl implements _MotorDocDetail {
  const _$MotorDocDetailImpl(
      {@JsonKey(name: 'uploadDocumentId') this.uploadDocumentId,
      @JsonKey(name: 'motorDocumentTypeId') this.motorDocumentTypeId,
      @JsonKey(name: 'motorDocuImagePath') this.motorDocuImagePath});

  factory _$MotorDocDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotorDocDetailImplFromJson(json);

  @override
  @JsonKey(name: 'uploadDocumentId')
  final int? uploadDocumentId;
  @override
  @JsonKey(name: 'motorDocumentTypeId')
  final int? motorDocumentTypeId;
  @override
  @JsonKey(name: 'motorDocuImagePath')
  final String? motorDocuImagePath;

  @override
  String toString() {
    return 'MotorDocDetail(uploadDocumentId: $uploadDocumentId, motorDocumentTypeId: $motorDocumentTypeId, motorDocuImagePath: $motorDocuImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotorDocDetailImpl &&
            (identical(other.uploadDocumentId, uploadDocumentId) ||
                other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.motorDocumentTypeId, motorDocumentTypeId) ||
                other.motorDocumentTypeId == motorDocumentTypeId) &&
            (identical(other.motorDocuImagePath, motorDocuImagePath) ||
                other.motorDocuImagePath == motorDocuImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uploadDocumentId, motorDocumentTypeId, motorDocuImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MotorDocDetailImplCopyWith<_$MotorDocDetailImpl> get copyWith =>
      __$$MotorDocDetailImplCopyWithImpl<_$MotorDocDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotorDocDetailImplToJson(
      this,
    );
  }
}

abstract class _MotorDocDetail implements MotorDocDetail {
  const factory _MotorDocDetail(
      {@JsonKey(name: 'uploadDocumentId') final int? uploadDocumentId,
      @JsonKey(name: 'motorDocumentTypeId') final int? motorDocumentTypeId,
      @JsonKey(name: 'motorDocuImagePath')
      final String? motorDocuImagePath}) = _$MotorDocDetailImpl;

  factory _MotorDocDetail.fromJson(Map<String, dynamic> json) =
      _$MotorDocDetailImpl.fromJson;

  @override
  @JsonKey(name: 'uploadDocumentId')
  int? get uploadDocumentId;
  @override
  @JsonKey(name: 'motorDocumentTypeId')
  int? get motorDocumentTypeId;
  @override
  @JsonKey(name: 'motorDocuImagePath')
  String? get motorDocuImagePath;
  @override
  @JsonKey(ignore: true)
  _$$MotorDocDetailImplCopyWith<_$MotorDocDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
