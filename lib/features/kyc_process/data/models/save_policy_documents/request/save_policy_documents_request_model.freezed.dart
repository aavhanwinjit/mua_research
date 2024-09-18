// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_policy_documents_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavePolicyDocumentsRequestModel _$SavePolicyDocumentsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SavePolicyDocumentsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SavePolicyDocumentsRequestModel {
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  bool? get isPolicyDocVerificationCompleted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "policyDoumentDetailsModel")
  List<PolicyDoumentDetailsModel>? get policyDoumentDetailsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePolicyDocumentsRequestModelCopyWith<SavePolicyDocumentsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePolicyDocumentsRequestModelCopyWith<$Res> {
  factory $SavePolicyDocumentsRequestModelCopyWith(
          SavePolicyDocumentsRequestModel value,
          $Res Function(SavePolicyDocumentsRequestModel) then) =
      _$SavePolicyDocumentsRequestModelCopyWithImpl<$Res,
          SavePolicyDocumentsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "isPolicyDocVerificationCompleted")
      bool? isPolicyDocVerificationCompleted,
      @JsonKey(name: "policyDoumentDetailsModel")
      List<PolicyDoumentDetailsModel>? policyDoumentDetailsModel});
}

/// @nodoc
class _$SavePolicyDocumentsRequestModelCopyWithImpl<$Res,
        $Val extends SavePolicyDocumentsRequestModel>
    implements $SavePolicyDocumentsRequestModelCopyWith<$Res> {
  _$SavePolicyDocumentsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isPolicyDocVerificationCompleted = freezed,
    Object? policyDoumentDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPolicyDocVerificationCompleted: freezed ==
              isPolicyDocVerificationCompleted
          ? _value.isPolicyDocVerificationCompleted
          : isPolicyDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      policyDoumentDetailsModel: freezed == policyDoumentDetailsModel
          ? _value.policyDoumentDetailsModel
          : policyDoumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<PolicyDoumentDetailsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePolicyDocumentsRequestModelImplCopyWith<$Res>
    implements $SavePolicyDocumentsRequestModelCopyWith<$Res> {
  factory _$$SavePolicyDocumentsRequestModelImplCopyWith(
          _$SavePolicyDocumentsRequestModelImpl value,
          $Res Function(_$SavePolicyDocumentsRequestModelImpl) then) =
      __$$SavePolicyDocumentsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "isPolicyDocVerificationCompleted")
      bool? isPolicyDocVerificationCompleted,
      @JsonKey(name: "policyDoumentDetailsModel")
      List<PolicyDoumentDetailsModel>? policyDoumentDetailsModel});
}

