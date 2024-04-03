// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_document_category_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetDocumentCategoryResponseModel _$GetDocumentCategoryResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetDocumentCategoryResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetDocumentCategoryResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetDocumentCategoryData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDocumentCategoryResponseModelCopyWith<GetDocumentCategoryResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDocumentCategoryResponseModelCopyWith<$Res> {
  factory $GetDocumentCategoryResponseModelCopyWith(
          GetDocumentCategoryResponseModel value,
          $Res Function(GetDocumentCategoryResponseModel) then) =
      _$GetDocumentCategoryResponseModelCopyWithImpl<$Res,
          GetDocumentCategoryResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetDocumentCategoryData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetDocumentCategoryDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetDocumentCategoryResponseModelCopyWithImpl<$Res,
        $Val extends GetDocumentCategoryResponseModel>
    implements $GetDocumentCategoryResponseModelCopyWith<$Res> {
  _$GetDocumentCategoryResponseModelCopyWithImpl(this._value, this._then);

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
              as GetDocumentCategoryData?,
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
  $GetDocumentCategoryDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetDocumentCategoryDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetDocumentCategoryResponseModelImplCopyWith<$Res>
    implements $GetDocumentCategoryResponseModelCopyWith<$Res> {
  factory _$$GetDocumentCategoryResponseModelImplCopyWith(
          _$GetDocumentCategoryResponseModelImpl value,
          $Res Function(_$GetDocumentCategoryResponseModelImpl) then) =
      __$$GetDocumentCategoryResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetDocumentCategoryData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetDocumentCategoryDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetDocumentCategoryResponseModelImplCopyWithImpl<$Res>
    extends _$GetDocumentCategoryResponseModelCopyWithImpl<$Res,
        _$GetDocumentCategoryResponseModelImpl>
    implements _$$GetDocumentCategoryResponseModelImplCopyWith<$Res> {
  __$$GetDocumentCategoryResponseModelImplCopyWithImpl(
      _$GetDocumentCategoryResponseModelImpl _value,
      $Res Function(_$GetDocumentCategoryResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetDocumentCategoryResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetDocumentCategoryData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDocumentCategoryResponseModelImpl
    implements _GetDocumentCategoryResponseModel {
  const _$GetDocumentCategoryResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetDocumentCategoryResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetDocumentCategoryResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetDocumentCategoryData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetDocumentCategoryResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDocumentCategoryResponseModelImpl &&
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
  _$$GetDocumentCategoryResponseModelImplCopyWith<
          _$GetDocumentCategoryResponseModelImpl>
      get copyWith => __$$GetDocumentCategoryResponseModelImplCopyWithImpl<
          _$GetDocumentCategoryResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDocumentCategoryResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetDocumentCategoryResponseModel
    implements GetDocumentCategoryResponseModel {
  const factory _GetDocumentCategoryResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetDocumentCategoryData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetDocumentCategoryResponseModelImpl;

  factory _GetDocumentCategoryResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetDocumentCategoryResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetDocumentCategoryData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetDocumentCategoryResponseModelImplCopyWith<
          _$GetDocumentCategoryResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetDocumentCategoryData _$GetDocumentCategoryDataFromJson(
    Map<String, dynamic> json) {
  return _GetDocumentCategoryData.fromJson(json);
}

/// @nodoc
mixin _$GetDocumentCategoryData {
  @JsonKey(name: "rb")
  List<DocumentCategoryModel>? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDocumentCategoryDataCopyWith<GetDocumentCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDocumentCategoryDataCopyWith<$Res> {
  factory $GetDocumentCategoryDataCopyWith(GetDocumentCategoryData value,
          $Res Function(GetDocumentCategoryData) then) =
      _$GetDocumentCategoryDataCopyWithImpl<$Res, GetDocumentCategoryData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<DocumentCategoryModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$GetDocumentCategoryDataCopyWithImpl<$Res,
        $Val extends GetDocumentCategoryData>
    implements $GetDocumentCategoryDataCopyWith<$Res> {
  _$GetDocumentCategoryDataCopyWithImpl(this._value, this._then);

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
              as List<DocumentCategoryModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDocumentCategoryDataImplCopyWith<$Res>
    implements $GetDocumentCategoryDataCopyWith<$Res> {
  factory _$$GetDocumentCategoryDataImplCopyWith(
          _$GetDocumentCategoryDataImpl value,
          $Res Function(_$GetDocumentCategoryDataImpl) then) =
      __$$GetDocumentCategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<DocumentCategoryModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$GetDocumentCategoryDataImplCopyWithImpl<$Res>
    extends _$GetDocumentCategoryDataCopyWithImpl<$Res,
        _$GetDocumentCategoryDataImpl>
    implements _$$GetDocumentCategoryDataImplCopyWith<$Res> {
  __$$GetDocumentCategoryDataImplCopyWithImpl(
      _$GetDocumentCategoryDataImpl _value,
      $Res Function(_$GetDocumentCategoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetDocumentCategoryDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<DocumentCategoryModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetDocumentCategoryDataImpl implements _GetDocumentCategoryData {
  const _$GetDocumentCategoryDataImpl(
      {@JsonKey(name: "rb") final List<DocumentCategoryModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$GetDocumentCategoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetDocumentCategoryDataImplFromJson(json);

  final List<DocumentCategoryModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<DocumentCategoryModel>? get responseBody {
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
    return 'GetDocumentCategoryData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDocumentCategoryDataImpl &&
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
  _$$GetDocumentCategoryDataImplCopyWith<_$GetDocumentCategoryDataImpl>
      get copyWith => __$$GetDocumentCategoryDataImplCopyWithImpl<
          _$GetDocumentCategoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetDocumentCategoryDataImplToJson(
      this,
    );
  }
}

abstract class _GetDocumentCategoryData implements GetDocumentCategoryData {
  const factory _GetDocumentCategoryData(
          {@JsonKey(name: "rb") final List<DocumentCategoryModel>? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GetDocumentCategoryDataImpl;

  factory _GetDocumentCategoryData.fromJson(Map<String, dynamic> json) =
      _$GetDocumentCategoryDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<DocumentCategoryModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetDocumentCategoryDataImplCopyWith<_$GetDocumentCategoryDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DocumentCategoryModel _$DocumentCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _DocumentCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentCategoryModel {
  @JsonKey(name: "documentCategoryId")
  int? get documentCategoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCategory")
  String? get documentCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "kycTypeId")
  int? get kycTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentCategoryModelCopyWith<DocumentCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentCategoryModelCopyWith<$Res> {
  factory $DocumentCategoryModelCopyWith(DocumentCategoryModel value,
          $Res Function(DocumentCategoryModel) then) =
      _$DocumentCategoryModelCopyWithImpl<$Res, DocumentCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "documentCategoryId") int? documentCategoryId,
      @JsonKey(name: "documentCategory") String? documentCategory,
      @JsonKey(name: "kycTypeId") int? kycTypeId});
}

/// @nodoc
class _$DocumentCategoryModelCopyWithImpl<$Res,
        $Val extends DocumentCategoryModel>
    implements $DocumentCategoryModelCopyWith<$Res> {
  _$DocumentCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentCategoryId = freezed,
    Object? documentCategory = freezed,
    Object? kycTypeId = freezed,
  }) {
    return _then(_value.copyWith(
      documentCategoryId: freezed == documentCategoryId
          ? _value.documentCategoryId
          : documentCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      documentCategory: freezed == documentCategory
          ? _value.documentCategory
          : documentCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      kycTypeId: freezed == kycTypeId
          ? _value.kycTypeId
          : kycTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DocumentCategoryModelImplCopyWith<$Res>
    implements $DocumentCategoryModelCopyWith<$Res> {
  factory _$$DocumentCategoryModelImplCopyWith(
          _$DocumentCategoryModelImpl value,
          $Res Function(_$DocumentCategoryModelImpl) then) =
      __$$DocumentCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "documentCategoryId") int? documentCategoryId,
      @JsonKey(name: "documentCategory") String? documentCategory,
      @JsonKey(name: "kycTypeId") int? kycTypeId});
}

/// @nodoc
class __$$DocumentCategoryModelImplCopyWithImpl<$Res>
    extends _$DocumentCategoryModelCopyWithImpl<$Res,
        _$DocumentCategoryModelImpl>
    implements _$$DocumentCategoryModelImplCopyWith<$Res> {
  __$$DocumentCategoryModelImplCopyWithImpl(_$DocumentCategoryModelImpl _value,
      $Res Function(_$DocumentCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? documentCategoryId = freezed,
    Object? documentCategory = freezed,
    Object? kycTypeId = freezed,
  }) {
    return _then(_$DocumentCategoryModelImpl(
      documentCategoryId: freezed == documentCategoryId
          ? _value.documentCategoryId
          : documentCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      documentCategory: freezed == documentCategory
          ? _value.documentCategory
          : documentCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      kycTypeId: freezed == kycTypeId
          ? _value.kycTypeId
          : kycTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentCategoryModelImpl implements _DocumentCategoryModel {
  const _$DocumentCategoryModelImpl(
      {@JsonKey(name: "documentCategoryId") this.documentCategoryId,
      @JsonKey(name: "documentCategory") this.documentCategory,
      @JsonKey(name: "kycTypeId") this.kycTypeId});

  factory _$DocumentCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: "documentCategoryId")
  final int? documentCategoryId;
  @override
  @JsonKey(name: "documentCategory")
  final String? documentCategory;
  @override
  @JsonKey(name: "kycTypeId")
  final int? kycTypeId;

  @override
  String toString() {
    return 'DocumentCategoryModel(documentCategoryId: $documentCategoryId, documentCategory: $documentCategory, kycTypeId: $kycTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentCategoryModelImpl &&
            (identical(other.documentCategoryId, documentCategoryId) ||
                other.documentCategoryId == documentCategoryId) &&
            (identical(other.documentCategory, documentCategory) ||
                other.documentCategory == documentCategory) &&
            (identical(other.kycTypeId, kycTypeId) ||
                other.kycTypeId == kycTypeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, documentCategoryId, documentCategory, kycTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentCategoryModelImplCopyWith<_$DocumentCategoryModelImpl>
      get copyWith => __$$DocumentCategoryModelImplCopyWithImpl<
          _$DocumentCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _DocumentCategoryModel implements DocumentCategoryModel {
  const factory _DocumentCategoryModel(
          {@JsonKey(name: "documentCategoryId") final int? documentCategoryId,
          @JsonKey(name: "documentCategory") final String? documentCategory,
          @JsonKey(name: "kycTypeId") final int? kycTypeId}) =
      _$DocumentCategoryModelImpl;

  factory _DocumentCategoryModel.fromJson(Map<String, dynamic> json) =
      _$DocumentCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: "documentCategoryId")
  int? get documentCategoryId;
  @override
  @JsonKey(name: "documentCategory")
  String? get documentCategory;
  @override
  @JsonKey(name: "kycTypeId")
  int? get kycTypeId;
  @override
  @JsonKey(ignore: true)
  _$$DocumentCategoryModelImplCopyWith<_$DocumentCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
