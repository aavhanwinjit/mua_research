// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_document_category_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDocumentCategoryRequestModel _$GetDocumentCategoryRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetDocumentCategoryRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetDocumentCategoryRequestModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDocumentCategoryRequestModelCopyWith<GetDocumentCategoryRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDocumentCategoryRequestModelCopyWith<$Res> {
  factory $GetDocumentCategoryRequestModelCopyWith(
          GetDocumentCategoryRequestModel value,
          $Res Function(GetDocumentCategoryRequestModel) then) =
      _$GetDocumentCategoryRequestModelCopyWithImpl<$Res,
          GetDocumentCategoryRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "id") int? id});
}

/// @nodoc
class _$GetDocumentCategoryRequestModelCopyWithImpl<$Res,
        $Val extends GetDocumentCategoryRequestModel>
    implements $GetDocumentCategoryRequestModelCopyWith<$Res> {
  _$GetDocumentCategoryRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDocumentCategoryRequestModelImplCopyWith<$Res>
    implements $GetDocumentCategoryRequestModelCopyWith<$Res> {
  factory _$$GetDocumentCategoryRequestModelImplCopyWith(
          _$GetDocumentCategoryRequestModelImpl value,
          $Res Function(_$GetDocumentCategoryRequestModelImpl) then) =
      __$$GetDocumentCategoryRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int? id});
}

/// @nodoc
class __$$GetDocumentCategoryRequestModelImplCopyWithImpl<$Res>
    extends _$GetDocumentCategoryRequestModelCopyWithImpl<$Res,
        _$GetDocumentCategoryRequestModelImpl>
    implements _$$GetDocumentCategoryRequestModelImplCopyWith<$Res> {
  __$$GetDocumentCategoryRequestModelImplCopyWithImpl(
      _$GetDocumentCategoryRequestModelImpl _value,
      $Res Function(_$GetDocumentCategoryRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetDocumentCategoryRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDocumentCategoryRequestModelImpl
    implements _GetDocumentCategoryRequestModel {
  const _$GetDocumentCategoryRequestModelImpl({@JsonKey(name: "id") this.id});

  factory _$GetDocumentCategoryRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDocumentCategoryRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;

  @override
  String toString() {
    return 'GetDocumentCategoryRequestModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDocumentCategoryRequestModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDocumentCategoryRequestModelImplCopyWith<
          _$GetDocumentCategoryRequestModelImpl>
      get copyWith => __$$GetDocumentCategoryRequestModelImplCopyWithImpl<
          _$GetDocumentCategoryRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDocumentCategoryRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetDocumentCategoryRequestModel
    implements GetDocumentCategoryRequestModel {
  const factory _GetDocumentCategoryRequestModel(
          {@JsonKey(name: "id") final int? id}) =
      _$GetDocumentCategoryRequestModelImpl;

  factory _GetDocumentCategoryRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetDocumentCategoryRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetDocumentCategoryRequestModelImplCopyWith<
          _$GetDocumentCategoryRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
