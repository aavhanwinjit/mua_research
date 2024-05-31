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
  @JsonKey(name: 'isNonMotorDocVerificationCompleted')
  bool? get isNonMotorDocVerificationCompleted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'nonMotorInsuranceDocDetailsModel')
  List<NonMotorDocDetail>? get nonMotorDocumentDetailsModel =>
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
      @JsonKey(name: 'isNonMotorDocVerificationCompleted')
      bool? isNonMotorDocVerificationCompleted,
      @JsonKey(name: 'nonMotorInsuranceDocDetailsModel')
      List<NonMotorDocDetail>? nonMotorDocumentDetailsModel});
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
    Object? isNonMotorDocVerificationCompleted = freezed,
    Object? nonMotorDocumentDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isNonMotorDocVerificationCompleted: freezed ==
              isNonMotorDocVerificationCompleted
          ? _value.isNonMotorDocVerificationCompleted
          : isNonMotorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      nonMotorDocumentDetailsModel: freezed == nonMotorDocumentDetailsModel
          ? _value.nonMotorDocumentDetailsModel
          : nonMotorDocumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<NonMotorDocDetail>?,
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
      @JsonKey(name: 'isNonMotorDocVerificationCompleted')
      bool? isNonMotorDocVerificationCompleted,
      @JsonKey(name: 'nonMotorInsuranceDocDetailsModel')
      List<NonMotorDocDetail>? nonMotorDocumentDetailsModel});
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
    Object? isNonMotorDocVerificationCompleted = freezed,
    Object? nonMotorDocumentDetailsModel = freezed,
  }) {
    return _then(_$SaveNonMotorInsuranceDocumentsRequestModelImpl(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isNonMotorDocVerificationCompleted: freezed ==
              isNonMotorDocVerificationCompleted
          ? _value.isNonMotorDocVerificationCompleted
          : isNonMotorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      nonMotorDocumentDetailsModel: freezed == nonMotorDocumentDetailsModel
          ? _value._nonMotorDocumentDetailsModel
          : nonMotorDocumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<NonMotorDocDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveNonMotorInsuranceDocumentsRequestModelImpl
    implements _SaveNonMotorInsuranceDocumentsRequestModel {
  const _$SaveNonMotorInsuranceDocumentsRequestModelImpl(
      {@JsonKey(name: 'agentApplicationId') this.agentApplicationId,
      @JsonKey(name: 'isNonMotorDocVerificationCompleted')
      this.isNonMotorDocVerificationCompleted,
      @JsonKey(name: 'nonMotorInsuranceDocDetailsModel')
      final List<NonMotorDocDetail>? nonMotorDocumentDetailsModel})
      : _nonMotorDocumentDetailsModel = nonMotorDocumentDetailsModel;

  factory _$SaveNonMotorInsuranceDocumentsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveNonMotorInsuranceDocumentsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'agentApplicationId')
  final int? agentApplicationId;
  @override
  @JsonKey(name: 'isNonMotorDocVerificationCompleted')
  final bool? isNonMotorDocVerificationCompleted;
  final List<NonMotorDocDetail>? _nonMotorDocumentDetailsModel;
  @override
  @JsonKey(name: 'nonMotorInsuranceDocDetailsModel')
  List<NonMotorDocDetail>? get nonMotorDocumentDetailsModel {
    final value = _nonMotorDocumentDetailsModel;
    if (value == null) return null;
    if (_nonMotorDocumentDetailsModel is EqualUnmodifiableListView)
      return _nonMotorDocumentDetailsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SaveNonMotorInsuranceDocumentsRequestModel(agentApplicationId: $agentApplicationId, isNonMotorDocVerificationCompleted: $isNonMotorDocVerificationCompleted, nonMotorDocumentDetailsModel: $nonMotorDocumentDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveNonMotorInsuranceDocumentsRequestModelImpl &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.isNonMotorDocVerificationCompleted,
                    isNonMotorDocVerificationCompleted) ||
                other.isNonMotorDocVerificationCompleted ==
                    isNonMotorDocVerificationCompleted) &&
            const DeepCollectionEquality().equals(
                other._nonMotorDocumentDetailsModel,
                _nonMotorDocumentDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentApplicationId,
      isNonMotorDocVerificationCompleted,
      const DeepCollectionEquality().hash(_nonMotorDocumentDetailsModel));

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
          @JsonKey(name: 'isNonMotorDocVerificationCompleted')
          final bool? isNonMotorDocVerificationCompleted,
          @JsonKey(name: 'nonMotorInsuranceDocDetailsModel')
          final List<NonMotorDocDetail>? nonMotorDocumentDetailsModel}) =
      _$SaveNonMotorInsuranceDocumentsRequestModelImpl;

  factory _SaveNonMotorInsuranceDocumentsRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$SaveNonMotorInsuranceDocumentsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'agentApplicationId')
  int? get agentApplicationId;
  @override
  @JsonKey(name: 'isNonMotorDocVerificationCompleted')
  bool? get isNonMotorDocVerificationCompleted;
  @override
  @JsonKey(name: 'nonMotorInsuranceDocDetailsModel')
  List<NonMotorDocDetail>? get nonMotorDocumentDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$SaveNonMotorInsuranceDocumentsRequestModelImplCopyWith<
          _$SaveNonMotorInsuranceDocumentsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NonMotorDocDetail _$NonMotorDocDetailFromJson(Map<String, dynamic> json) {
  return _NonMotorDocDetail.fromJson(json);
}

