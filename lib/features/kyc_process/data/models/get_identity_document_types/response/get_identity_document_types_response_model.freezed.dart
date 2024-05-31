// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_identity_document_types_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetIdentityDocumentTypesResponseModel
    _$GetIdentityDocumentTypesResponseModelFromJson(Map<String, dynamic> json) {
  return _GetIdentityDocumentTypesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetIdentityDocumentTypesResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  IdentityDocumentTypesData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetIdentityDocumentTypesResponseModelCopyWith<
          GetIdentityDocumentTypesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetIdentityDocumentTypesResponseModelCopyWith<$Res> {
  factory $GetIdentityDocumentTypesResponseModelCopyWith(
          GetIdentityDocumentTypesResponseModel value,
          $Res Function(GetIdentityDocumentTypesResponseModel) then) =
      _$GetIdentityDocumentTypesResponseModelCopyWithImpl<$Res,
          GetIdentityDocumentTypesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") IdentityDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $IdentityDocumentTypesDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetIdentityDocumentTypesResponseModelCopyWithImpl<$Res,
        $Val extends GetIdentityDocumentTypesResponseModel>
    implements $GetIdentityDocumentTypesResponseModelCopyWith<$Res> {
  _$GetIdentityDocumentTypesResponseModelCopyWithImpl(this._value, this._then);

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
              as IdentityDocumentTypesData?,
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
  $IdentityDocumentTypesDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $IdentityDocumentTypesDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetIdentityDocumentTypesResponseModelImplCopyWith<$Res>
    implements $GetIdentityDocumentTypesResponseModelCopyWith<$Res> {
  factory _$$GetIdentityDocumentTypesResponseModelImplCopyWith(
          _$GetIdentityDocumentTypesResponseModelImpl value,
          $Res Function(_$GetIdentityDocumentTypesResponseModelImpl) then) =
      __$$GetIdentityDocumentTypesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") IdentityDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $IdentityDocumentTypesDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetIdentityDocumentTypesResponseModelImplCopyWithImpl<$Res>
    extends _$GetIdentityDocumentTypesResponseModelCopyWithImpl<$Res,
        _$GetIdentityDocumentTypesResponseModelImpl>
    implements _$$GetIdentityDocumentTypesResponseModelImplCopyWith<$Res> {
  __$$GetIdentityDocumentTypesResponseModelImplCopyWithImpl(
      _$GetIdentityDocumentTypesResponseModelImpl _value,
      $Res Function(_$GetIdentityDocumentTypesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetIdentityDocumentTypesResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as IdentityDocumentTypesData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetIdentityDocumentTypesResponseModelImpl
    implements _GetIdentityDocumentTypesResponseModel {
  const _$GetIdentityDocumentTypesResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetIdentityDocumentTypesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetIdentityDocumentTypesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final IdentityDocumentTypesData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetIdentityDocumentTypesResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetIdentityDocumentTypesResponseModelImpl &&
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
  _$$GetIdentityDocumentTypesResponseModelImplCopyWith<
          _$GetIdentityDocumentTypesResponseModelImpl>
      get copyWith => __$$GetIdentityDocumentTypesResponseModelImplCopyWithImpl<
          _$GetIdentityDocumentTypesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetIdentityDocumentTypesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetIdentityDocumentTypesResponseModel
    implements GetIdentityDocumentTypesResponseModel {
  const factory _GetIdentityDocumentTypesResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final IdentityDocumentTypesData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetIdentityDocumentTypesResponseModelImpl;

  factory _GetIdentityDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetIdentityDocumentTypesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  IdentityDocumentTypesData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetIdentityDocumentTypesResponseModelImplCopyWith<
          _$GetIdentityDocumentTypesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IdentityDocumentTypesData _$IdentityDocumentTypesDataFromJson(
    Map<String, dynamic> json) {
  return _IdentityDocumentTypesData.fromJson(json);
}

/// @nodoc
mixin _$IdentityDocumentTypesData {
  @JsonKey(name: "rb")
  List<IdentityDocumentTypeModel>? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityDocumentTypesDataCopyWith<IdentityDocumentTypesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityDocumentTypesDataCopyWith<$Res> {
  factory $IdentityDocumentTypesDataCopyWith(IdentityDocumentTypesData value,
          $Res Function(IdentityDocumentTypesData) then) =
      _$IdentityDocumentTypesDataCopyWithImpl<$Res, IdentityDocumentTypesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<IdentityDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$IdentityDocumentTypesDataCopyWithImpl<$Res,
        $Val extends IdentityDocumentTypesData>
    implements $IdentityDocumentTypesDataCopyWith<$Res> {
  _$IdentityDocumentTypesDataCopyWithImpl(this._value, this._then);

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
              as List<IdentityDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentityDocumentTypesDataImplCopyWith<$Res>
    implements $IdentityDocumentTypesDataCopyWith<$Res> {
  factory _$$IdentityDocumentTypesDataImplCopyWith(
          _$IdentityDocumentTypesDataImpl value,
          $Res Function(_$IdentityDocumentTypesDataImpl) then) =
      __$$IdentityDocumentTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<IdentityDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$IdentityDocumentTypesDataImplCopyWithImpl<$Res>
    extends _$IdentityDocumentTypesDataCopyWithImpl<$Res,
        _$IdentityDocumentTypesDataImpl>
    implements _$$IdentityDocumentTypesDataImplCopyWith<$Res> {
  __$$IdentityDocumentTypesDataImplCopyWithImpl(
      _$IdentityDocumentTypesDataImpl _value,
      $Res Function(_$IdentityDocumentTypesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$IdentityDocumentTypesDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<IdentityDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentityDocumentTypesDataImpl implements _IdentityDocumentTypesData {
  const _$IdentityDocumentTypesDataImpl(
      {@JsonKey(name: "rb") final List<IdentityDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$IdentityDocumentTypesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityDocumentTypesDataImplFromJson(json);

  final List<IdentityDocumentTypeModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<IdentityDocumentTypeModel>? get responseBody {
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
    return 'IdentityDocumentTypesData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityDocumentTypesDataImpl &&
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
  _$$IdentityDocumentTypesDataImplCopyWith<_$IdentityDocumentTypesDataImpl>
      get copyWith => __$$IdentityDocumentTypesDataImplCopyWithImpl<
          _$IdentityDocumentTypesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityDocumentTypesDataImplToJson(
      this,
    );
  }
}

abstract class _IdentityDocumentTypesData implements IdentityDocumentTypesData {
  const factory _IdentityDocumentTypesData(
      {@JsonKey(name: "rb") final List<IdentityDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum")
      final String? checkSum}) = _$IdentityDocumentTypesDataImpl;

  factory _IdentityDocumentTypesData.fromJson(Map<String, dynamic> json) =
      _$IdentityDocumentTypesDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<IdentityDocumentTypeModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$IdentityDocumentTypesDataImplCopyWith<_$IdentityDocumentTypesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

IdentityDocumentTypeModel _$IdentityDocumentTypeModelFromJson(
    Map<String, dynamic> json) {
  return _IdentityDocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$IdentityDocumentTypeModel {
  @JsonKey(name: "identityDocumentTypeId")
  int? get identityDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "identityDocType")
  String? get identityDocType => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCode")
  String? get documentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityDocumentTypeModelCopyWith<IdentityDocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityDocumentTypeModelCopyWith<$Res> {
  factory $IdentityDocumentTypeModelCopyWith(IdentityDocumentTypeModel value,
          $Res Function(IdentityDocumentTypeModel) then) =
      _$IdentityDocumentTypeModelCopyWithImpl<$Res, IdentityDocumentTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "identityDocumentTypeId") int? identityDocumentTypeId,
      @JsonKey(name: "identityDocType") String? identityDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class _$IdentityDocumentTypeModelCopyWithImpl<$Res,
        $Val extends IdentityDocumentTypeModel>
    implements $IdentityDocumentTypeModelCopyWith<$Res> {
  _$IdentityDocumentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityDocumentTypeId = freezed,
    Object? identityDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_value.copyWith(
      identityDocumentTypeId: freezed == identityDocumentTypeId
          ? _value.identityDocumentTypeId
          : identityDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      identityDocType: freezed == identityDocType
          ? _value.identityDocType
          : identityDocType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCode: freezed == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentityDocumentTypeModelImplCopyWith<$Res>
    implements $IdentityDocumentTypeModelCopyWith<$Res> {
  factory _$$IdentityDocumentTypeModelImplCopyWith(
          _$IdentityDocumentTypeModelImpl value,
          $Res Function(_$IdentityDocumentTypeModelImpl) then) =
      __$$IdentityDocumentTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "identityDocumentTypeId") int? identityDocumentTypeId,
      @JsonKey(name: "identityDocType") String? identityDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class __$$IdentityDocumentTypeModelImplCopyWithImpl<$Res>
    extends _$IdentityDocumentTypeModelCopyWithImpl<$Res,
        _$IdentityDocumentTypeModelImpl>
    implements _$$IdentityDocumentTypeModelImplCopyWith<$Res> {
  __$$IdentityDocumentTypeModelImplCopyWithImpl(
      _$IdentityDocumentTypeModelImpl _value,
      $Res Function(_$IdentityDocumentTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityDocumentTypeId = freezed,
    Object? identityDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_$IdentityDocumentTypeModelImpl(
      identityDocumentTypeId: freezed == identityDocumentTypeId
          ? _value.identityDocumentTypeId
          : identityDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      identityDocType: freezed == identityDocType
          ? _value.identityDocType
          : identityDocType // ignore: cast_nullable_to_non_nullable
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
class _$IdentityDocumentTypeModelImpl implements _IdentityDocumentTypeModel {
  const _$IdentityDocumentTypeModelImpl(
      {@JsonKey(name: "identityDocumentTypeId") this.identityDocumentTypeId,
      @JsonKey(name: "identityDocType") this.identityDocType,
      @JsonKey(name: "documentCode") this.documentCode});

  factory _$IdentityDocumentTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityDocumentTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "identityDocumentTypeId")
  final int? identityDocumentTypeId;
  @override
  @JsonKey(name: "identityDocType")
  final String? identityDocType;
  @override
  @JsonKey(name: "documentCode")
  final String? documentCode;

  @override
  String toString() {
    return 'IdentityDocumentTypeModel(identityDocumentTypeId: $identityDocumentTypeId, identityDocType: $identityDocType, documentCode: $documentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityDocumentTypeModelImpl &&
            (identical(other.identityDocumentTypeId, identityDocumentTypeId) ||
                other.identityDocumentTypeId == identityDocumentTypeId) &&
            (identical(other.identityDocType, identityDocType) ||
                other.identityDocType == identityDocType) &&
            (identical(other.documentCode, documentCode) ||
                other.documentCode == documentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, identityDocumentTypeId, identityDocType, documentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentityDocumentTypeModelImplCopyWith<_$IdentityDocumentTypeModelImpl>
      get copyWith => __$$IdentityDocumentTypeModelImplCopyWithImpl<
          _$IdentityDocumentTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityDocumentTypeModelImplToJson(
      this,
    );
  }
}

abstract class _IdentityDocumentTypeModel implements IdentityDocumentTypeModel {
  const factory _IdentityDocumentTypeModel(
          {@JsonKey(name: "identityDocumentTypeId")
          final int? identityDocumentTypeId,
          @JsonKey(name: "identityDocType") final String? identityDocType,
          @JsonKey(name: "documentCode") final String? documentCode}) =
      _$IdentityDocumentTypeModelImpl;

  factory _IdentityDocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$IdentityDocumentTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "identityDocumentTypeId")
  int? get identityDocumentTypeId;
  @override
  @JsonKey(name: "identityDocType")
  String? get identityDocType;
  @override
  @JsonKey(name: "documentCode")
  String? get documentCode;
  @override
  @JsonKey(ignore: true)
  _$$IdentityDocumentTypeModelImplCopyWith<_$IdentityDocumentTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
