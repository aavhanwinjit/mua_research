// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_insured_documents_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveInsuredDocumentsRequestModel _$SaveInsuredDocumentsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SaveInsuredDocumentsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SaveInsuredDocumentsRequestModel {
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "isPORDocVerificationCompleted")
  bool? get isPorDocVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDoumentDetailsModel")
  List<InsuredDoumentDetailsModel>? get insuredDoumentDetailsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveInsuredDocumentsRequestModelCopyWith<SaveInsuredDocumentsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveInsuredDocumentsRequestModelCopyWith<$Res> {
  factory $SaveInsuredDocumentsRequestModelCopyWith(
          SaveInsuredDocumentsRequestModel value,
          $Res Function(SaveInsuredDocumentsRequestModel) then) =
      _$SaveInsuredDocumentsRequestModelCopyWithImpl<$Res,
          SaveInsuredDocumentsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "isPORDocVerificationCompleted")
      bool? isPorDocVerificationCompleted,
      @JsonKey(name: "insuredDoumentDetailsModel")
      List<InsuredDoumentDetailsModel>? insuredDoumentDetailsModel});
}

/// @nodoc
class _$SaveInsuredDocumentsRequestModelCopyWithImpl<$Res,
        $Val extends SaveInsuredDocumentsRequestModel>
    implements $SaveInsuredDocumentsRequestModelCopyWith<$Res> {
  _$SaveInsuredDocumentsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isPorDocVerificationCompleted = freezed,
    Object? insuredDoumentDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPorDocVerificationCompleted: freezed == isPorDocVerificationCompleted
          ? _value.isPorDocVerificationCompleted
          : isPorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuredDoumentDetailsModel: freezed == insuredDoumentDetailsModel
          ? _value.insuredDoumentDetailsModel
          : insuredDoumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<InsuredDoumentDetailsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveInsuredDocumentsRequestModelImplCopyWith<$Res>
    implements $SaveInsuredDocumentsRequestModelCopyWith<$Res> {
  factory _$$SaveInsuredDocumentsRequestModelImplCopyWith(
          _$SaveInsuredDocumentsRequestModelImpl value,
          $Res Function(_$SaveInsuredDocumentsRequestModelImpl) then) =
      __$$SaveInsuredDocumentsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "isPORDocVerificationCompleted")
      bool? isPorDocVerificationCompleted,
      @JsonKey(name: "insuredDoumentDetailsModel")
      List<InsuredDoumentDetailsModel>? insuredDoumentDetailsModel});
}

