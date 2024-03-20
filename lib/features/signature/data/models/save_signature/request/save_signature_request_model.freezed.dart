// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_signature_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveSignatureRequestModel _$SaveSignatureRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SaveSignatureRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SaveSignatureRequestModel {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "fileString")
  String? get fileString => throw _privateConstructorUsedError;
  @JsonKey(name: "allowedFileId")
  int? get allowedFileId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveSignatureRequestModelCopyWith<SaveSignatureRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveSignatureRequestModelCopyWith<$Res> {
  factory $SaveSignatureRequestModelCopyWith(SaveSignatureRequestModel value,
          $Res Function(SaveSignatureRequestModel) then) =
      _$SaveSignatureRequestModelCopyWithImpl<$Res, SaveSignatureRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "fileString") String? fileString,
      @JsonKey(name: "allowedFileId") int? allowedFileId});
}

/// @nodoc
class _$SaveSignatureRequestModelCopyWithImpl<$Res,
        $Val extends SaveSignatureRequestModel>
    implements $SaveSignatureRequestModelCopyWith<$Res> {
  _$SaveSignatureRequestModelCopyWithImpl(this._value, this._then);

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
abstract class _$$SaveSignatureRequestModelImplCopyWith<$Res>
    implements $SaveSignatureRequestModelCopyWith<$Res> {
  factory _$$SaveSignatureRequestModelImplCopyWith(
          _$SaveSignatureRequestModelImpl value,
          $Res Function(_$SaveSignatureRequestModelImpl) then) =
      __$$SaveSignatureRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "fileString") String? fileString,
      @JsonKey(name: "allowedFileId") int? allowedFileId});
}

/// @nodoc
class __$$SaveSignatureRequestModelImplCopyWithImpl<$Res>
    extends _$SaveSignatureRequestModelCopyWithImpl<$Res,
        _$SaveSignatureRequestModelImpl>
    implements _$$SaveSignatureRequestModelImplCopyWith<$Res> {
  __$$SaveSignatureRequestModelImplCopyWithImpl(
      _$SaveSignatureRequestModelImpl _value,
      $Res Function(_$SaveSignatureRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? fileString = freezed,
    Object? allowedFileId = freezed,
  }) {
    return _then(_$SaveSignatureRequestModelImpl(
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
class _$SaveSignatureRequestModelImpl implements _SaveSignatureRequestModel {
  const _$SaveSignatureRequestModelImpl(
      {@JsonKey(name: "fileName") this.fileName,
      @JsonKey(name: "fileString") this.fileString,
      @JsonKey(name: "allowedFileId") this.allowedFileId});

  factory _$SaveSignatureRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveSignatureRequestModelImplFromJson(json);

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
    return 'SaveSignatureRequestModel(fileName: $fileName, fileString: $fileString, allowedFileId: $allowedFileId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSignatureRequestModelImpl &&
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
  _$$SaveSignatureRequestModelImplCopyWith<_$SaveSignatureRequestModelImpl>
      get copyWith => __$$SaveSignatureRequestModelImplCopyWithImpl<
          _$SaveSignatureRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveSignatureRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SaveSignatureRequestModel implements SaveSignatureRequestModel {
  const factory _SaveSignatureRequestModel(
          {@JsonKey(name: "fileName") final String? fileName,
          @JsonKey(name: "fileString") final String? fileString,
          @JsonKey(name: "allowedFileId") final int? allowedFileId}) =
      _$SaveSignatureRequestModelImpl;

  factory _SaveSignatureRequestModel.fromJson(Map<String, dynamic> json) =
      _$SaveSignatureRequestModelImpl.fromJson;

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
  _$$SaveSignatureRequestModelImplCopyWith<_$SaveSignatureRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
