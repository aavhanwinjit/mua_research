// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_por_documents_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavePorDocumentsRequestModel _$SavePorDocumentsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SavePorDocumentsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SavePorDocumentsRequestModel {
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "isPORDocVerificationCompleted")
  bool? get isPorDocVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "porDocumentDetailsModel")
  List<PorDocumentDetailsModel>? get porDocumentDetailsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePorDocumentsRequestModelCopyWith<SavePorDocumentsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePorDocumentsRequestModelCopyWith<$Res> {
  factory $SavePorDocumentsRequestModelCopyWith(
          SavePorDocumentsRequestModel value,
          $Res Function(SavePorDocumentsRequestModel) then) =
      _$SavePorDocumentsRequestModelCopyWithImpl<$Res,
          SavePorDocumentsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "isPORDocVerificationCompleted")
      bool? isPorDocVerificationCompleted,
      @JsonKey(name: "porDocumentDetailsModel")
      List<PorDocumentDetailsModel>? porDocumentDetailsModel});
}

/// @nodoc
class _$SavePorDocumentsRequestModelCopyWithImpl<$Res,
        $Val extends SavePorDocumentsRequestModel>
    implements $SavePorDocumentsRequestModelCopyWith<$Res> {
  _$SavePorDocumentsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isPorDocVerificationCompleted = freezed,
    Object? porDocumentDetailsModel = freezed,
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
      porDocumentDetailsModel: freezed == porDocumentDetailsModel
          ? _value.porDocumentDetailsModel
          : porDocumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<PorDocumentDetailsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePorDocumentsRequestModelImplCopyWith<$Res>
    implements $SavePorDocumentsRequestModelCopyWith<$Res> {
  factory _$$SavePorDocumentsRequestModelImplCopyWith(
          _$SavePorDocumentsRequestModelImpl value,
          $Res Function(_$SavePorDocumentsRequestModelImpl) then) =
      __$$SavePorDocumentsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "isPORDocVerificationCompleted")
      bool? isPorDocVerificationCompleted,
      @JsonKey(name: "porDocumentDetailsModel")
      List<PorDocumentDetailsModel>? porDocumentDetailsModel});
}

/// @nodoc
class __$$SavePorDocumentsRequestModelImplCopyWithImpl<$Res>
    extends _$SavePorDocumentsRequestModelCopyWithImpl<$Res,
        _$SavePorDocumentsRequestModelImpl>
    implements _$$SavePorDocumentsRequestModelImplCopyWith<$Res> {
  __$$SavePorDocumentsRequestModelImplCopyWithImpl(
      _$SavePorDocumentsRequestModelImpl _value,
      $Res Function(_$SavePorDocumentsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isPorDocVerificationCompleted = freezed,
    Object? porDocumentDetailsModel = freezed,
  }) {
    return _then(_$SavePorDocumentsRequestModelImpl(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPorDocVerificationCompleted: freezed == isPorDocVerificationCompleted
          ? _value.isPorDocVerificationCompleted
          : isPorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      porDocumentDetailsModel: freezed == porDocumentDetailsModel
          ? _value._porDocumentDetailsModel
          : porDocumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<PorDocumentDetailsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavePorDocumentsRequestModelImpl
    implements _SavePorDocumentsRequestModel {
  const _$SavePorDocumentsRequestModelImpl(
      {@JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "isPORDocVerificationCompleted")
      this.isPorDocVerificationCompleted,
      @JsonKey(name: "porDocumentDetailsModel")
      final List<PorDocumentDetailsModel>? porDocumentDetailsModel})
      : _porDocumentDetailsModel = porDocumentDetailsModel;

  factory _$SavePorDocumentsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SavePorDocumentsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "isPORDocVerificationCompleted")
  final bool? isPorDocVerificationCompleted;
  final List<PorDocumentDetailsModel>? _porDocumentDetailsModel;
  @override
  @JsonKey(name: "porDocumentDetailsModel")
  List<PorDocumentDetailsModel>? get porDocumentDetailsModel {
    final value = _porDocumentDetailsModel;
    if (value == null) return null;
    if (_porDocumentDetailsModel is EqualUnmodifiableListView)
      return _porDocumentDetailsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SavePorDocumentsRequestModel(agentApplicationId: $agentApplicationId, isPorDocVerificationCompleted: $isPorDocVerificationCompleted, porDocumentDetailsModel: $porDocumentDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePorDocumentsRequestModelImpl &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.isPorDocVerificationCompleted,
                    isPorDocVerificationCompleted) ||
                other.isPorDocVerificationCompleted ==
                    isPorDocVerificationCompleted) &&
            const DeepCollectionEquality().equals(
                other._porDocumentDetailsModel, _porDocumentDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentApplicationId,
      isPorDocVerificationCompleted,
      const DeepCollectionEquality().hash(_porDocumentDetailsModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePorDocumentsRequestModelImplCopyWith<
          _$SavePorDocumentsRequestModelImpl>
      get copyWith => __$$SavePorDocumentsRequestModelImplCopyWithImpl<
          _$SavePorDocumentsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavePorDocumentsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SavePorDocumentsRequestModel
    implements SavePorDocumentsRequestModel {
  const factory _SavePorDocumentsRequestModel(
          {@JsonKey(name: "agentApplicationId") final int? agentApplicationId,
          @JsonKey(name: "isPORDocVerificationCompleted")
          final bool? isPorDocVerificationCompleted,
          @JsonKey(name: "porDocumentDetailsModel")
          final List<PorDocumentDetailsModel>? porDocumentDetailsModel}) =
      _$SavePorDocumentsRequestModelImpl;

  factory _SavePorDocumentsRequestModel.fromJson(Map<String, dynamic> json) =
      _$SavePorDocumentsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "isPORDocVerificationCompleted")
  bool? get isPorDocVerificationCompleted;
  @override
  @JsonKey(name: "porDocumentDetailsModel")
  List<PorDocumentDetailsModel>? get porDocumentDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$SavePorDocumentsRequestModelImplCopyWith<
          _$SavePorDocumentsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PorDocumentDetailsModel _$PorDocumentDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _PorDocumentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PorDocumentDetailsModel {
  @JsonKey(name: "porDocumentTypeId")
  int? get porDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "issueDate")
  DateTime? get issueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "porDocImagePath")
  String? get porDocImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PorDocumentDetailsModelCopyWith<PorDocumentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PorDocumentDetailsModelCopyWith<$Res> {
  factory $PorDocumentDetailsModelCopyWith(PorDocumentDetailsModel value,
          $Res Function(PorDocumentDetailsModel) then) =
      _$PorDocumentDetailsModelCopyWithImpl<$Res, PorDocumentDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "issueDate") DateTime? issueDate,
      @JsonKey(name: "porDocImagePath") String? porDocImagePath});
}

/// @nodoc
class _$PorDocumentDetailsModelCopyWithImpl<$Res,
        $Val extends PorDocumentDetailsModel>
    implements $PorDocumentDetailsModelCopyWith<$Res> {
  _$PorDocumentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? porDocumentTypeId = freezed,
    Object? uploadDocumentId = freezed,
    Object? lastName = freezed,
    Object? issueDate = freezed,
    Object? porDocImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      porDocumentTypeId: freezed == porDocumentTypeId
          ? _value.porDocumentTypeId
          : porDocumentTypeId // ignore: cast_nullable_to_non_nullable
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
      porDocImagePath: freezed == porDocImagePath
          ? _value.porDocImagePath
          : porDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PorDocumentDetailsModelImplCopyWith<$Res>
    implements $PorDocumentDetailsModelCopyWith<$Res> {
  factory _$$PorDocumentDetailsModelImplCopyWith(
          _$PorDocumentDetailsModelImpl value,
          $Res Function(_$PorDocumentDetailsModelImpl) then) =
      __$$PorDocumentDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "issueDate") DateTime? issueDate,
      @JsonKey(name: "porDocImagePath") String? porDocImagePath});
}