/// @nodoc
class __$$SaveInsuredDocumentsRequestModelImplCopyWithImpl<$Res>
    extends _$SaveInsuredDocumentsRequestModelCopyWithImpl<$Res,
        _$SaveInsuredDocumentsRequestModelImpl>
    implements _$$SaveInsuredDocumentsRequestModelImplCopyWith<$Res> {
  __$$SaveInsuredDocumentsRequestModelImplCopyWithImpl(
      _$SaveInsuredDocumentsRequestModelImpl _value,
      $Res Function(_$SaveInsuredDocumentsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isPorDocVerificationCompleted = freezed,
    Object? insuredDoumentDetailsModel = freezed,
  }) {
    return _then(_$SaveInsuredDocumentsRequestModelImpl(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPorDocVerificationCompleted: freezed == isPorDocVerificationCompleted
          ? _value.isPorDocVerificationCompleted
          : isPorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuredDoumentDetailsModel: freezed == insuredDoumentDetailsModel
          ? _value._insuredDoumentDetailsModel
          : insuredDoumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<InsuredDoumentDetailsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveInsuredDocumentsRequestModelImpl
    implements _SaveInsuredDocumentsRequestModel {
  const _$SaveInsuredDocumentsRequestModelImpl(
      {@JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "isPORDocVerificationCompleted")
      this.isPorDocVerificationCompleted,
      @JsonKey(name: "insuredDoumentDetailsModel")
      final List<InsuredDoumentDetailsModel>? insuredDoumentDetailsModel})
      : _insuredDoumentDetailsModel = insuredDoumentDetailsModel;

  factory _$SaveInsuredDocumentsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveInsuredDocumentsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "isPORDocVerificationCompleted")
  final bool? isPorDocVerificationCompleted;
  final List<InsuredDoumentDetailsModel>? _insuredDoumentDetailsModel;
  @override
  @JsonKey(name: "insuredDoumentDetailsModel")
  List<InsuredDoumentDetailsModel>? get insuredDoumentDetailsModel {
    final value = _insuredDoumentDetailsModel;
    if (value == null) return null;
    if (_insuredDoumentDetailsModel is EqualUnmodifiableListView)
      return _insuredDoumentDetailsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SaveInsuredDocumentsRequestModel(agentApplicationId: $agentApplicationId, isPorDocVerificationCompleted: $isPorDocVerificationCompleted, insuredDoumentDetailsModel: $insuredDoumentDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveInsuredDocumentsRequestModelImpl &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.isPorDocVerificationCompleted,
                    isPorDocVerificationCompleted) ||
                other.isPorDocVerificationCompleted ==
                    isPorDocVerificationCompleted) &&
            const DeepCollectionEquality().equals(
                other._insuredDoumentDetailsModel,
                _insuredDoumentDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentApplicationId,
      isPorDocVerificationCompleted,
      const DeepCollectionEquality().hash(_insuredDoumentDetailsModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveInsuredDocumentsRequestModelImplCopyWith<
          _$SaveInsuredDocumentsRequestModelImpl>
      get copyWith => __$$SaveInsuredDocumentsRequestModelImplCopyWithImpl<
          _$SaveInsuredDocumentsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveInsuredDocumentsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SaveInsuredDocumentsRequestModel
    implements SaveInsuredDocumentsRequestModel {
  const factory _SaveInsuredDocumentsRequestModel(
          {@JsonKey(name: "agentApplicationId") final int? agentApplicationId,
          @JsonKey(name: "isPORDocVerificationCompleted")
          final bool? isPorDocVerificationCompleted,
          @JsonKey(name: "insuredDoumentDetailsModel")
          final List<InsuredDoumentDetailsModel>? insuredDoumentDetailsModel}) =
      _$SaveInsuredDocumentsRequestModelImpl;

  factory _SaveInsuredDocumentsRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$SaveInsuredDocumentsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "isPORDocVerificationCompleted")
  bool? get isPorDocVerificationCompleted;
  @override
  @JsonKey(name: "insuredDoumentDetailsModel")
  List<InsuredDoumentDetailsModel>? get insuredDoumentDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$SaveInsuredDocumentsRequestModelImplCopyWith<
          _$SaveInsuredDocumentsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InsuredDoumentDetailsModel _$InsuredDoumentDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _InsuredDoumentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$InsuredDoumentDetailsModel {
  @JsonKey(name: "insuredDocumentTypeId")
  int? get insuredDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "issueDate")
  DateTime? get issueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDouImagePath")
  String? get insuredDouImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuredDoumentDetailsModelCopyWith<InsuredDoumentDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuredDoumentDetailsModelCopyWith<$Res> {
  factory $InsuredDoumentDetailsModelCopyWith(InsuredDoumentDetailsModel value,
          $Res Function(InsuredDoumentDetailsModel) then) =
      _$InsuredDoumentDetailsModelCopyWithImpl<$Res,
          InsuredDoumentDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "insuredDocumentTypeId") int? insuredDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "issueDate") DateTime? issueDate,
      @JsonKey(name: "insuredDouImagePath") String? insuredDouImagePath});
}

/// @nodoc
class _$InsuredDoumentDetailsModelCopyWithImpl<$Res,
        $Val extends InsuredDoumentDetailsModel>
    implements $InsuredDoumentDetailsModelCopyWith<$Res> {
  _$InsuredDoumentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuredDocumentTypeId = freezed,
    Object? uploadDocumentId = freezed,
    Object? lastName = freezed,
    Object? issueDate = freezed,
    Object? insuredDouImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      insuredDocumentTypeId: freezed == insuredDocumentTypeId
          ? _value.insuredDocumentTypeId
          : insuredDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      insuredDouImagePath: freezed == insuredDouImagePath
          ? _value.insuredDouImagePath
          : insuredDouImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsuredDoumentDetailsModelImplCopyWith<$Res>
    implements $InsuredDoumentDetailsModelCopyWith<$Res> {
  factory _$$InsuredDoumentDetailsModelImplCopyWith(
          _$InsuredDoumentDetailsModelImpl value,
          $Res Function(_$InsuredDoumentDetailsModelImpl) then) =
      __$$InsuredDoumentDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "insuredDocumentTypeId") int? insuredDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "issueDate") DateTime? issueDate,
      @JsonKey(name: "insuredDouImagePath") String? insuredDouImagePath});
}

