// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_file_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewFileRequestModel _$ViewFileRequestModelFromJson(Map<String, dynamic> json) {
  return _ViewFileRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ViewFileRequestModel {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewFileRequestModelCopyWith<ViewFileRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewFileRequestModelCopyWith<$Res> {
  factory $ViewFileRequestModelCopyWith(ViewFileRequestModel value,
          $Res Function(ViewFileRequestModel) then) =
      _$ViewFileRequestModelCopyWithImpl<$Res, ViewFileRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "fileName") String? fileName});
}

/// @nodoc
class _$ViewFileRequestModelCopyWithImpl<$Res,
        $Val extends ViewFileRequestModel>
    implements $ViewFileRequestModelCopyWith<$Res> {
  _$ViewFileRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ViewFileRequestModelImplCopyWith<$Res>
    implements $ViewFileRequestModelCopyWith<$Res> {
  factory _$$ViewFileRequestModelImplCopyWith(_$ViewFileRequestModelImpl value,
          $Res Function(_$ViewFileRequestModelImpl) then) =
      __$$ViewFileRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "fileName") String? fileName});
}

/// @nodoc
class __$$ViewFileRequestModelImplCopyWithImpl<$Res>
    extends _$ViewFileRequestModelCopyWithImpl<$Res, _$ViewFileRequestModelImpl>
    implements _$$ViewFileRequestModelImplCopyWith<$Res> {
  __$$ViewFileRequestModelImplCopyWithImpl(_$ViewFileRequestModelImpl _value,
      $Res Function(_$ViewFileRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
  }) {
    return _then(_$ViewFileRequestModelImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewFileRequestModelImpl implements _ViewFileRequestModel {
  const _$ViewFileRequestModelImpl({@JsonKey(name: "fileName") this.fileName});

  factory _$ViewFileRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewFileRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;

  @override
  String toString() {
    return 'ViewFileRequestModel(fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewFileRequestModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewFileRequestModelImplCopyWith<_$ViewFileRequestModelImpl>
      get copyWith =>
          __$$ViewFileRequestModelImplCopyWithImpl<_$ViewFileRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewFileRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ViewFileRequestModel implements ViewFileRequestModel {
  const factory _ViewFileRequestModel(
          {@JsonKey(name: "fileName") final String? fileName}) =
      _$ViewFileRequestModelImpl;

  factory _ViewFileRequestModel.fromJson(Map<String, dynamic> json) =
      _$ViewFileRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(ignore: true)
  _$$ViewFileRequestModelImplCopyWith<_$ViewFileRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
