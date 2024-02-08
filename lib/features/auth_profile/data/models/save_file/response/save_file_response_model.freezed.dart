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
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SaveFileData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

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
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SaveFileData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SaveFileDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
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
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SaveFileData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HeaderModelCopyWith<$Res>? get header {
    if (_value.header == null) {
      return null;
    }

    return $HeaderModelCopyWith<$Res>(_value.header!, (value) {
      return _then(_value.copyWith(header: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SaveFileDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SaveFileDataCopyWith<$Res>(_value.body!, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
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
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SaveFileData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SaveFileDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
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
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SaveFileResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SaveFileData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveFileResponseModelImpl implements _SaveFileResponseModel {
  const _$SaveFileResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SaveFileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveFileResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SaveFileData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SaveFileResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFileResponseModelImpl &&
            (identical(other.header, header) || other.header == header) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, header, body, status);

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
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SaveFileData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SaveFileResponseModelImpl;

  factory _SaveFileResponseModel.fromJson(Map<String, dynamic> json) =
      _$SaveFileResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SaveFileData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SaveFileResponseModelImplCopyWith<_$SaveFileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SaveFileData _$SaveFileDataFromJson(Map<String, dynamic> json) {
  return _SaveFileData.fromJson(json);
}

/// @nodoc
mixin _$SaveFileData {
  @JsonKey(name: "rb")
  SaveFileResponseBody? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveFileDataCopyWith<SaveFileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileDataCopyWith<$Res> {
  factory $SaveFileDataCopyWith(
          SaveFileData value, $Res Function(SaveFileData) then) =
      _$SaveFileDataCopyWithImpl<$Res, SaveFileData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") SaveFileResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $SaveFileResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SaveFileDataCopyWithImpl<$Res, $Val extends SaveFileData>
    implements $SaveFileDataCopyWith<$Res> {
  _$SaveFileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_value.copyWith(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as SaveFileResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SaveFileResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $SaveFileResponseBodyCopyWith<$Res>(_value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveFileDataImplCopyWith<$Res>
    implements $SaveFileDataCopyWith<$Res> {
  factory _$$SaveFileDataImplCopyWith(
          _$SaveFileDataImpl value, $Res Function(_$SaveFileDataImpl) then) =
      __$$SaveFileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") SaveFileResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $SaveFileResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SaveFileDataImplCopyWithImpl<$Res>
    extends _$SaveFileDataCopyWithImpl<$Res, _$SaveFileDataImpl>
    implements _$$SaveFileDataImplCopyWith<$Res> {
  __$$SaveFileDataImplCopyWithImpl(
      _$SaveFileDataImpl _value, $Res Function(_$SaveFileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SaveFileDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as SaveFileResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveFileDataImpl implements _SaveFileData {
  const _$SaveFileDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SaveFileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveFileDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final SaveFileResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SaveFileData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFileDataImpl &&
            (identical(other.responseBody, responseBody) ||
                other.responseBody == responseBody) &&
            (identical(other.checkSum, checkSum) ||
                other.checkSum == checkSum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, responseBody, checkSum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFileDataImplCopyWith<_$SaveFileDataImpl> get copyWith =>
      __$$SaveFileDataImplCopyWithImpl<_$SaveFileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveFileDataImplToJson(
      this,
    );
  }
}

abstract class _SaveFileData implements SaveFileData {
  const factory _SaveFileData(
      {@JsonKey(name: "rb") final SaveFileResponseBody? responseBody,
      @JsonKey(name: "checkSum") final String? checkSum}) = _$SaveFileDataImpl;

  factory _SaveFileData.fromJson(Map<String, dynamic> json) =
      _$SaveFileDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  SaveFileResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SaveFileDataImplCopyWith<_$SaveFileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaveFileResponseBody _$SaveFileResponseBodyFromJson(Map<String, dynamic> json) {
  return _SaveFileResponseBody.fromJson(json);
}

/// @nodoc
mixin _$SaveFileResponseBody {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveFileResponseBodyCopyWith<SaveFileResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFileResponseBodyCopyWith<$Res> {
  factory $SaveFileResponseBodyCopyWith(SaveFileResponseBody value,
          $Res Function(SaveFileResponseBody) then) =
      _$SaveFileResponseBodyCopyWithImpl<$Res, SaveFileResponseBody>;
  @useResult
  $Res call({@JsonKey(name: "fileName") String? fileName});
}

/// @nodoc
class _$SaveFileResponseBodyCopyWithImpl<$Res,
        $Val extends SaveFileResponseBody>
    implements $SaveFileResponseBodyCopyWith<$Res> {
  _$SaveFileResponseBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$SaveFileResponseBodyImplCopyWith<$Res>
    implements $SaveFileResponseBodyCopyWith<$Res> {
  factory _$$SaveFileResponseBodyImplCopyWith(_$SaveFileResponseBodyImpl value,
          $Res Function(_$SaveFileResponseBodyImpl) then) =
      __$$SaveFileResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "fileName") String? fileName});
}

/// @nodoc
class __$$SaveFileResponseBodyImplCopyWithImpl<$Res>
    extends _$SaveFileResponseBodyCopyWithImpl<$Res, _$SaveFileResponseBodyImpl>
    implements _$$SaveFileResponseBodyImplCopyWith<$Res> {
  __$$SaveFileResponseBodyImplCopyWithImpl(_$SaveFileResponseBodyImpl _value,
      $Res Function(_$SaveFileResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
  }) {
    return _then(_$SaveFileResponseBodyImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveFileResponseBodyImpl implements _SaveFileResponseBody {
  const _$SaveFileResponseBodyImpl({@JsonKey(name: "fileName") this.fileName});

  factory _$SaveFileResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveFileResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;

  @override
  String toString() {
    return 'SaveFileResponseBody(fileName: $fileName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveFileResponseBodyImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveFileResponseBodyImplCopyWith<_$SaveFileResponseBodyImpl>
      get copyWith =>
          __$$SaveFileResponseBodyImplCopyWithImpl<_$SaveFileResponseBodyImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveFileResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _SaveFileResponseBody implements SaveFileResponseBody {
  const factory _SaveFileResponseBody(
          {@JsonKey(name: "fileName") final String? fileName}) =
      _$SaveFileResponseBodyImpl;

  factory _SaveFileResponseBody.fromJson(Map<String, dynamic> json) =
      _$SaveFileResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(ignore: true)
  _$$SaveFileResponseBodyImplCopyWith<_$SaveFileResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
