// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_pdf_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneratePdfRequestModel _$GeneratePdfRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GeneratePdfRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GeneratePdfRequestModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratePdfRequestModelCopyWith<GeneratePdfRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratePdfRequestModelCopyWith<$Res> {
  factory $GeneratePdfRequestModelCopyWith(GeneratePdfRequestModel value,
          $Res Function(GeneratePdfRequestModel) then) =
      _$GeneratePdfRequestModelCopyWithImpl<$Res, GeneratePdfRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "id") int? id});
}

/// @nodoc
class _$GeneratePdfRequestModelCopyWithImpl<$Res,
        $Val extends GeneratePdfRequestModel>
    implements $GeneratePdfRequestModelCopyWith<$Res> {
  _$GeneratePdfRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GeneratePdfRequestModelImplCopyWith<$Res>
    implements $GeneratePdfRequestModelCopyWith<$Res> {
  factory _$$GeneratePdfRequestModelImplCopyWith(
          _$GeneratePdfRequestModelImpl value,
          $Res Function(_$GeneratePdfRequestModelImpl) then) =
      __$$GeneratePdfRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") int? id});
}

/// @nodoc
class __$$GeneratePdfRequestModelImplCopyWithImpl<$Res>
    extends _$GeneratePdfRequestModelCopyWithImpl<$Res,
        _$GeneratePdfRequestModelImpl>
    implements _$$GeneratePdfRequestModelImplCopyWith<$Res> {
  __$$GeneratePdfRequestModelImplCopyWithImpl(
      _$GeneratePdfRequestModelImpl _value,
      $Res Function(_$GeneratePdfRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GeneratePdfRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneratePdfRequestModelImpl implements _GeneratePdfRequestModel {
  const _$GeneratePdfRequestModelImpl({@JsonKey(name: "id") this.id});

  factory _$GeneratePdfRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneratePdfRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;

  @override
  String toString() {
    return 'GeneratePdfRequestModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratePdfRequestModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratePdfRequestModelImplCopyWith<_$GeneratePdfRequestModelImpl>
      get copyWith => __$$GeneratePdfRequestModelImplCopyWithImpl<
          _$GeneratePdfRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratePdfRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GeneratePdfRequestModel implements GeneratePdfRequestModel {
  const factory _GeneratePdfRequestModel({@JsonKey(name: "id") final int? id}) =
      _$GeneratePdfRequestModelImpl;

  factory _GeneratePdfRequestModel.fromJson(Map<String, dynamic> json) =
      _$GeneratePdfRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$GeneratePdfRequestModelImplCopyWith<_$GeneratePdfRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