/// @nodoc
class __$$SavePolicyDocumentsRequestModelImplCopyWithImpl<$Res>
    extends _$SavePolicyDocumentsRequestModelCopyWithImpl<$Res,
        _$SavePolicyDocumentsRequestModelImpl>
    implements _$$SavePolicyDocumentsRequestModelImplCopyWith<$Res> {
  __$$SavePolicyDocumentsRequestModelImplCopyWithImpl(
      _$SavePolicyDocumentsRequestModelImpl _value,
      $Res Function(_$SavePolicyDocumentsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isPolicyDocVerificationCompleted = freezed,
    Object? policyDoumentDetailsModel = freezed,
  }) {
    return _then(_$SavePolicyDocumentsRequestModelImpl(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isPolicyDocVerificationCompleted: freezed ==
              isPolicyDocVerificationCompleted
          ? _value.isPolicyDocVerificationCompleted
          : isPolicyDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      policyDoumentDetailsModel: freezed == policyDoumentDetailsModel
          ? _value._policyDoumentDetailsModel
          : policyDoumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<PolicyDoumentDetailsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavePolicyDocumentsRequestModelImpl
    implements _SavePolicyDocumentsRequestModel {
  const _$SavePolicyDocumentsRequestModelImpl(
      {@JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "isPolicyDocVerificationCompleted")
      this.isPolicyDocVerificationCompleted,
      @JsonKey(name: "policyDoumentDetailsModel")
      final List<PolicyDoumentDetailsModel>? policyDoumentDetailsModel})
      : _policyDoumentDetailsModel = policyDoumentDetailsModel;

  factory _$SavePolicyDocumentsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SavePolicyDocumentsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  final bool? isPolicyDocVerificationCompleted;
  final List<PolicyDoumentDetailsModel>? _policyDoumentDetailsModel;
  @override
  @JsonKey(name: "policyDoumentDetailsModel")
  List<PolicyDoumentDetailsModel>? get policyDoumentDetailsModel {
    final value = _policyDoumentDetailsModel;
    if (value == null) return null;
    if (_policyDoumentDetailsModel is EqualUnmodifiableListView)
      return _policyDoumentDetailsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SavePolicyDocumentsRequestModel(agentApplicationId: $agentApplicationId, isPolicyDocVerificationCompleted: $isPolicyDocVerificationCompleted, policyDoumentDetailsModel: $policyDoumentDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePolicyDocumentsRequestModelImpl &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.isPolicyDocVerificationCompleted,
                    isPolicyDocVerificationCompleted) ||
                other.isPolicyDocVerificationCompleted ==
                    isPolicyDocVerificationCompleted) &&
            const DeepCollectionEquality().equals(
                other._policyDoumentDetailsModel, _policyDoumentDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentApplicationId,
      isPolicyDocVerificationCompleted,
      const DeepCollectionEquality().hash(_policyDoumentDetailsModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePolicyDocumentsRequestModelImplCopyWith<
          _$SavePolicyDocumentsRequestModelImpl>
      get copyWith => __$$SavePolicyDocumentsRequestModelImplCopyWithImpl<
          _$SavePolicyDocumentsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavePolicyDocumentsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SavePolicyDocumentsRequestModel
    implements SavePolicyDocumentsRequestModel {
  const factory _SavePolicyDocumentsRequestModel(
          {@JsonKey(name: "agentApplicationId") final int? agentApplicationId,
          @JsonKey(name: "isPolicyDocVerificationCompleted")
          final bool? isPolicyDocVerificationCompleted,
          @JsonKey(name: "policyDoumentDetailsModel")
          final List<PolicyDoumentDetailsModel>? policyDoumentDetailsModel}) =
      _$SavePolicyDocumentsRequestModelImpl;

  factory _SavePolicyDocumentsRequestModel.fromJson(Map<String, dynamic> json) =
      _$SavePolicyDocumentsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  bool? get isPolicyDocVerificationCompleted;
  @override
  @JsonKey(name: "policyDoumentDetailsModel")
  List<PolicyDoumentDetailsModel>? get policyDoumentDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$SavePolicyDocumentsRequestModelImplCopyWith<
          _$SavePolicyDocumentsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PolicyDoumentDetailsModel _$PolicyDoumentDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _PolicyDoumentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PolicyDoumentDetailsModel {
  @JsonKey(name: "policyDocumentTypeId")
  int? get policyDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "policyDocImagePath")
  String? get policyDocImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyDoumentDetailsModelCopyWith<PolicyDoumentDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyDoumentDetailsModelCopyWith<$Res> {
  factory $PolicyDoumentDetailsModelCopyWith(PolicyDoumentDetailsModel value,
          $Res Function(PolicyDoumentDetailsModel) then) =
      _$PolicyDoumentDetailsModelCopyWithImpl<$Res, PolicyDoumentDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "policyDocImagePath") String? policyDocImagePath});
}

/// @nodoc
class _$PolicyDoumentDetailsModelCopyWithImpl<$Res,
        $Val extends PolicyDoumentDetailsModel>
    implements $PolicyDoumentDetailsModelCopyWith<$Res> {
  _$PolicyDoumentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyDocumentTypeId = freezed,
    Object? uploadDocumentId = freezed,
    Object? policyDocImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      policyDocumentTypeId: freezed == policyDocumentTypeId
          ? _value.policyDocumentTypeId
          : policyDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDocImagePath: freezed == policyDocImagePath
          ? _value.policyDocImagePath
          : policyDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyDoumentDetailsModelImplCopyWith<$Res>
    implements $PolicyDoumentDetailsModelCopyWith<$Res> {
  factory _$$PolicyDoumentDetailsModelImplCopyWith(
          _$PolicyDoumentDetailsModelImpl value,
          $Res Function(_$PolicyDoumentDetailsModelImpl) then) =
      __$$PolicyDoumentDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "policyDocImagePath") String? policyDocImagePath});
}

/// @nodoc
class __$$PolicyDoumentDetailsModelImplCopyWithImpl<$Res>
    extends _$PolicyDoumentDetailsModelCopyWithImpl<$Res,
        _$PolicyDoumentDetailsModelImpl>
    implements _$$PolicyDoumentDetailsModelImplCopyWith<$Res> {
  __$$PolicyDoumentDetailsModelImplCopyWithImpl(
      _$PolicyDoumentDetailsModelImpl _value,
      $Res Function(_$PolicyDoumentDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyDocumentTypeId = freezed,
    Object? uploadDocumentId = freezed,
    Object? policyDocImagePath = freezed,
  }) {
    return _then(_$PolicyDoumentDetailsModelImpl(
      policyDocumentTypeId: freezed == policyDocumentTypeId
          ? _value.policyDocumentTypeId
          : policyDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDocImagePath: freezed == policyDocImagePath
          ? _value.policyDocImagePath
          : policyDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyDoumentDetailsModelImpl implements _PolicyDoumentDetailsModel {
  const _$PolicyDoumentDetailsModelImpl(
      {@JsonKey(name: "policyDocumentTypeId") this.policyDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "policyDocImagePath") this.policyDocImagePath});

  factory _$PolicyDoumentDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyDoumentDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "policyDocumentTypeId")
  final int? policyDocumentTypeId;
  @override
  @JsonKey(name: "uploadDocumentId")
  final int? uploadDocumentId;
  @override
  @JsonKey(name: "policyDocImagePath")
  final String? policyDocImagePath;

  @override
  String toString() {
    return 'PolicyDoumentDetailsModel(policyDocumentTypeId: $policyDocumentTypeId, uploadDocumentId: $uploadDocumentId, policyDocImagePath: $policyDocImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyDoumentDetailsModelImpl &&
            (identical(other.policyDocumentTypeId, policyDocumentTypeId) ||
                other.policyDocumentTypeId == policyDocumentTypeId) &&
            (identical(other.uploadDocumentId, uploadDocumentId) ||
                other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.policyDocImagePath, policyDocImagePath) ||
                other.policyDocImagePath == policyDocImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, policyDocumentTypeId, uploadDocumentId, policyDocImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyDoumentDetailsModelImplCopyWith<_$PolicyDoumentDetailsModelImpl>
      get copyWith => __$$PolicyDoumentDetailsModelImplCopyWithImpl<
          _$PolicyDoumentDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyDoumentDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _PolicyDoumentDetailsModel implements PolicyDoumentDetailsModel {
  const factory _PolicyDoumentDetailsModel(
      {@JsonKey(name: "policyDocumentTypeId") final int? policyDocumentTypeId,
      @JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
      @JsonKey(name: "policyDocImagePath")
      final String? policyDocImagePath}) = _$PolicyDoumentDetailsModelImpl;

  factory _PolicyDoumentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PolicyDoumentDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "policyDocumentTypeId")
  int? get policyDocumentTypeId;
  @override
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId;
  @override
  @JsonKey(name: "policyDocImagePath")
  String? get policyDocImagePath;
  @override
  @JsonKey(ignore: true)
  _$$PolicyDoumentDetailsModelImplCopyWith<_$PolicyDoumentDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