/// @nodoc
class __$$InsuredDoumentDetailsModelImplCopyWithImpl<$Res>
    extends _$InsuredDoumentDetailsModelCopyWithImpl<$Res,
        _$InsuredDoumentDetailsModelImpl>
    implements _$$InsuredDoumentDetailsModelImplCopyWith<$Res> {
  __$$InsuredDoumentDetailsModelImplCopyWithImpl(
      _$InsuredDoumentDetailsModelImpl _value,
      $Res Function(_$InsuredDoumentDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? insuredDocumentTypeId = freezed,
    Object? uploadDocumentId = freezed,
    Object? lastName = freezed,
    Object? issueDate = freezed,
    Object? insuredDouImagePath = freezed,
  }) {
    return _then(_$InsuredDoumentDetailsModelImpl(
      insuredDocumentTypeId: freezed == insuredDocumentTypeId
          ? _value.insuredDocumentTypeId
          : insuredDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      insuredDouImagePath: freezed == insuredDouImagePath
          ? _value.insuredDouImagePath
          : insuredDouImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsuredDoumentDetailsModelImpl implements _InsuredDoumentDetailsModel {
  const _$InsuredDoumentDetailsModelImpl(
      {@JsonKey(name: "insuredDocumentTypeId") this.insuredDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "issueDate") this.issueDate,
      @JsonKey(name: "insuredDouImagePath") this.insuredDouImagePath});

  factory _$InsuredDoumentDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InsuredDoumentDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "insuredDocumentTypeId")
  final int? insuredDocumentTypeId;
  @override
  @JsonKey(name: "uploadDocumentId")
  final int? uploadDocumentId;
  @override
  @JsonKey(name: "lastName")
  final String? lastName;
  @override
  @JsonKey(name: "issueDate")
  final DateTime? issueDate;
  @override
  @JsonKey(name: "insuredDouImagePath")
  final String? insuredDouImagePath;

  @override
  String toString() {
    return 'InsuredDoumentDetailsModel(insuredDocumentTypeId: $insuredDocumentTypeId, uploadDocumentId: $uploadDocumentId, lastName: $lastName, issueDate: $issueDate, insuredDouImagePath: $insuredDouImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsuredDoumentDetailsModelImpl &&
            (identical(other.insuredDocumentTypeId, insuredDocumentTypeId) ||
                other.insuredDocumentTypeId == insuredDocumentTypeId) &&
            (identical(other.uploadDocumentId, uploadDocumentId) ||
                other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.insuredDouImagePath, insuredDouImagePath) ||
                other.insuredDouImagePath == insuredDouImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, insuredDocumentTypeId,
      uploadDocumentId, lastName, issueDate, insuredDouImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsuredDoumentDetailsModelImplCopyWith<_$InsuredDoumentDetailsModelImpl>
      get copyWith => __$$InsuredDoumentDetailsModelImplCopyWithImpl<
          _$InsuredDoumentDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsuredDoumentDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _InsuredDoumentDetailsModel
    implements InsuredDoumentDetailsModel {
  const factory _InsuredDoumentDetailsModel(
      {@JsonKey(name: "insuredDocumentTypeId") final int? insuredDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "issueDate") final DateTime? issueDate,
      @JsonKey(name: "insuredDouImagePath")
      final String? insuredDouImagePath}) = _$InsuredDoumentDetailsModelImpl;

  factory _InsuredDoumentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$InsuredDoumentDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "insuredDocumentTypeId")
  int? get insuredDocumentTypeId;
  @override
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId;
  @override
  @JsonKey(name: "lastName")
  String? get lastName;
  @override
  @JsonKey(name: "issueDate")
  DateTime? get issueDate;
  @override
  @JsonKey(name: "insuredDouImagePath")
  String? get insuredDouImagePath;
  @override
  @JsonKey(ignore: true)
  _$$InsuredDoumentDetailsModelImplCopyWith<_$InsuredDoumentDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
