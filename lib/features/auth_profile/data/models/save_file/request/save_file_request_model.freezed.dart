// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_file_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveFileRequestModel _$SaveFileRequestModelFromJson(Map<String, dynamic> json) {
  return _SaveFileRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SaveFileRequestModel {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "fileString")
  String? get fileString => throw _privateConstructorUsedError;
  @JsonKey(name: "allowedFileId")
  int? get allowedFileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveFileRequestModelCopyWith<SaveFileRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileRequestModelCopyWith<$Res> {
  factory $SaveFileRequestModelCopyWith(SaveFileRequestModel value,
          $Res Function(SaveFileRequestModel) then) =
      _$SaveFileRequestModelCopyWithImpl<$Res, SaveFileRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "fileString") String? fileString,
      @JsonKey(name: "allowedFileId") int? allowedFileId});
}

/// @nodoc
class _$SaveFileRequestModelCopyWithImpl<$Res,
        $Val extends SaveFileRequestModel>
    implements $SaveFileRequestModelCopyWith<$Res> {
  _$SaveFileRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileString = freezed,
    Object? allowedFileId = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileString: freezed == fileString
          ? _value.fileString
          : fileString // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedFileId: freezed == allowedFileId
          ? _value.allowedFileId
          : allowedFileId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveFileRequestModelImplCopyWith<$Res>
    implements $SaveFileRequestModelCopyWith<$Res> {
  factory _$$SaveFileRequestModelImplCopyWith(_$SaveFileRequestModelImpl value,
          $Res Function(_$SaveFileRequestModelImpl) then) =
      __$$SaveFileRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "fileString") String? fileString,
      @JsonKey(name: "allowedFileId") int? allowedFileId});
}

/// @nodoc
class __$$SaveFileRequestModelImplCopyWithImpl<$Res>
    extends _$SaveFileRequestModelCopyWithImpl<$Res, _$SaveFileRequestModelImpl>
    implements _$$SaveFileRequestModelImplCopyWith<$Res> {
  __$$SaveFileRequestModelImplCopyWithImpl(_$SaveFileRequestModelImpl _value,
      $Res Function(_$SaveFileRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileString = freezed,
    Object? allowedFileId = freezed,
  }) {
    return _then(_$SaveFileRequestModelImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      fileString: freezed == fileString
          ? _value.fileString
          : fileString // ignore: cast_nullable_to_non_nullable
              as String?,
      allowedFileId: freezed == allowedFileId
          ? _value.allowedFileId
          : allowedFileId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveFileRequestModelImpl implements _SaveFileRequestModel {
  const _$SaveFileRequestModelImpl(
      {@JsonKey(name: "fileName") this.fileName,
      @JsonKey(name: "fileString") this.fileString,
      @JsonKey(name: "allowedFileId") this.allowedFileId});

  factory _$SaveFileRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveFileRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;
  @override
  @JsonKey(name: "fileString")
  final String? fileString;
  @override
  @JsonKey(name: "allowedFileId")
  final int? allowedFileId;

  @override
  String toString() {
    return 'SaveFileRequestModel(fileName: $fileName, fileString: $fileString, allowedFileId: $allowedFileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFileRequestModelImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.fileString, fileString) ||
                other.fileString == fileString) &&
            (identical(other.allowedFileId, allowedFileId) ||
                other.allowedFileId == allowedFileId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileName, fileString, allowedFileId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFileRequestModelImplCopyWith<_$SaveFileRequestModelImpl>
      get copyWith =>
          __$$SaveFileRequestModelImplCopyWithImpl<_$SaveFileRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveFileRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SaveFileRequestModel implements SaveFileRequestModel {
  const factory _SaveFileRequestModel(
          {@JsonKey(name: "fileName") final String? fileName,
          @JsonKey(name: "fileString") final String? fileString,
          @JsonKey(name: "allowedFileId") final int? allowedFileId}) =
      _$SaveFileRequestModelImpl;

  factory _SaveFileRequestModel.fromJson(Map<String, dynamic> json) =
      _$SaveFileRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(name: "fileString")
  String? get fileString;
  @override
  @JsonKey(name: "allowedFileId")
  int? get allowedFileId;
  @override
  @JsonKey(ignore: true)
  _$$SaveFileRequestModelImplCopyWith<_$SaveFileRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
