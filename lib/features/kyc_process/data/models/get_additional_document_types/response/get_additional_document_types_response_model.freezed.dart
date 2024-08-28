// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_additional_document_types_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAdditionalDocumentTypesResponseModel
    _$GetAdditionalDocumentTypesResponseModelFromJson(
        Map<String, dynamic> json) {
  return _GetAdditionalDocumentTypesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAdditionalDocumentTypesResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetAdditionalDocumentTypesData? get body =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAdditionalDocumentTypesResponseModelCopyWith<
          GetAdditionalDocumentTypesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdditionalDocumentTypesResponseModelCopyWith<$Res> {
  factory $GetAdditionalDocumentTypesResponseModelCopyWith(
          GetAdditionalDocumentTypesResponseModel value,
          $Res Function(GetAdditionalDocumentTypesResponseModel) then) =
      _$GetAdditionalDocumentTypesResponseModelCopyWithImpl<$Res,
          GetAdditionalDocumentTypesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetAdditionalDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetAdditionalDocumentTypesDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetAdditionalDocumentTypesResponseModelCopyWithImpl<$Res,
        $Val extends GetAdditionalDocumentTypesResponseModel>
    implements $GetAdditionalDocumentTypesResponseModelCopyWith<$Res> {
  _$GetAdditionalDocumentTypesResponseModelCopyWithImpl(
      this._value, this._then);

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
              as GetAdditionalDocumentTypesData?,
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
  $GetAdditionalDocumentTypesDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetAdditionalDocumentTypesDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetAdditionalDocumentTypesResponseModelImplCopyWith<$Res>
    implements $GetAdditionalDocumentTypesResponseModelCopyWith<$Res> {
  factory _$$GetAdditionalDocumentTypesResponseModelImplCopyWith(
          _$GetAdditionalDocumentTypesResponseModelImpl value,
          $Res Function(_$GetAdditionalDocumentTypesResponseModelImpl) then) =
      __$$GetAdditionalDocumentTypesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetAdditionalDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetAdditionalDocumentTypesDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetAdditionalDocumentTypesResponseModelImplCopyWithImpl<$Res>
    extends _$GetAdditionalDocumentTypesResponseModelCopyWithImpl<$Res,
        _$GetAdditionalDocumentTypesResponseModelImpl>
    implements _$$GetAdditionalDocumentTypesResponseModelImplCopyWith<$Res> {
  __$$GetAdditionalDocumentTypesResponseModelImplCopyWithImpl(
      _$GetAdditionalDocumentTypesResponseModelImpl _value,
      $Res Function(_$GetAdditionalDocumentTypesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetAdditionalDocumentTypesResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetAdditionalDocumentTypesData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAdditionalDocumentTypesResponseModelImpl
    implements _GetAdditionalDocumentTypesResponseModel {
  const _$GetAdditionalDocumentTypesResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetAdditionalDocumentTypesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAdditionalDocumentTypesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetAdditionalDocumentTypesData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetAdditionalDocumentTypesResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdditionalDocumentTypesResponseModelImpl &&
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
  _$$GetAdditionalDocumentTypesResponseModelImplCopyWith<
          _$GetAdditionalDocumentTypesResponseModelImpl>
      get copyWith =>
          __$$GetAdditionalDocumentTypesResponseModelImplCopyWithImpl<
              _$GetAdditionalDocumentTypesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdditionalDocumentTypesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAdditionalDocumentTypesResponseModel
    implements GetAdditionalDocumentTypesResponseModel {
  const factory _GetAdditionalDocumentTypesResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetAdditionalDocumentTypesData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetAdditionalDocumentTypesResponseModelImpl;

  factory _GetAdditionalDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAdditionalDocumentTypesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetAdditionalDocumentTypesData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetAdditionalDocumentTypesResponseModelImplCopyWith<
          _$GetAdditionalDocumentTypesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAdditionalDocumentTypesData _$GetAdditionalDocumentTypesDataFromJson(
    Map<String, dynamic> json) {
  return _GetAdditionalDocumentTypesData.fromJson(json);
}

/// @nodoc
mixin _$GetAdditionalDocumentTypesData {
  @JsonKey(name: "rb")
  List<AdditionalDocumentTypeModel>? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAdditionalDocumentTypesDataCopyWith<GetAdditionalDocumentTypesData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAdditionalDocumentTypesDataCopyWith<$Res> {
  factory $GetAdditionalDocumentTypesDataCopyWith(
          GetAdditionalDocumentTypesData value,
          $Res Function(GetAdditionalDocumentTypesData) then) =
      _$GetAdditionalDocumentTypesDataCopyWithImpl<$Res,
          GetAdditionalDocumentTypesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<AdditionalDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$GetAdditionalDocumentTypesDataCopyWithImpl<$Res,
        $Val extends GetAdditionalDocumentTypesData>
    implements $GetAdditionalDocumentTypesDataCopyWith<$Res> {
  _$GetAdditionalDocumentTypesDataCopyWithImpl(this._value, this._then);

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
              as List<AdditionalDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAdditionalDocumentTypesDataImplCopyWith<$Res>
    implements $GetAdditionalDocumentTypesDataCopyWith<$Res> {
  factory _$$GetAdditionalDocumentTypesDataImplCopyWith(
          _$GetAdditionalDocumentTypesDataImpl value,
          $Res Function(_$GetAdditionalDocumentTypesDataImpl) then) =
      __$$GetAdditionalDocumentTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<AdditionalDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$GetAdditionalDocumentTypesDataImplCopyWithImpl<$Res>
    extends _$GetAdditionalDocumentTypesDataCopyWithImpl<$Res,
        _$GetAdditionalDocumentTypesDataImpl>
    implements _$$GetAdditionalDocumentTypesDataImplCopyWith<$Res> {
  __$$GetAdditionalDocumentTypesDataImplCopyWithImpl(
      _$GetAdditionalDocumentTypesDataImpl _value,
      $Res Function(_$GetAdditionalDocumentTypesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetAdditionalDocumentTypesDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<AdditionalDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAdditionalDocumentTypesDataImpl
    implements _GetAdditionalDocumentTypesData {
  const _$GetAdditionalDocumentTypesDataImpl(
      {@JsonKey(name: "rb")
      final List<AdditionalDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$GetAdditionalDocumentTypesDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAdditionalDocumentTypesDataImplFromJson(json);

  final List<AdditionalDocumentTypeModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<AdditionalDocumentTypeModel>? get responseBody {
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
    return 'GetAdditionalDocumentTypesData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAdditionalDocumentTypesDataImpl &&
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
  _$$GetAdditionalDocumentTypesDataImplCopyWith<
          _$GetAdditionalDocumentTypesDataImpl>
      get copyWith => __$$GetAdditionalDocumentTypesDataImplCopyWithImpl<
          _$GetAdditionalDocumentTypesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAdditionalDocumentTypesDataImplToJson(
      this,
    );
  }
}

abstract class _GetAdditionalDocumentTypesData
    implements GetAdditionalDocumentTypesData {
  const factory _GetAdditionalDocumentTypesData(
          {@JsonKey(name: "rb")
          final List<AdditionalDocumentTypeModel>? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GetAdditionalDocumentTypesDataImpl;

  factory _GetAdditionalDocumentTypesData.fromJson(Map<String, dynamic> json) =
      _$GetAdditionalDocumentTypesDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<AdditionalDocumentTypeModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetAdditionalDocumentTypesDataImplCopyWith<
          _$GetAdditionalDocumentTypesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdditionalDocumentTypeModel _$AdditionalDocumentTypeModelFromJson(
    Map<String, dynamic> json) {
  return _AdditionalDocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$AdditionalDocumentTypeModel {
  @JsonKey(name: "additionalDoumentTypeId")
  int? get additionalDoumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDoumentTypeName")
  String? get additionalDoumentTypeName => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCode")
  String? get documentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalDocumentTypeModelCopyWith<AdditionalDocumentTypeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalDocumentTypeModelCopyWith<$Res> {
  factory $AdditionalDocumentTypeModelCopyWith(
          AdditionalDocumentTypeModel value,
          $Res Function(AdditionalDocumentTypeModel) then) =
      _$AdditionalDocumentTypeModelCopyWithImpl<$Res,
          AdditionalDocumentTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "additionalDoumentTypeId") int? additionalDoumentTypeId,
      @JsonKey(name: "additionalDoumentTypeName")
      String? additionalDoumentTypeName,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class _$AdditionalDocumentTypeModelCopyWithImpl<$Res,
        $Val extends AdditionalDocumentTypeModel>
    implements $AdditionalDocumentTypeModelCopyWith<$Res> {
  _$AdditionalDocumentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalDoumentTypeId = freezed,
    Object? additionalDoumentTypeName = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_value.copyWith(
      additionalDoumentTypeId: freezed == additionalDoumentTypeId
          ? _value.additionalDoumentTypeId
          : additionalDoumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDoumentTypeName: freezed == additionalDoumentTypeName
          ? _value.additionalDoumentTypeName
          : additionalDoumentTypeName // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCode: freezed == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalDocumentTypeModelImplCopyWith<$Res>
    implements $AdditionalDocumentTypeModelCopyWith<$Res> {
  factory _$$AdditionalDocumentTypeModelImplCopyWith(
          _$AdditionalDocumentTypeModelImpl value,
          $Res Function(_$AdditionalDocumentTypeModelImpl) then) =
      __$$AdditionalDocumentTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "additionalDoumentTypeId") int? additionalDoumentTypeId,
      @JsonKey(name: "additionalDoumentTypeName")
      String? additionalDoumentTypeName,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class __$$AdditionalDocumentTypeModelImplCopyWithImpl<$Res>
    extends _$AdditionalDocumentTypeModelCopyWithImpl<$Res,
        _$AdditionalDocumentTypeModelImpl>
    implements _$$AdditionalDocumentTypeModelImplCopyWith<$Res> {
  __$$AdditionalDocumentTypeModelImplCopyWithImpl(
      _$AdditionalDocumentTypeModelImpl _value,
      $Res Function(_$AdditionalDocumentTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalDoumentTypeId = freezed,
    Object? additionalDoumentTypeName = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_$AdditionalDocumentTypeModelImpl(
      additionalDoumentTypeId: freezed == additionalDoumentTypeId
          ? _value.additionalDoumentTypeId
          : additionalDoumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDoumentTypeName: freezed == additionalDoumentTypeName
          ? _value.additionalDoumentTypeName
          : additionalDoumentTypeName // ignore: cast_nullable_to_non_nullable
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
class _$AdditionalDocumentTypeModelImpl
    implements _AdditionalDocumentTypeModel {
  const _$AdditionalDocumentTypeModelImpl(
      {@JsonKey(name: "additionalDoumentTypeId") this.additionalDoumentTypeId,
      @JsonKey(name: "additionalDoumentTypeName")
      this.additionalDoumentTypeName,
      @JsonKey(name: "documentCode") this.documentCode});

  factory _$AdditionalDocumentTypeModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdditionalDocumentTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "additionalDoumentTypeId")
  final int? additionalDoumentTypeId;
  @override
  @JsonKey(name: "additionalDoumentTypeName")
  final String? additionalDoumentTypeName;
  @override
  @JsonKey(name: "documentCode")
  final String? documentCode;

  @override
  String toString() {
    return 'AdditionalDocumentTypeModel(additionalDoumentTypeId: $additionalDoumentTypeId, additionalDoumentTypeName: $additionalDoumentTypeName, documentCode: $documentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalDocumentTypeModelImpl &&
            (identical(
                    other.additionalDoumentTypeId, additionalDoumentTypeId) ||
                other.additionalDoumentTypeId == additionalDoumentTypeId) &&
            (identical(other.additionalDoumentTypeName,
                    additionalDoumentTypeName) ||
                other.additionalDoumentTypeName == additionalDoumentTypeName) &&
            (identical(other.documentCode, documentCode) ||
                other.documentCode == documentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, additionalDoumentTypeId,
      additionalDoumentTypeName, documentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalDocumentTypeModelImplCopyWith<_$AdditionalDocumentTypeModelImpl>
      get copyWith => __$$AdditionalDocumentTypeModelImplCopyWithImpl<
          _$AdditionalDocumentTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalDocumentTypeModelImplToJson(
      this,
    );
  }
}

abstract class _AdditionalDocumentTypeModel
    implements AdditionalDocumentTypeModel {
  const factory _AdditionalDocumentTypeModel(
          {@JsonKey(name: "additionalDoumentTypeId")
          final int? additionalDoumentTypeId,
          @JsonKey(name: "additionalDoumentTypeName")
          final String? additionalDoumentTypeName,
          @JsonKey(name: "documentCode") final String? documentCode}) =
      _$AdditionalDocumentTypeModelImpl;

  factory _AdditionalDocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$AdditionalDocumentTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "additionalDoumentTypeId")
  int? get additionalDoumentTypeId;
  @override
  @JsonKey(name: "additionalDoumentTypeName")
  String? get additionalDoumentTypeName;
  @override
  @JsonKey(name: "documentCode")
  String? get documentCode;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalDocumentTypeModelImplCopyWith<_$AdditionalDocumentTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
