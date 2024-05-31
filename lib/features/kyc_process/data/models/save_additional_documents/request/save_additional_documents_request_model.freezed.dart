// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_additional_documents_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveAdditionalDocumentsRequestModel
    _$SaveAdditionalDocumentsRequestModelFromJson(Map<String, dynamic> json) {
  return _SaveAdditionalDocumentsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SaveAdditionalDocumentsRequestModel {
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  bool? get isAdditionalDocVerificationCompleted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDocumentDetailsModel")
  List<AdditionalDocumentDetailsModel>? get additionalDocumentDetailsModel =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveAdditionalDocumentsRequestModelCopyWith<
          SaveAdditionalDocumentsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveAdditionalDocumentsRequestModelCopyWith<$Res> {
  factory $SaveAdditionalDocumentsRequestModelCopyWith(
          SaveAdditionalDocumentsRequestModel value,
          $Res Function(SaveAdditionalDocumentsRequestModel) then) =
      _$SaveAdditionalDocumentsRequestModelCopyWithImpl<$Res,
          SaveAdditionalDocumentsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "isAdditionalDocVerificationCompleted")
      bool? isAdditionalDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentDetailsModel")
      List<AdditionalDocumentDetailsModel>? additionalDocumentDetailsModel});
}

/// @nodoc
class _$SaveAdditionalDocumentsRequestModelCopyWithImpl<$Res,
        $Val extends SaveAdditionalDocumentsRequestModel>
    implements $SaveAdditionalDocumentsRequestModelCopyWith<$Res> {
  _$SaveAdditionalDocumentsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isAdditionalDocVerificationCompleted = freezed,
    Object? additionalDocumentDetailsModel = freezed,
  }) {
    return _then(_value.copyWith(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAdditionalDocVerificationCompleted: freezed ==
              isAdditionalDocVerificationCompleted
          ? _value.isAdditionalDocVerificationCompleted
          : isAdditionalDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalDocumentDetailsModel: freezed == additionalDocumentDetailsModel
          ? _value.additionalDocumentDetailsModel
          : additionalDocumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<AdditionalDocumentDetailsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveAdditionalDocumentsRequestModelImplCopyWith<$Res>
    implements $SaveAdditionalDocumentsRequestModelCopyWith<$Res> {
  factory _$$SaveAdditionalDocumentsRequestModelImplCopyWith(
          _$SaveAdditionalDocumentsRequestModelImpl value,
          $Res Function(_$SaveAdditionalDocumentsRequestModelImpl) then) =
      __$$SaveAdditionalDocumentsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "isAdditionalDocVerificationCompleted")
      bool? isAdditionalDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentDetailsModel")
      List<AdditionalDocumentDetailsModel>? additionalDocumentDetailsModel});
}

