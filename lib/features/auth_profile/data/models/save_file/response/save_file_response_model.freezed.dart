// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_file_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveFileResponseModel _$SaveFileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SaveFileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SaveFileResponseModel {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveFileResponseModelCopyWith<SaveFileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileResponseModelCopyWith<$Res> {
  factory $SaveFileResponseModelCopyWith(SaveFileResponseModel value,
          $Res Function(SaveFileResponseModel) then) =
      _$SaveFileResponseModelCopyWithImpl<$Res, SaveFileResponseModel>;
  @useResult
  $Res call({@JsonKey(name: "fileName") String? fileName});
}

/// @nodoc
class _$SaveFileResponseModelCopyWithImpl<$Res,
        $Val extends SaveFileResponseModel>
    implements $SaveFileResponseModelCopyWith<$Res> {
  _$SaveFileResponseModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SaveFileResponseModelImplCopyWith<$Res>
    implements $SaveFileResponseModelCopyWith<$Res> {
  factory _$$SaveFileResponseModelImplCopyWith(
          _$SaveFileResponseModelImpl value,
          $Res Function(_$SaveFileResponseModelImpl) then) =
      __$$SaveFileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "fileName") String? fileName});
}

/// @nodoc
class __$$SaveFileResponseModelImplCopyWithImpl<$Res>
    extends _$SaveFileResponseModelCopyWithImpl<$Res,
        _$SaveFileResponseModelImpl>
    implements _$$SaveFileResponseModelImplCopyWith<$Res> {
  __$$SaveFileResponseModelImplCopyWithImpl(_$SaveFileResponseModelImpl _value,
      $Res Function(_$SaveFileResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
  }) {
    return _then(_$SaveFileResponseModelImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveFileResponseModelImpl implements _SaveFileResponseModel {
  const _$SaveFileResponseModelImpl({@JsonKey(name: "fileName") this.fileName});

  factory _$SaveFileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveFileResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;

  @override
  String toString() {
    return 'SaveFileResponseModel(fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFileResponseModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFileResponseModelImplCopyWith<_$SaveFileResponseModelImpl>
      get copyWith => __$$SaveFileResponseModelImplCopyWithImpl<
          _$SaveFileResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveFileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SaveFileResponseModel implements SaveFileResponseModel {
  const factory _SaveFileResponseModel(
          {@JsonKey(name: "fileName") final String? fileName}) =
      _$SaveFileResponseModelImpl;

  factory _SaveFileResponseModel.fromJson(Map<String, dynamic> json) =
      _$SaveFileResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(ignore: true)
  _$$SaveFileResponseModelImplCopyWith<_$SaveFileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
