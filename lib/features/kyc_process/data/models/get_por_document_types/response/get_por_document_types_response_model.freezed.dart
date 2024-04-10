// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_por_document_types_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPorDocumentTypesResponseModel _$GetPorDocumentTypesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetPorDocumentTypesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetPorDocumentTypesResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetPORDocumentTypesData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPorDocumentTypesResponseModelCopyWith<GetPorDocumentTypesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPorDocumentTypesResponseModelCopyWith<$Res> {
  factory $GetPorDocumentTypesResponseModelCopyWith(
          GetPorDocumentTypesResponseModel value,
          $Res Function(GetPorDocumentTypesResponseModel) then) =
      _$GetPorDocumentTypesResponseModelCopyWithImpl<$Res,
          GetPorDocumentTypesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetPORDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetPORDocumentTypesDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetPorDocumentTypesResponseModelCopyWithImpl<$Res,
        $Val extends GetPorDocumentTypesResponseModel>
    implements $GetPorDocumentTypesResponseModelCopyWith<$Res> {
  _$GetPorDocumentTypesResponseModelCopyWithImpl(this._value, this._then);

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
              as GetPORDocumentTypesData?,
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
  $GetPORDocumentTypesDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetPORDocumentTypesDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetPorDocumentTypesResponseModelImplCopyWith<$Res>
    implements $GetPorDocumentTypesResponseModelCopyWith<$Res> {
  factory _$$GetPorDocumentTypesResponseModelImplCopyWith(
          _$GetPorDocumentTypesResponseModelImpl value,
          $Res Function(_$GetPorDocumentTypesResponseModelImpl) then) =
      __$$GetPorDocumentTypesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetPORDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetPORDocumentTypesDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetPorDocumentTypesResponseModelImplCopyWithImpl<$Res>
    extends _$GetPorDocumentTypesResponseModelCopyWithImpl<$Res,
        _$GetPorDocumentTypesResponseModelImpl>
    implements _$$GetPorDocumentTypesResponseModelImplCopyWith<$Res> {
  __$$GetPorDocumentTypesResponseModelImplCopyWithImpl(
      _$GetPorDocumentTypesResponseModelImpl _value,
      $Res Function(_$GetPorDocumentTypesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetPorDocumentTypesResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetPORDocumentTypesData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPorDocumentTypesResponseModelImpl
    implements _GetPorDocumentTypesResponseModel {
  const _$GetPorDocumentTypesResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetPorDocumentTypesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetPorDocumentTypesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetPORDocumentTypesData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetPorDocumentTypesResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPorDocumentTypesResponseModelImpl &&
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
  _$$GetPorDocumentTypesResponseModelImplCopyWith<
          _$GetPorDocumentTypesResponseModelImpl>
      get copyWith => __$$GetPorDocumentTypesResponseModelImplCopyWithImpl<
          _$GetPorDocumentTypesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPorDocumentTypesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetPorDocumentTypesResponseModel
    implements GetPorDocumentTypesResponseModel {
  const factory _GetPorDocumentTypesResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetPORDocumentTypesData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetPorDocumentTypesResponseModelImpl;

  factory _GetPorDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetPorDocumentTypesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetPORDocumentTypesData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetPorDocumentTypesResponseModelImplCopyWith<
          _$GetPorDocumentTypesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetPORDocumentTypesData _$GetPORDocumentTypesDataFromJson(
    Map<String, dynamic> json) {
  return _GetPORDocumentTypesData.fromJson(json);
}

/// @nodoc
mixin _$GetPORDocumentTypesData {
  @JsonKey(name: "rb")
  List<PORDocumentTypeModel>? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPORDocumentTypesDataCopyWith<GetPORDocumentTypesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPORDocumentTypesDataCopyWith<$Res> {
  factory $GetPORDocumentTypesDataCopyWith(GetPORDocumentTypesData value,
          $Res Function(GetPORDocumentTypesData) then) =
      _$GetPORDocumentTypesDataCopyWithImpl<$Res, GetPORDocumentTypesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<PORDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$GetPORDocumentTypesDataCopyWithImpl<$Res,
        $Val extends GetPORDocumentTypesData>
    implements $GetPORDocumentTypesDataCopyWith<$Res> {
  _$GetPORDocumentTypesDataCopyWithImpl(this._value, this._then);

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
              as List<PORDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPORDocumentTypesDataImplCopyWith<$Res>
    implements $GetPORDocumentTypesDataCopyWith<$Res> {
  factory _$$GetPORDocumentTypesDataImplCopyWith(
          _$GetPORDocumentTypesDataImpl value,
          $Res Function(_$GetPORDocumentTypesDataImpl) then) =
      __$$GetPORDocumentTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<PORDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$GetPORDocumentTypesDataImplCopyWithImpl<$Res>
    extends _$GetPORDocumentTypesDataCopyWithImpl<$Res,
        _$GetPORDocumentTypesDataImpl>
    implements _$$GetPORDocumentTypesDataImplCopyWith<$Res> {
  __$$GetPORDocumentTypesDataImplCopyWithImpl(
      _$GetPORDocumentTypesDataImpl _value,
      $Res Function(_$GetPORDocumentTypesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetPORDocumentTypesDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<PORDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPORDocumentTypesDataImpl implements _GetPORDocumentTypesData {
  const _$GetPORDocumentTypesDataImpl(
      {@JsonKey(name: "rb") final List<PORDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$GetPORDocumentTypesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPORDocumentTypesDataImplFromJson(json);

  final List<PORDocumentTypeModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<PORDocumentTypeModel>? get responseBody {
    final value = _responseBody;
    if (value == null) return null;
    if (_responseBody is EqualUnmodifiableListView) return _responseBody;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'GetPORDocumentTypesData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPORDocumentTypesDataImpl &&
            const DeepCollectionEquality()
                .equals(other._responseBody, _responseBody) &&
            (identical(other.checkSum, checkSum) ||
                other.checkSum == checkSum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_responseBody), checkSum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPORDocumentTypesDataImplCopyWith<_$GetPORDocumentTypesDataImpl>
      get copyWith => __$$GetPORDocumentTypesDataImplCopyWithImpl<
          _$GetPORDocumentTypesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPORDocumentTypesDataImplToJson(
      this,
    );
  }
}

abstract class _GetPORDocumentTypesData implements GetPORDocumentTypesData {
  const factory _GetPORDocumentTypesData(
          {@JsonKey(name: "rb") final List<PORDocumentTypeModel>? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GetPORDocumentTypesDataImpl;

  factory _GetPORDocumentTypesData.fromJson(Map<String, dynamic> json) =
      _$GetPORDocumentTypesDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<PORDocumentTypeModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetPORDocumentTypesDataImplCopyWith<_$GetPORDocumentTypesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PORDocumentTypeModel _$PORDocumentTypeModelFromJson(Map<String, dynamic> json) {
  return _PORDocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PORDocumentTypeModel {
  @JsonKey(name: "porDocumentTypeId")
  int? get porDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "porDocType")
  String? get porDocType => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCode")
  String? get documentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PORDocumentTypeModelCopyWith<PORDocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PORDocumentTypeModelCopyWith<$Res> {
  factory $PORDocumentTypeModelCopyWith(PORDocumentTypeModel value,
          $Res Function(PORDocumentTypeModel) then) =
      _$PORDocumentTypeModelCopyWithImpl<$Res, PORDocumentTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
      @JsonKey(name: "porDocType") String? porDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class _$PORDocumentTypeModelCopyWithImpl<$Res,
        $Val extends PORDocumentTypeModel>
    implements $PORDocumentTypeModelCopyWith<$Res> {
  _$PORDocumentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? porDocumentTypeId = freezed,
    Object? porDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_value.copyWith(
      porDocumentTypeId: freezed == porDocumentTypeId
          ? _value.porDocumentTypeId
          : porDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      porDocType: freezed == porDocType
          ? _value.porDocType
          : porDocType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCode: freezed == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PORDocumentTypeModelImplCopyWith<$Res>
    implements $PORDocumentTypeModelCopyWith<$Res> {
  factory _$$PORDocumentTypeModelImplCopyWith(_$PORDocumentTypeModelImpl value,
          $Res Function(_$PORDocumentTypeModelImpl) then) =
      __$$PORDocumentTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
      @JsonKey(name: "porDocType") String? porDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class __$$PORDocumentTypeModelImplCopyWithImpl<$Res>
    extends _$PORDocumentTypeModelCopyWithImpl<$Res, _$PORDocumentTypeModelImpl>
    implements _$$PORDocumentTypeModelImplCopyWith<$Res> {
  __$$PORDocumentTypeModelImplCopyWithImpl(_$PORDocumentTypeModelImpl _value,
      $Res Function(_$PORDocumentTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? porDocumentTypeId = freezed,
    Object? porDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_$PORDocumentTypeModelImpl(
      porDocumentTypeId: freezed == porDocumentTypeId
          ? _value.porDocumentTypeId
          : porDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      porDocType: freezed == porDocType
          ? _value.porDocType
          : porDocType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCode: freezed == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PORDocumentTypeModelImpl implements _PORDocumentTypeModel {
  const _$PORDocumentTypeModelImpl(
      {@JsonKey(name: "porDocumentTypeId") this.porDocumentTypeId,
      @JsonKey(name: "porDocType") this.porDocType,
      @JsonKey(name: "documentCode") this.documentCode});

  factory _$PORDocumentTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PORDocumentTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "porDocumentTypeId")
  final int? porDocumentTypeId;
  @override
  @JsonKey(name: "porDocType")
  final String? porDocType;
  @override
  @JsonKey(name: "documentCode")
  final String? documentCode;

  @override
  String toString() {
    return 'PORDocumentTypeModel(porDocumentTypeId: $porDocumentTypeId, porDocType: $porDocType, documentCode: $documentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PORDocumentTypeModelImpl &&
            (identical(other.porDocumentTypeId, porDocumentTypeId) ||
                other.porDocumentTypeId == porDocumentTypeId) &&
            (identical(other.porDocType, porDocType) ||
                other.porDocType == porDocType) &&
            (identical(other.documentCode, documentCode) ||
                other.documentCode == documentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, porDocumentTypeId, porDocType, documentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PORDocumentTypeModelImplCopyWith<_$PORDocumentTypeModelImpl>
      get copyWith =>
          __$$PORDocumentTypeModelImplCopyWithImpl<_$PORDocumentTypeModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PORDocumentTypeModelImplToJson(
      this,
    );
  }
}

abstract class _PORDocumentTypeModel implements PORDocumentTypeModel {
  const factory _PORDocumentTypeModel(
          {@JsonKey(name: "porDocumentTypeId") final int? porDocumentTypeId,
          @JsonKey(name: "porDocType") final String? porDocType,
          @JsonKey(name: "documentCode") final String? documentCode}) =
      _$PORDocumentTypeModelImpl;

  factory _PORDocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$PORDocumentTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "porDocumentTypeId")
  int? get porDocumentTypeId;
  @override
  @JsonKey(name: "porDocType")
  String? get porDocType;
  @override
  @JsonKey(name: "documentCode")
  String? get documentCode;
  @override
  @JsonKey(ignore: true)
  _$$PORDocumentTypeModelImplCopyWith<_$PORDocumentTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