/// @nodoc
class __$$SaveAdditionalDocumentsRequestModelImplCopyWithImpl<$Res>
    extends _$SaveAdditionalDocumentsRequestModelCopyWithImpl<$Res,
        _$SaveAdditionalDocumentsRequestModelImpl>
    implements _$$SaveAdditionalDocumentsRequestModelImplCopyWith<$Res> {
  __$$SaveAdditionalDocumentsRequestModelImplCopyWithImpl(
      _$SaveAdditionalDocumentsRequestModelImpl _value,
      $Res Function(_$SaveAdditionalDocumentsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationId = freezed,
    Object? isAdditionalDocVerificationCompleted = freezed,
    Object? additionalDocumentDetailsModel = freezed,
  }) {
    return _then(_$SaveAdditionalDocumentsRequestModelImpl(
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAdditionalDocVerificationCompleted: freezed ==
              isAdditionalDocVerificationCompleted
          ? _value.isAdditionalDocVerificationCompleted
          : isAdditionalDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalDocumentDetailsModel: freezed == additionalDocumentDetailsModel
          ? _value._additionalDocumentDetailsModel
          : additionalDocumentDetailsModel // ignore: cast_nullable_to_non_nullable
              as List<AdditionalDocumentDetailsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveAdditionalDocumentsRequestModelImpl
    implements _SaveAdditionalDocumentsRequestModel {
  const _$SaveAdditionalDocumentsRequestModelImpl(
      {@JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "isAdditionalDocVerificationCompleted")
      this.isAdditionalDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentDetailsModel")
      final List<AdditionalDocumentDetailsModel>?
          additionalDocumentDetailsModel})
      : _additionalDocumentDetailsModel = additionalDocumentDetailsModel;

  factory _$SaveAdditionalDocumentsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveAdditionalDocumentsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  final bool? isAdditionalDocVerificationCompleted;
  final List<AdditionalDocumentDetailsModel>? _additionalDocumentDetailsModel;
  @override
  @JsonKey(name: "additionalDocumentDetailsModel")
  List<AdditionalDocumentDetailsModel>? get additionalDocumentDetailsModel {
    final value = _additionalDocumentDetailsModel;
    if (value == null) return null;
    if (_additionalDocumentDetailsModel is EqualUnmodifiableListView)
      return _additionalDocumentDetailsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SaveAdditionalDocumentsRequestModel(agentApplicationId: $agentApplicationId, isAdditionalDocVerificationCompleted: $isAdditionalDocVerificationCompleted, additionalDocumentDetailsModel: $additionalDocumentDetailsModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAdditionalDocumentsRequestModelImpl &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.isAdditionalDocVerificationCompleted,
                    isAdditionalDocVerificationCompleted) ||
                other.isAdditionalDocVerificationCompleted ==
                    isAdditionalDocVerificationCompleted) &&
            const DeepCollectionEquality().equals(
                other._additionalDocumentDetailsModel,
                _additionalDocumentDetailsModel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentApplicationId,
      isAdditionalDocVerificationCompleted,
      const DeepCollectionEquality().hash(_additionalDocumentDetailsModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAdditionalDocumentsRequestModelImplCopyWith<
          _$SaveAdditionalDocumentsRequestModelImpl>
      get copyWith => __$$SaveAdditionalDocumentsRequestModelImplCopyWithImpl<
          _$SaveAdditionalDocumentsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveAdditionalDocumentsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SaveAdditionalDocumentsRequestModel
    implements SaveAdditionalDocumentsRequestModel {
  const factory _SaveAdditionalDocumentsRequestModel(
          {@JsonKey(name: "agentApplicationId") final int? agentApplicationId,
          @JsonKey(name: "isAdditionalDocVerificationCompleted")
          final bool? isAdditionalDocVerificationCompleted,
          @JsonKey(name: "additionalDocumentDetailsModel")
          final List<AdditionalDocumentDetailsModel>?
              additionalDocumentDetailsModel}) =
      _$SaveAdditionalDocumentsRequestModelImpl;

  factory _SaveAdditionalDocumentsRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$SaveAdditionalDocumentsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  bool? get isAdditionalDocVerificationCompleted;
  @override
  @JsonKey(name: "additionalDocumentDetailsModel")
  List<AdditionalDocumentDetailsModel>? get additionalDocumentDetailsModel;
  @override
  @JsonKey(ignore: true)
  _$$SaveAdditionalDocumentsRequestModelImplCopyWith<
          _$SaveAdditionalDocumentsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdditionalDocumentDetailsModel _$AdditionalDocumentDetailsModelFromJson(
    Map<String, dynamic> json) {
  return _AdditionalDocumentDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$AdditionalDocumentDetailsModel {
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDocImagePath")
  String? get additionalDocImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalDocumentDetailsModelCopyWith<AdditionalDocumentDetailsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalDocumentDetailsModelCopyWith<$Res> {
  factory $AdditionalDocumentDetailsModelCopyWith(
          AdditionalDocumentDetailsModel value,
          $Res Function(AdditionalDocumentDetailsModel) then) =
      _$AdditionalDocumentDetailsModelCopyWithImpl<$Res,
          AdditionalDocumentDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath});
}

/// @nodoc
class _$AdditionalDocumentDetailsModelCopyWithImpl<$Res,
        $Val extends AdditionalDocumentDetailsModel>
    implements $AdditionalDocumentDetailsModelCopyWith<$Res> {
  _$AdditionalDocumentDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadDocumentId = freezed,
    Object? additionalDocImagePath = freezed,
  }) {
    return _then(_value.copyWith(
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDocImagePath: freezed == additionalDocImagePath
          ? _value.additionalDocImagePath
          : additionalDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalDocumentDetailsModelImplCopyWith<$Res>
    implements $AdditionalDocumentDetailsModelCopyWith<$Res> {
  factory _$$AdditionalDocumentDetailsModelImplCopyWith(
          _$AdditionalDocumentDetailsModelImpl value,
          $Res Function(_$AdditionalDocumentDetailsModelImpl) then) =
      __$$AdditionalDocumentDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath});
}

/// @nodoc
class __$$AdditionalDocumentDetailsModelImplCopyWithImpl<$Res>
    extends _$AdditionalDocumentDetailsModelCopyWithImpl<$Res,
        _$AdditionalDocumentDetailsModelImpl>
    implements _$$AdditionalDocumentDetailsModelImplCopyWith<$Res> {
  __$$AdditionalDocumentDetailsModelImplCopyWithImpl(
      _$AdditionalDocumentDetailsModelImpl _value,
      $Res Function(_$AdditionalDocumentDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uploadDocumentId = freezed,
    Object? additionalDocImagePath = freezed,
  }) {
    return _then(_$AdditionalDocumentDetailsModelImpl(
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDocImagePath: freezed == additionalDocImagePath
          ? _value.additionalDocImagePath
          : additionalDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalDocumentDetailsModelImpl
    implements _AdditionalDocumentDetailsModel {
  const _$AdditionalDocumentDetailsModelImpl(
      {@JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "additionalDocImagePath") this.additionalDocImagePath});

  factory _$AdditionalDocumentDetailsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdditionalDocumentDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "uploadDocumentId")
  final int? uploadDocumentId;
  @override
  @JsonKey(name: "additionalDocImagePath")
  final String? additionalDocImagePath;

  @override
  String toString() {
    return 'AdditionalDocumentDetailsModel(uploadDocumentId: $uploadDocumentId, additionalDocImagePath: $additionalDocImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalDocumentDetailsModelImpl &&
            (identical(other.uploadDocumentId, uploadDocumentId) ||
                other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.additionalDocImagePath, additionalDocImagePath) ||
                other.additionalDocImagePath == additionalDocImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uploadDocumentId, additionalDocImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalDocumentDetailsModelImplCopyWith<
          _$AdditionalDocumentDetailsModelImpl>
      get copyWith => __$$AdditionalDocumentDetailsModelImplCopyWithImpl<
          _$AdditionalDocumentDetailsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalDocumentDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _AdditionalDocumentDetailsModel
    implements AdditionalDocumentDetailsModel {
  const factory _AdditionalDocumentDetailsModel(
          {@JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
          @JsonKey(name: "additionalDocImagePath")
          final String? additionalDocImagePath}) =
      _$AdditionalDocumentDetailsModelImpl;

  factory _AdditionalDocumentDetailsModel.fromJson(Map<String, dynamic> json) =
      _$AdditionalDocumentDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId;
  @override
  @JsonKey(name: "additionalDocImagePath")
  String? get additionalDocImagePath;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalDocumentDetailsModelImplCopyWith<
          _$AdditionalDocumentDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