/// @nodoc
mixin _$NonMotorDocDetail {
  @JsonKey(name: 'uploadDocumentId')
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nonMotorInsuranceDocumentTypeId')
  int? get nonMotorDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nonMotorDocImagePath')
  String? get nonMotorDocImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NonMotorDocDetailCopyWith<NonMotorDocDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonMotorDocDetailCopyWith<$Res> {
  factory $NonMotorDocDetailCopyWith(
          NonMotorDocDetail value, $Res Function(NonMotorDocDetail) then) =
      _$NonMotorDocDetailCopyWithImpl<$Res, NonMotorDocDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadDocumentId') int? uploadDocumentId,
      @JsonKey(name: 'nonMotorInsuranceDocumentTypeId')
      int? nonMotorDocumentTypeId,
      @JsonKey(name: 'nonMotorDocImagePath') String? nonMotorDocImagePath});
}

/// @nodoc
class _$NonMotorDocDetailCopyWithImpl<$Res, $Val extends NonMotorDocDetail>
    implements $NonMotorDocDetailCopyWith<$Res> {
  _$NonMotorDocDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadDocumentId = freezed,
    Object? nonMotorDocumentTypeId = freezed,
    Object? nonMotorDocImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorDocumentTypeId: freezed == nonMotorDocumentTypeId
          ? _value.nonMotorDocumentTypeId
          : nonMotorDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorDocImagePath: freezed == nonMotorDocImagePath
          ? _value.nonMotorDocImagePath
          : nonMotorDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NonMotorDocDetailImplCopyWith<$Res>
    implements $NonMotorDocDetailCopyWith<$Res> {
  factory _$$NonMotorDocDetailImplCopyWith(_$NonMotorDocDetailImpl value,
          $Res Function(_$NonMotorDocDetailImpl) then) =
      __$$NonMotorDocDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uploadDocumentId') int? uploadDocumentId,
      @JsonKey(name: 'nonMotorInsuranceDocumentTypeId')
      int? nonMotorDocumentTypeId,
      @JsonKey(name: 'nonMotorDocImagePath') String? nonMotorDocImagePath});
}

/// @nodoc
class __$$NonMotorDocDetailImplCopyWithImpl<$Res>
    extends _$NonMotorDocDetailCopyWithImpl<$Res, _$NonMotorDocDetailImpl>
    implements _$$NonMotorDocDetailImplCopyWith<$Res> {
  __$$NonMotorDocDetailImplCopyWithImpl(_$NonMotorDocDetailImpl _value,
      $Res Function(_$NonMotorDocDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadDocumentId = freezed,
    Object? nonMotorDocumentTypeId = freezed,
    Object? nonMotorDocImagePath = freezed,
  }) {
    return _then(_$NonMotorDocDetailImpl(
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorDocumentTypeId: freezed == nonMotorDocumentTypeId
          ? _value.nonMotorDocumentTypeId
          : nonMotorDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorDocImagePath: freezed == nonMotorDocImagePath
          ? _value.nonMotorDocImagePath
          : nonMotorDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NonMotorDocDetailImpl implements _NonMotorDocDetail {
  const _$NonMotorDocDetailImpl(
      {@JsonKey(name: 'uploadDocumentId') this.uploadDocumentId,
      @JsonKey(name: 'nonMotorInsuranceDocumentTypeId')
      this.nonMotorDocumentTypeId,
      @JsonKey(name: 'nonMotorDocImagePath') this.nonMotorDocImagePath});

  factory _$NonMotorDocDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$NonMotorDocDetailImplFromJson(json);

  @override
  @JsonKey(name: 'uploadDocumentId')
  final int? uploadDocumentId;
  @override
  @JsonKey(name: 'nonMotorInsuranceDocumentTypeId')
  final int? nonMotorDocumentTypeId;
  @override
  @JsonKey(name: 'nonMotorDocImagePath')
  final String? nonMotorDocImagePath;

  @override
  String toString() {
    return 'NonMotorDocDetail(uploadDocumentId: $uploadDocumentId, nonMotorDocumentTypeId: $nonMotorDocumentTypeId, nonMotorDocImagePath: $nonMotorDocImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonMotorDocDetailImpl &&
            (identical(other.uploadDocumentId, uploadDocumentId) ||
                other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.nonMotorDocumentTypeId, nonMotorDocumentTypeId) ||
                other.nonMotorDocumentTypeId == nonMotorDocumentTypeId) &&
            (identical(other.nonMotorDocImagePath, nonMotorDocImagePath) ||
                other.nonMotorDocImagePath == nonMotorDocImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uploadDocumentId,
      nonMotorDocumentTypeId, nonMotorDocImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NonMotorDocDetailImplCopyWith<_$NonMotorDocDetailImpl> get copyWith =>
      __$$NonMotorDocDetailImplCopyWithImpl<_$NonMotorDocDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NonMotorDocDetailImplToJson(
      this,
    );
  }
}

abstract class _NonMotorDocDetail implements NonMotorDocDetail {
  const factory _NonMotorDocDetail(
      {@JsonKey(name: 'uploadDocumentId') final int? uploadDocumentId,
      @JsonKey(name: 'nonMotorInsuranceDocumentTypeId')
      final int? nonMotorDocumentTypeId,
      @JsonKey(name: 'nonMotorDocImagePath')
      final String? nonMotorDocImagePath}) = _$NonMotorDocDetailImpl;

  factory _NonMotorDocDetail.fromJson(Map<String, dynamic> json) =
      _$NonMotorDocDetailImpl.fromJson;

  @override
  @JsonKey(name: 'uploadDocumentId')
  int? get uploadDocumentId;
  @override
  @JsonKey(name: 'nonMotorInsuranceDocumentTypeId')
  int? get nonMotorDocumentTypeId;
  @override
  @JsonKey(name: 'nonMotorDocImagePath')
  String? get nonMotorDocImagePath;
  @override
  @JsonKey(ignore: true)
  _$$NonMotorDocDetailImplCopyWith<_$NonMotorDocDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