/// @nodoc
class __$$PorDocumentDetailsModelImplCopyWithImpl<$Res>
    extends _$PorDocumentDetailsModelCopyWithImpl<$Res,
        _$PorDocumentDetailsModelImpl>
    implements _$$PorDocumentDetailsModelImplCopyWith<$Res> {
  __$$PorDocumentDetailsModelImplCopyWithImpl(
      _$PorDocumentDetailsModelImpl _value,
      $Res Function(_$PorDocumentDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? porDocumentTypeId = freezed,
    Object? uploadDocumentId = freezed,
    Object? lastName = freezed,
    Object? issueDate = freezed,
    Object? porDocImagePath = freezed,
  }) {
    return _then(_$PorDocumentDetailsModelImpl(
      porDocumentTypeId: freezed == porDocumentTypeId
          ? _value.porDocumentTypeId
          : porDocumentTypeId // ignore: cast_nullable_to_non_nullable
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
      porDocImagePath: freezed == porDocImagePath
          ? _value.porDocImagePath
          : porDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PorDocumentDetailsModelImpl implements _PorDocumentDetailsModel {
  const _$PorDocumentDetailsModelImpl(
      {@JsonKey(name: "porDocumentTypeId") this.porDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "issueDate") this.issueDate,
      @JsonKey(name: "porDocImagePath") this.porDocImagePath});

  factory _$PorDocumentDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PorDocumentDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "porDocumentTypeId")
  final int? porDocumentTypeId;
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
  @JsonKey(name: "porDocImagePath")
  final String? porDocImagePath;

  @override
  String toString() {
    return 'PorDocumentDetailsModel(porDocumentTypeId: $porDocumentTypeId, uploadDocumentId: $uploadDocumentId, lastName: $lastName, issueDate: $issueDate, porDocImagePath: $porDocImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PorDocumentDetailsModelImpl &&
            (identical(other.porDocumentTypeId, porDocumentTypeId) ||
                other.porDocumentTypeId == porDocumentTypeId) &&
            (identical(other.uploadDocumentId, uploadDocumentId) ||
                other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.porDocImagePath, porDocImagePath) ||
                other.porDocImagePath == porDocImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, porDocumentTypeId,
      uploadDocumentId, lastName, issueDate, porDocImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PorDocumentDetailsModelImplCopyWith<_$PorDocumentDetailsModelImpl>
      get copyWith => __$$PorDocumentDetailsModelImplCopyWithImpl<
          _$PorDocumentDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PorDocumentDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _PorDocumentDetailsModel implements PorDocumentDetailsModel {
  const factory _PorDocumentDetailsModel(
          {@JsonKey(name: "porDocumentTypeId") final int? porDocumentTypeId,
          @JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
          @JsonKey(name: "lastName") final String? lastName,
          @JsonKey(name: "issueDate") final DateTime? issueDate,
          @JsonKey(name: "porDocImagePath") final String? porDocImagePath}) =
      _$PorDocumentDetailsModelImpl;

  factory _PorDocumentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PorDocumentDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "porDocumentTypeId")
  int? get porDocumentTypeId;
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
  @JsonKey(name: "porDocImagePath")
  String? get porDocImagePath;
  @override
  @JsonKey(ignore: true)
  _$$PorDocumentDetailsModelImplCopyWith<_$PorDocumentDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
