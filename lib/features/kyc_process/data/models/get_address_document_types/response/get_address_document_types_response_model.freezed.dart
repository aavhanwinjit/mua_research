// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_address_document_types_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAddressDocumentTypesResponseModel
    _$GetAddressDocumentTypesResponseModelFromJson(Map<String, dynamic> json) {
  return _GetAddressDocumentTypesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAddressDocumentTypesResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  AddressDocumentTypesData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAddressDocumentTypesResponseModelCopyWith<
          GetAddressDocumentTypesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAddressDocumentTypesResponseModelCopyWith<$Res> {
  factory $GetAddressDocumentTypesResponseModelCopyWith(
          GetAddressDocumentTypesResponseModel value,
          $Res Function(GetAddressDocumentTypesResponseModel) then) =
      _$GetAddressDocumentTypesResponseModelCopyWithImpl<$Res,
          GetAddressDocumentTypesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") AddressDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $AddressDocumentTypesDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetAddressDocumentTypesResponseModelCopyWithImpl<$Res,
        $Val extends GetAddressDocumentTypesResponseModel>
    implements $GetAddressDocumentTypesResponseModelCopyWith<$Res> {
  _$GetAddressDocumentTypesResponseModelCopyWithImpl(this._value, this._then);

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
              as AddressDocumentTypesData?,
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
  $AddressDocumentTypesDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $AddressDocumentTypesDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetAddressDocumentTypesResponseModelImplCopyWith<$Res>
    implements $GetAddressDocumentTypesResponseModelCopyWith<$Res> {
  factory _$$GetAddressDocumentTypesResponseModelImplCopyWith(
          _$GetAddressDocumentTypesResponseModelImpl value,
          $Res Function(_$GetAddressDocumentTypesResponseModelImpl) then) =
      __$$GetAddressDocumentTypesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") AddressDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $AddressDocumentTypesDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetAddressDocumentTypesResponseModelImplCopyWithImpl<$Res>
    extends _$GetAddressDocumentTypesResponseModelCopyWithImpl<$Res,
        _$GetAddressDocumentTypesResponseModelImpl>
    implements _$$GetAddressDocumentTypesResponseModelImplCopyWith<$Res> {
  __$$GetAddressDocumentTypesResponseModelImplCopyWithImpl(
      _$GetAddressDocumentTypesResponseModelImpl _value,
      $Res Function(_$GetAddressDocumentTypesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetAddressDocumentTypesResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AddressDocumentTypesData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAddressDocumentTypesResponseModelImpl
    implements _GetAddressDocumentTypesResponseModel {
  const _$GetAddressDocumentTypesResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetAddressDocumentTypesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAddressDocumentTypesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final AddressDocumentTypesData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetAddressDocumentTypesResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAddressDocumentTypesResponseModelImpl &&
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
  _$$GetAddressDocumentTypesResponseModelImplCopyWith<
          _$GetAddressDocumentTypesResponseModelImpl>
      get copyWith => __$$GetAddressDocumentTypesResponseModelImplCopyWithImpl<
          _$GetAddressDocumentTypesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAddressDocumentTypesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAddressDocumentTypesResponseModel
    implements GetAddressDocumentTypesResponseModel {
  const factory _GetAddressDocumentTypesResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final AddressDocumentTypesData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetAddressDocumentTypesResponseModelImpl;

  factory _GetAddressDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAddressDocumentTypesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  AddressDocumentTypesData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetAddressDocumentTypesResponseModelImplCopyWith<
          _$GetAddressDocumentTypesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddressDocumentTypesData _$AddressDocumentTypesDataFromJson(
    Map<String, dynamic> json) {
  return _AddressDocumentTypesData.fromJson(json);
}

/// @nodoc
mixin _$AddressDocumentTypesData {
  @JsonKey(name: "rb")
  List<AddressDocumentTypeModel>? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDocumentTypesDataCopyWith<AddressDocumentTypesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDocumentTypesDataCopyWith<$Res> {
  factory $AddressDocumentTypesDataCopyWith(AddressDocumentTypesData value,
          $Res Function(AddressDocumentTypesData) then) =
      _$AddressDocumentTypesDataCopyWithImpl<$Res, AddressDocumentTypesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<AddressDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$AddressDocumentTypesDataCopyWithImpl<$Res,
        $Val extends AddressDocumentTypesData>
    implements $AddressDocumentTypesDataCopyWith<$Res> {
  _$AddressDocumentTypesDataCopyWithImpl(this._value, this._then);

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
              as List<AddressDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDocumentTypesDataImplCopyWith<$Res>
    implements $AddressDocumentTypesDataCopyWith<$Res> {
  factory _$$AddressDocumentTypesDataImplCopyWith(
          _$AddressDocumentTypesDataImpl value,
          $Res Function(_$AddressDocumentTypesDataImpl) then) =
      __$$AddressDocumentTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<AddressDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$AddressDocumentTypesDataImplCopyWithImpl<$Res>
    extends _$AddressDocumentTypesDataCopyWithImpl<$Res,
        _$AddressDocumentTypesDataImpl>
    implements _$$AddressDocumentTypesDataImplCopyWith<$Res> {
  __$$AddressDocumentTypesDataImplCopyWithImpl(
      _$AddressDocumentTypesDataImpl _value,
      $Res Function(_$AddressDocumentTypesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$AddressDocumentTypesDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<AddressDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDocumentTypesDataImpl implements _AddressDocumentTypesData {
  const _$AddressDocumentTypesDataImpl(
      {@JsonKey(name: "rb") final List<AddressDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$AddressDocumentTypesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDocumentTypesDataImplFromJson(json);

  final List<AddressDocumentTypeModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<AddressDocumentTypeModel>? get responseBody {
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
    return 'AddressDocumentTypesData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDocumentTypesDataImpl &&
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
  _$$AddressDocumentTypesDataImplCopyWith<_$AddressDocumentTypesDataImpl>
      get copyWith => __$$AddressDocumentTypesDataImplCopyWithImpl<
          _$AddressDocumentTypesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDocumentTypesDataImplToJson(
      this,
    );
  }
}

abstract class _AddressDocumentTypesData implements AddressDocumentTypesData {
  const factory _AddressDocumentTypesData(
      {@JsonKey(name: "rb") final List<AddressDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum")
      final String? checkSum}) = _$AddressDocumentTypesDataImpl;

  factory _AddressDocumentTypesData.fromJson(Map<String, dynamic> json) =
      _$AddressDocumentTypesDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<AddressDocumentTypeModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$AddressDocumentTypesDataImplCopyWith<_$AddressDocumentTypesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddressDocumentTypeModel _$AddressDocumentTypeModelFromJson(
    Map<String, dynamic> json) {
  return _AddressDocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$AddressDocumentTypeModel {
  @JsonKey(name: "addressDocumentTypeId")
  int? get addressDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocType")
  String? get addressDocType => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCode")
  String? get documentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDocumentTypeModelCopyWith<AddressDocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDocumentTypeModelCopyWith<$Res> {
  factory $AddressDocumentTypeModelCopyWith(AddressDocumentTypeModel value,
          $Res Function(AddressDocumentTypeModel) then) =
      _$AddressDocumentTypeModelCopyWithImpl<$Res, AddressDocumentTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
      @JsonKey(name: "addressDocType") String? addressDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class _$AddressDocumentTypeModelCopyWithImpl<$Res,
        $Val extends AddressDocumentTypeModel>
    implements $AddressDocumentTypeModelCopyWith<$Res> {
  _$AddressDocumentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressDocumentTypeId = freezed,
    Object? addressDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_value.copyWith(
      addressDocumentTypeId: freezed == addressDocumentTypeId
          ? _value.addressDocumentTypeId
          : addressDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      addressDocType: freezed == addressDocType
          ? _value.addressDocType
          : addressDocType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCode: freezed == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressDocumentTypeModelImplCopyWith<$Res>
    implements $AddressDocumentTypeModelCopyWith<$Res> {
  factory _$$AddressDocumentTypeModelImplCopyWith(
          _$AddressDocumentTypeModelImpl value,
          $Res Function(_$AddressDocumentTypeModelImpl) then) =
      __$$AddressDocumentTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
      @JsonKey(name: "addressDocType") String? addressDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class __$$AddressDocumentTypeModelImplCopyWithImpl<$Res>
    extends _$AddressDocumentTypeModelCopyWithImpl<$Res,
        _$AddressDocumentTypeModelImpl>
    implements _$$AddressDocumentTypeModelImplCopyWith<$Res> {
  __$$AddressDocumentTypeModelImplCopyWithImpl(
      _$AddressDocumentTypeModelImpl _value,
      $Res Function(_$AddressDocumentTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressDocumentTypeId = freezed,
    Object? addressDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_$AddressDocumentTypeModelImpl(
      addressDocumentTypeId: freezed == addressDocumentTypeId
          ? _value.addressDocumentTypeId
          : addressDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      addressDocType: freezed == addressDocType
          ? _value.addressDocType
          : addressDocType // ignore: cast_nullable_to_non_nullable
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
class _$AddressDocumentTypeModelImpl implements _AddressDocumentTypeModel {
  const _$AddressDocumentTypeModelImpl(
      {@JsonKey(name: "addressDocumentTypeId") this.addressDocumentTypeId,
      @JsonKey(name: "addressDocType") this.addressDocType,
      @JsonKey(name: "documentCode") this.documentCode});

  factory _$AddressDocumentTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDocumentTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "addressDocumentTypeId")
  final int? addressDocumentTypeId;
  @override
  @JsonKey(name: "addressDocType")
  final String? addressDocType;
  @override
  @JsonKey(name: "documentCode")
  final String? documentCode;

  @override
  String toString() {
    return 'AddressDocumentTypeModel(addressDocumentTypeId: $addressDocumentTypeId, addressDocType: $addressDocType, documentCode: $documentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDocumentTypeModelImpl &&
            (identical(other.addressDocumentTypeId, addressDocumentTypeId) ||
                other.addressDocumentTypeId == addressDocumentTypeId) &&
            (identical(other.addressDocType, addressDocType) ||
                other.addressDocType == addressDocType) &&
            (identical(other.documentCode, documentCode) ||
                other.documentCode == documentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, addressDocumentTypeId, addressDocType, documentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDocumentTypeModelImplCopyWith<_$AddressDocumentTypeModelImpl>
      get copyWith => __$$AddressDocumentTypeModelImplCopyWithImpl<
          _$AddressDocumentTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDocumentTypeModelImplToJson(
      this,
    );
  }
}

abstract class _AddressDocumentTypeModel implements AddressDocumentTypeModel {
  const factory _AddressDocumentTypeModel(
      {@JsonKey(name: "addressDocumentTypeId") final int? addressDocumentTypeId,
      @JsonKey(name: "addressDocType") final String? addressDocType,
      @JsonKey(name: "documentCode")
      final String? documentCode}) = _$AddressDocumentTypeModelImpl;

  factory _AddressDocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$AddressDocumentTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "addressDocumentTypeId")
  int? get addressDocumentTypeId;
  @override
  @JsonKey(name: "addressDocType")
  String? get addressDocType;
  @override
  @JsonKey(name: "documentCode")
  String? get documentCode;
  @override
  @JsonKey(ignore: true)
  _$$AddressDocumentTypeModelImplCopyWith<_$AddressDocumentTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
