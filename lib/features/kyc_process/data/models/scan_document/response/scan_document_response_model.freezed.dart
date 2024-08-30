// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_document_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScanDocumentResponseModel _$ScanDocumentResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ScanDocumentResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ScanDocumentResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  ScanDocumentResponseData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanDocumentResponseModelCopyWith<ScanDocumentResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanDocumentResponseModelCopyWith<$Res> {
  factory $ScanDocumentResponseModelCopyWith(ScanDocumentResponseModel value,
          $Res Function(ScanDocumentResponseModel) then) =
      _$ScanDocumentResponseModelCopyWithImpl<$Res, ScanDocumentResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ScanDocumentResponseData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $ScanDocumentResponseDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$ScanDocumentResponseModelCopyWithImpl<$Res,
        $Val extends ScanDocumentResponseModel>
    implements $ScanDocumentResponseModelCopyWith<$Res> {
  _$ScanDocumentResponseModelCopyWithImpl(this._value, this._then);

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
              as ScanDocumentResponseData?,
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
  $ScanDocumentResponseDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $ScanDocumentResponseDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$ScanDocumentResponseModelImplCopyWith<$Res>
    implements $ScanDocumentResponseModelCopyWith<$Res> {
  factory _$$ScanDocumentResponseModelImplCopyWith(
          _$ScanDocumentResponseModelImpl value,
          $Res Function(_$ScanDocumentResponseModelImpl) then) =
      __$$ScanDocumentResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ScanDocumentResponseData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $ScanDocumentResponseDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$ScanDocumentResponseModelImplCopyWithImpl<$Res>
    extends _$ScanDocumentResponseModelCopyWithImpl<$Res,
        _$ScanDocumentResponseModelImpl>
    implements _$$ScanDocumentResponseModelImplCopyWith<$Res> {
  __$$ScanDocumentResponseModelImplCopyWithImpl(
      _$ScanDocumentResponseModelImpl _value,
      $Res Function(_$ScanDocumentResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ScanDocumentResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ScanDocumentResponseData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScanDocumentResponseModelImpl implements _ScanDocumentResponseModel {
  const _$ScanDocumentResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$ScanDocumentResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScanDocumentResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final ScanDocumentResponseData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'ScanDocumentResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanDocumentResponseModelImpl &&
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
  _$$ScanDocumentResponseModelImplCopyWith<_$ScanDocumentResponseModelImpl>
      get copyWith => __$$ScanDocumentResponseModelImplCopyWithImpl<
          _$ScanDocumentResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanDocumentResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ScanDocumentResponseModel implements ScanDocumentResponseModel {
  const factory _ScanDocumentResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final ScanDocumentResponseData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$ScanDocumentResponseModelImpl;

  factory _ScanDocumentResponseModel.fromJson(Map<String, dynamic> json) =
      _$ScanDocumentResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  ScanDocumentResponseData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$ScanDocumentResponseModelImplCopyWith<_$ScanDocumentResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScanDocumentResponseData _$ScanDocumentResponseDataFromJson(
    Map<String, dynamic> json) {
  return _ScanDocumentResponseData.fromJson(json);
}

/// @nodoc
mixin _$ScanDocumentResponseData {
  @JsonKey(name: "rb")
  ScanDocumentResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanDocumentResponseDataCopyWith<ScanDocumentResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanDocumentResponseDataCopyWith<$Res> {
  factory $ScanDocumentResponseDataCopyWith(ScanDocumentResponseData value,
          $Res Function(ScanDocumentResponseData) then) =
      _$ScanDocumentResponseDataCopyWithImpl<$Res, ScanDocumentResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ScanDocumentResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $ScanDocumentResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$ScanDocumentResponseDataCopyWithImpl<$Res,
        $Val extends ScanDocumentResponseData>
    implements $ScanDocumentResponseDataCopyWith<$Res> {
  _$ScanDocumentResponseDataCopyWithImpl(this._value, this._then);

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
              as ScanDocumentResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ScanDocumentResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $ScanDocumentResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScanDocumentResponseDataImplCopyWith<$Res>
    implements $ScanDocumentResponseDataCopyWith<$Res> {
  factory _$$ScanDocumentResponseDataImplCopyWith(
          _$ScanDocumentResponseDataImpl value,
          $Res Function(_$ScanDocumentResponseDataImpl) then) =
      __$$ScanDocumentResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ScanDocumentResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $ScanDocumentResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$ScanDocumentResponseDataImplCopyWithImpl<$Res>
    extends _$ScanDocumentResponseDataCopyWithImpl<$Res,
        _$ScanDocumentResponseDataImpl>
    implements _$$ScanDocumentResponseDataImplCopyWith<$Res> {
  __$$ScanDocumentResponseDataImplCopyWithImpl(
      _$ScanDocumentResponseDataImpl _value,
      $Res Function(_$ScanDocumentResponseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$ScanDocumentResponseDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as ScanDocumentResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScanDocumentResponseDataImpl implements _ScanDocumentResponseData {
  const _$ScanDocumentResponseDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$ScanDocumentResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScanDocumentResponseDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final ScanDocumentResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'ScanDocumentResponseData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanDocumentResponseDataImpl &&
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
  _$$ScanDocumentResponseDataImplCopyWith<_$ScanDocumentResponseDataImpl>
      get copyWith => __$$ScanDocumentResponseDataImplCopyWithImpl<
          _$ScanDocumentResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanDocumentResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ScanDocumentResponseData implements ScanDocumentResponseData {
  const factory _ScanDocumentResponseData(
          {@JsonKey(name: "rb") final ScanDocumentResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$ScanDocumentResponseDataImpl;

  factory _ScanDocumentResponseData.fromJson(Map<String, dynamic> json) =
      _$ScanDocumentResponseDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  ScanDocumentResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$ScanDocumentResponseDataImplCopyWith<_$ScanDocumentResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ScanDocumentResponseBody _$ScanDocumentResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _ScanDocumentResponseBody.fromJson(json);
}

/// @nodoc
mixin _$ScanDocumentResponseBody {
  @JsonKey(name: "fileName")
  String? get fileName => throw _privateConstructorUsedError;
  @JsonKey(name: "ocrResponse")
  OcrResponse? get ocrResponse => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadedDocumentId")
  int? get uploadedDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "currentDateTime")
  String? get currentDateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanDocumentResponseBodyCopyWith<ScanDocumentResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanDocumentResponseBodyCopyWith<$Res> {
  factory $ScanDocumentResponseBodyCopyWith(ScanDocumentResponseBody value,
          $Res Function(ScanDocumentResponseBody) then) =
      _$ScanDocumentResponseBodyCopyWithImpl<$Res, ScanDocumentResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "ocrResponse") OcrResponse? ocrResponse,
      @JsonKey(name: "uploadedDocumentId") int? uploadedDocumentId,
      @JsonKey(name: "currentDateTime") String? currentDateTime});

  $OcrResponseCopyWith<$Res>? get ocrResponse;
}

/// @nodoc
class _$ScanDocumentResponseBodyCopyWithImpl<$Res,
        $Val extends ScanDocumentResponseBody>
    implements $ScanDocumentResponseBodyCopyWith<$Res> {
  _$ScanDocumentResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? ocrResponse = freezed,
    Object? uploadedDocumentId = freezed,
    Object? currentDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      ocrResponse: freezed == ocrResponse
          ? _value.ocrResponse
          : ocrResponse // ignore: cast_nullable_to_non_nullable
              as OcrResponse?,
      uploadedDocumentId: freezed == uploadedDocumentId
          ? _value.uploadedDocumentId
          : uploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      currentDateTime: freezed == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OcrResponseCopyWith<$Res>? get ocrResponse {
    if (_value.ocrResponse == null) {
      return null;
    }

    return $OcrResponseCopyWith<$Res>(_value.ocrResponse!, (value) {
      return _then(_value.copyWith(ocrResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScanDocumentResponseBodyImplCopyWith<$Res>
    implements $ScanDocumentResponseBodyCopyWith<$Res> {
  factory _$$ScanDocumentResponseBodyImplCopyWith(
          _$ScanDocumentResponseBodyImpl value,
          $Res Function(_$ScanDocumentResponseBodyImpl) then) =
      __$$ScanDocumentResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fileName") String? fileName,
      @JsonKey(name: "ocrResponse") OcrResponse? ocrResponse,
      @JsonKey(name: "uploadedDocumentId") int? uploadedDocumentId,
      @JsonKey(name: "currentDateTime") String? currentDateTime});

  @override
  $OcrResponseCopyWith<$Res>? get ocrResponse;
}

/// @nodoc
class __$$ScanDocumentResponseBodyImplCopyWithImpl<$Res>
    extends _$ScanDocumentResponseBodyCopyWithImpl<$Res,
        _$ScanDocumentResponseBodyImpl>
    implements _$$ScanDocumentResponseBodyImplCopyWith<$Res> {
  __$$ScanDocumentResponseBodyImplCopyWithImpl(
      _$ScanDocumentResponseBodyImpl _value,
      $Res Function(_$ScanDocumentResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = freezed,
    Object? ocrResponse = freezed,
    Object? uploadedDocumentId = freezed,
    Object? currentDateTime = freezed,
  }) {
    return _then(_$ScanDocumentResponseBodyImpl(
      fileName: freezed == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String?,
      ocrResponse: freezed == ocrResponse
          ? _value.ocrResponse
          : ocrResponse // ignore: cast_nullable_to_non_nullable
              as OcrResponse?,
      uploadedDocumentId: freezed == uploadedDocumentId
          ? _value.uploadedDocumentId
          : uploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      currentDateTime: freezed == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScanDocumentResponseBodyImpl implements _ScanDocumentResponseBody {
  const _$ScanDocumentResponseBodyImpl(
      {@JsonKey(name: "fileName") this.fileName,
      @JsonKey(name: "ocrResponse") this.ocrResponse,
      @JsonKey(name: "uploadedDocumentId") this.uploadedDocumentId,
      @JsonKey(name: "currentDateTime") this.currentDateTime});

  factory _$ScanDocumentResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScanDocumentResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "fileName")
  final String? fileName;
  @override
  @JsonKey(name: "ocrResponse")
  final OcrResponse? ocrResponse;
  @override
  @JsonKey(name: "uploadedDocumentId")
  final int? uploadedDocumentId;
  @override
  @JsonKey(name: "currentDateTime")
  final String? currentDateTime;

  @override
  String toString() {
    return 'ScanDocumentResponseBody(fileName: $fileName, ocrResponse: $ocrResponse, uploadedDocumentId: $uploadedDocumentId, currentDateTime: $currentDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanDocumentResponseBodyImpl &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.ocrResponse, ocrResponse) ||
                other.ocrResponse == ocrResponse) &&
            (identical(other.uploadedDocumentId, uploadedDocumentId) ||
                other.uploadedDocumentId == uploadedDocumentId) &&
            (identical(other.currentDateTime, currentDateTime) ||
                other.currentDateTime == currentDateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fileName, ocrResponse, uploadedDocumentId, currentDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanDocumentResponseBodyImplCopyWith<_$ScanDocumentResponseBodyImpl>
      get copyWith => __$$ScanDocumentResponseBodyImplCopyWithImpl<
          _$ScanDocumentResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanDocumentResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _ScanDocumentResponseBody implements ScanDocumentResponseBody {
  const factory _ScanDocumentResponseBody(
          {@JsonKey(name: "fileName") final String? fileName,
          @JsonKey(name: "ocrResponse") final OcrResponse? ocrResponse,
          @JsonKey(name: "uploadedDocumentId") final int? uploadedDocumentId,
          @JsonKey(name: "currentDateTime") final String? currentDateTime}) =
      _$ScanDocumentResponseBodyImpl;

  factory _ScanDocumentResponseBody.fromJson(Map<String, dynamic> json) =
      _$ScanDocumentResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "fileName")
  String? get fileName;
  @override
  @JsonKey(name: "ocrResponse")
  OcrResponse? get ocrResponse;
  @override
  @JsonKey(name: "uploadedDocumentId")
  int? get uploadedDocumentId;
  @override
  @JsonKey(name: "currentDateTime")
  String? get currentDateTime;
  @override
  @JsonKey(ignore: true)
  _$$ScanDocumentResponseBodyImplCopyWith<_$ScanDocumentResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OcrResponse _$OcrResponseFromJson(Map<String, dynamic> json) {
  return _OcrResponse.fromJson(json);
}

/// @nodoc
mixin _$OcrResponse {
  @JsonKey(name: "code")
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "documentdata")
  Documentdata? get documentdata => throw _privateConstructorUsedError;
  @JsonKey(name: "msg")
  String? get msg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OcrResponseCopyWith<OcrResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OcrResponseCopyWith<$Res> {
  factory $OcrResponseCopyWith(
          OcrResponse value, $Res Function(OcrResponse) then) =
      _$OcrResponseCopyWithImpl<$Res, OcrResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "documentdata") Documentdata? documentdata,
      @JsonKey(name: "msg") String? msg});

  $DocumentdataCopyWith<$Res>? get documentdata;
}

/// @nodoc
class _$OcrResponseCopyWithImpl<$Res, $Val extends OcrResponse>
    implements $OcrResponseCopyWith<$Res> {
  _$OcrResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? documentdata = freezed,
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      documentdata: freezed == documentdata
          ? _value.documentdata
          : documentdata // ignore: cast_nullable_to_non_nullable
              as Documentdata?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DocumentdataCopyWith<$Res>? get documentdata {
    if (_value.documentdata == null) {
      return null;
    }

    return $DocumentdataCopyWith<$Res>(_value.documentdata!, (value) {
      return _then(_value.copyWith(documentdata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OcrResponseImplCopyWith<$Res>
    implements $OcrResponseCopyWith<$Res> {
  factory _$$OcrResponseImplCopyWith(
          _$OcrResponseImpl value, $Res Function(_$OcrResponseImpl) then) =
      __$$OcrResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int? code,
      @JsonKey(name: "documentdata") Documentdata? documentdata,
      @JsonKey(name: "msg") String? msg});

  @override
  $DocumentdataCopyWith<$Res>? get documentdata;
}

/// @nodoc
class __$$OcrResponseImplCopyWithImpl<$Res>
    extends _$OcrResponseCopyWithImpl<$Res, _$OcrResponseImpl>
    implements _$$OcrResponseImplCopyWith<$Res> {
  __$$OcrResponseImplCopyWithImpl(
      _$OcrResponseImpl _value, $Res Function(_$OcrResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? documentdata = freezed,
    Object? msg = freezed,
  }) {
    return _then(_$OcrResponseImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      documentdata: freezed == documentdata
          ? _value.documentdata
          : documentdata // ignore: cast_nullable_to_non_nullable
              as Documentdata?,
      msg: freezed == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OcrResponseImpl implements _OcrResponse {
  const _$OcrResponseImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "documentdata") this.documentdata,
      @JsonKey(name: "msg") this.msg});

  factory _$OcrResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OcrResponseImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int? code;
  @override
  @JsonKey(name: "documentdata")
  final Documentdata? documentdata;
  @override
  @JsonKey(name: "msg")
  final String? msg;

  @override
  String toString() {
    return 'OcrResponse(code: $code, documentdata: $documentdata, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OcrResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.documentdata, documentdata) ||
                other.documentdata == documentdata) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, documentdata, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OcrResponseImplCopyWith<_$OcrResponseImpl> get copyWith =>
      __$$OcrResponseImplCopyWithImpl<_$OcrResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OcrResponseImplToJson(
      this,
    );
  }
}

abstract class _OcrResponse implements OcrResponse {
  const factory _OcrResponse(
      {@JsonKey(name: "code") final int? code,
      @JsonKey(name: "documentdata") final Documentdata? documentdata,
      @JsonKey(name: "msg") final String? msg}) = _$OcrResponseImpl;

  factory _OcrResponse.fromJson(Map<String, dynamic> json) =
      _$OcrResponseImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int? get code;
  @override
  @JsonKey(name: "documentdata")
  Documentdata? get documentdata;
  @override
  @JsonKey(name: "msg")
  String? get msg;
  @override
  @JsonKey(ignore: true)
  _$$OcrResponseImplCopyWith<_$OcrResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Documentdata _$DocumentdataFromJson(Map<String, dynamic> json) {
  return _Documentdata.fromJson(json);
}

/// @nodoc
mixin _$Documentdata {
  @JsonKey(name: "kyc_status")
  String? get kycStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "kyc_status_msg")
  String? get kycStatusMsg => throw _privateConstructorUsedError;
  @JsonKey(name: "isFirstNameAvailable")
  bool? get isFirstNameAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "isLastNameAvailable")
  bool? get isLastNameAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "isIdNumberAvailable")
  bool? get isIdNumberAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "id_number")
  String? get idNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "billDate")
  String? get billDate => throw _privateConstructorUsedError;
  @JsonKey(name: "issueDate")
  String? get issueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "isRegistrationMarkAvailable")
  bool? get isRegistrationMarkAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: "registrationMark")
  dynamic get registrationMark => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentdataCopyWith<Documentdata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentdataCopyWith<$Res> {
  factory $DocumentdataCopyWith(
          Documentdata value, $Res Function(Documentdata) then) =
      _$DocumentdataCopyWithImpl<$Res, Documentdata>;
  @useResult
  $Res call(
      {@JsonKey(name: "kyc_status") String? kycStatus,
      @JsonKey(name: "kyc_status_msg") String? kycStatusMsg,
      @JsonKey(name: "isFirstNameAvailable") bool? isFirstNameAvailable,
      @JsonKey(name: "isLastNameAvailable") bool? isLastNameAvailable,
      @JsonKey(name: "isIdNumberAvailable") bool? isIdNumberAvailable,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "id_number") String? idNumber,
      @JsonKey(name: "billDate") String? billDate,
      @JsonKey(name: "issueDate") String? issueDate,
      @JsonKey(name: "isRegistrationMarkAvailable")
      bool? isRegistrationMarkAvailable,
      @JsonKey(name: "registrationMark") dynamic registrationMark,
      @JsonKey(name: "address") String? address});
}

/// @nodoc
class _$DocumentdataCopyWithImpl<$Res, $Val extends Documentdata>
    implements $DocumentdataCopyWith<$Res> {
  _$DocumentdataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycStatus = freezed,
    Object? kycStatusMsg = freezed,
    Object? isFirstNameAvailable = freezed,
    Object? isLastNameAvailable = freezed,
    Object? isIdNumberAvailable = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? idNumber = freezed,
    Object? billDate = freezed,
    Object? issueDate = freezed,
    Object? isRegistrationMarkAvailable = freezed,
    Object? registrationMark = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      kycStatus: freezed == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      kycStatusMsg: freezed == kycStatusMsg
          ? _value.kycStatusMsg
          : kycStatusMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isFirstNameAvailable: freezed == isFirstNameAvailable
          ? _value.isFirstNameAvailable
          : isFirstNameAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLastNameAvailable: freezed == isLastNameAvailable
          ? _value.isLastNameAvailable
          : isLastNameAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isIdNumberAvailable: freezed == isIdNumberAvailable
          ? _value.isIdNumberAvailable
          : isIdNumberAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      billDate: freezed == billDate
          ? _value.billDate
          : billDate // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistrationMarkAvailable: freezed == isRegistrationMarkAvailable
          ? _value.isRegistrationMarkAvailable
          : isRegistrationMarkAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      registrationMark: freezed == registrationMark
          ? _value.registrationMark
          : registrationMark // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentdataImplCopyWith<$Res>
    implements $DocumentdataCopyWith<$Res> {
  factory _$$DocumentdataImplCopyWith(
          _$DocumentdataImpl value, $Res Function(_$DocumentdataImpl) then) =
      __$$DocumentdataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "kyc_status") String? kycStatus,
      @JsonKey(name: "kyc_status_msg") String? kycStatusMsg,
      @JsonKey(name: "isFirstNameAvailable") bool? isFirstNameAvailable,
      @JsonKey(name: "isLastNameAvailable") bool? isLastNameAvailable,
      @JsonKey(name: "isIdNumberAvailable") bool? isIdNumberAvailable,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "id_number") String? idNumber,
      @JsonKey(name: "billDate") String? billDate,
      @JsonKey(name: "issueDate") String? issueDate,
      @JsonKey(name: "isRegistrationMarkAvailable")
      bool? isRegistrationMarkAvailable,
      @JsonKey(name: "registrationMark") dynamic registrationMark,
      @JsonKey(name: "address") String? address});
}

/// @nodoc
class __$$DocumentdataImplCopyWithImpl<$Res>
    extends _$DocumentdataCopyWithImpl<$Res, _$DocumentdataImpl>
    implements _$$DocumentdataImplCopyWith<$Res> {
  __$$DocumentdataImplCopyWithImpl(
      _$DocumentdataImpl _value, $Res Function(_$DocumentdataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycStatus = freezed,
    Object? kycStatusMsg = freezed,
    Object? isFirstNameAvailable = freezed,
    Object? isLastNameAvailable = freezed,
    Object? isIdNumberAvailable = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? idNumber = freezed,
    Object? billDate = freezed,
    Object? issueDate = freezed,
    Object? isRegistrationMarkAvailable = freezed,
    Object? registrationMark = freezed,
    Object? address = freezed,
  }) {
    return _then(_$DocumentdataImpl(
      kycStatus: freezed == kycStatus
          ? _value.kycStatus
          : kycStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      kycStatusMsg: freezed == kycStatusMsg
          ? _value.kycStatusMsg
          : kycStatusMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      isFirstNameAvailable: freezed == isFirstNameAvailable
          ? _value.isFirstNameAvailable
          : isFirstNameAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLastNameAvailable: freezed == isLastNameAvailable
          ? _value.isLastNameAvailable
          : isLastNameAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      isIdNumberAvailable: freezed == isIdNumberAvailable
          ? _value.isIdNumberAvailable
          : isIdNumberAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      billDate: freezed == billDate
          ? _value.billDate
          : billDate // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isRegistrationMarkAvailable: freezed == isRegistrationMarkAvailable
          ? _value.isRegistrationMarkAvailable
          : isRegistrationMarkAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      registrationMark: freezed == registrationMark
          ? _value.registrationMark
          : registrationMark // ignore: cast_nullable_to_non_nullable
              as dynamic,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentdataImpl implements _Documentdata {
  const _$DocumentdataImpl(
      {@JsonKey(name: "kyc_status") this.kycStatus,
      @JsonKey(name: "kyc_status_msg") this.kycStatusMsg,
      @JsonKey(name: "isFirstNameAvailable") this.isFirstNameAvailable,
      @JsonKey(name: "isLastNameAvailable") this.isLastNameAvailable,
      @JsonKey(name: "isIdNumberAvailable") this.isIdNumberAvailable,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "id_number") this.idNumber,
      @JsonKey(name: "billDate") this.billDate,
      @JsonKey(name: "issueDate") this.issueDate,
      @JsonKey(name: "isRegistrationMarkAvailable")
      this.isRegistrationMarkAvailable,
      @JsonKey(name: "registrationMark") this.registrationMark,
      @JsonKey(name: "address") this.address});

  factory _$DocumentdataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentdataImplFromJson(json);

  @override
  @JsonKey(name: "kyc_status")
  final String? kycStatus;
  @override
  @JsonKey(name: "kyc_status_msg")
  final String? kycStatusMsg;
  @override
  @JsonKey(name: "isFirstNameAvailable")
  final bool? isFirstNameAvailable;
  @override
  @JsonKey(name: "isLastNameAvailable")
  final bool? isLastNameAvailable;
  @override
  @JsonKey(name: "isIdNumberAvailable")
  final bool? isIdNumberAvailable;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "id_number")
  final String? idNumber;
  @override
  @JsonKey(name: "billDate")
  final String? billDate;
  @override
  @JsonKey(name: "issueDate")
  final String? issueDate;
  @override
  @JsonKey(name: "isRegistrationMarkAvailable")
  final bool? isRegistrationMarkAvailable;
  @override
  @JsonKey(name: "registrationMark")
  final dynamic registrationMark;
  @override
  @JsonKey(name: "address")
  final String? address;

  @override
  String toString() {
    return 'Documentdata(kycStatus: $kycStatus, kycStatusMsg: $kycStatusMsg, isFirstNameAvailable: $isFirstNameAvailable, isLastNameAvailable: $isLastNameAvailable, isIdNumberAvailable: $isIdNumberAvailable, firstName: $firstName, lastName: $lastName, idNumber: $idNumber, billDate: $billDate, issueDate: $issueDate, isRegistrationMarkAvailable: $isRegistrationMarkAvailable, registrationMark: $registrationMark, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentdataImpl &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus) &&
            (identical(other.kycStatusMsg, kycStatusMsg) ||
                other.kycStatusMsg == kycStatusMsg) &&
            (identical(other.isFirstNameAvailable, isFirstNameAvailable) ||
                other.isFirstNameAvailable == isFirstNameAvailable) &&
            (identical(other.isLastNameAvailable, isLastNameAvailable) ||
                other.isLastNameAvailable == isLastNameAvailable) &&
            (identical(other.isIdNumberAvailable, isIdNumberAvailable) ||
                other.isIdNumberAvailable == isIdNumberAvailable) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.billDate, billDate) ||
                other.billDate == billDate) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate) &&
            (identical(other.isRegistrationMarkAvailable,
                    isRegistrationMarkAvailable) ||
                other.isRegistrationMarkAvailable ==
                    isRegistrationMarkAvailable) &&
            const DeepCollectionEquality()
                .equals(other.registrationMark, registrationMark) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      kycStatus,
      kycStatusMsg,
      isFirstNameAvailable,
      isLastNameAvailable,
      isIdNumberAvailable,
      firstName,
      lastName,
      idNumber,
      billDate,
      issueDate,
      isRegistrationMarkAvailable,
      const DeepCollectionEquality().hash(registrationMark),
      address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentdataImplCopyWith<_$DocumentdataImpl> get copyWith =>
      __$$DocumentdataImplCopyWithImpl<_$DocumentdataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentdataImplToJson(
      this,
    );
  }
}

abstract class _Documentdata implements Documentdata {
  const factory _Documentdata(
      {@JsonKey(name: "kyc_status") final String? kycStatus,
      @JsonKey(name: "kyc_status_msg") final String? kycStatusMsg,
      @JsonKey(name: "isFirstNameAvailable") final bool? isFirstNameAvailable,
      @JsonKey(name: "isLastNameAvailable") final bool? isLastNameAvailable,
      @JsonKey(name: "isIdNumberAvailable") final bool? isIdNumberAvailable,
      @JsonKey(name: "first_name") final String? firstName,
      @JsonKey(name: "last_name") final String? lastName,
      @JsonKey(name: "id_number") final String? idNumber,
      @JsonKey(name: "billDate") final String? billDate,
      @JsonKey(name: "issueDate") final String? issueDate,
      @JsonKey(name: "isRegistrationMarkAvailable")
      final bool? isRegistrationMarkAvailable,
      @JsonKey(name: "registrationMark") final dynamic registrationMark,
      @JsonKey(name: "address") final String? address}) = _$DocumentdataImpl;

  factory _Documentdata.fromJson(Map<String, dynamic> json) =
      _$DocumentdataImpl.fromJson;

  @override
  @JsonKey(name: "kyc_status")
  String? get kycStatus;
  @override
  @JsonKey(name: "kyc_status_msg")
  String? get kycStatusMsg;
  @override
  @JsonKey(name: "isFirstNameAvailable")
  bool? get isFirstNameAvailable;
  @override
  @JsonKey(name: "isLastNameAvailable")
  bool? get isLastNameAvailable;
  @override
  @JsonKey(name: "isIdNumberAvailable")
  bool? get isIdNumberAvailable;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "id_number")
  String? get idNumber;
  @override
  @JsonKey(name: "billDate")
  String? get billDate;
  @override
  @JsonKey(name: "issueDate")
  String? get issueDate;
  @override
  @JsonKey(name: "isRegistrationMarkAvailable")
  bool? get isRegistrationMarkAvailable;
  @override
  @JsonKey(name: "registrationMark")
  dynamic get registrationMark;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(ignore: true)
  _$$DocumentdataImplCopyWith<_$DocumentdataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
