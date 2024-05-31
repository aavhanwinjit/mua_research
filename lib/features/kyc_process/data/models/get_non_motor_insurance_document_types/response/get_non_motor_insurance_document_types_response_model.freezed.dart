// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_non_motor_insurance_document_types_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetNonMotorInsuranceDocumentTypesResponseModel
    _$GetNonMotorInsuranceDocumentTypesResponseModelFromJson(
        Map<String, dynamic> json) {
  return _GetNonMotorInsuranceDocumentTypesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetNonMotorInsuranceDocumentTypesResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetNonMotorInsuranceDocumentTypesData? get body =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNonMotorInsuranceDocumentTypesResponseModelCopyWith<
          GetNonMotorInsuranceDocumentTypesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNonMotorInsuranceDocumentTypesResponseModelCopyWith<$Res> {
  factory $GetNonMotorInsuranceDocumentTypesResponseModelCopyWith(
          GetNonMotorInsuranceDocumentTypesResponseModel value,
          $Res Function(GetNonMotorInsuranceDocumentTypesResponseModel) then) =
      _$GetNonMotorInsuranceDocumentTypesResponseModelCopyWithImpl<$Res,
          GetNonMotorInsuranceDocumentTypesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetNonMotorInsuranceDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetNonMotorInsuranceDocumentTypesDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetNonMotorInsuranceDocumentTypesResponseModelCopyWithImpl<$Res,
        $Val extends GetNonMotorInsuranceDocumentTypesResponseModel>
    implements $GetNonMotorInsuranceDocumentTypesResponseModelCopyWith<$Res> {
  _$GetNonMotorInsuranceDocumentTypesResponseModelCopyWithImpl(
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
              as GetNonMotorInsuranceDocumentTypesData?,
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
  $GetNonMotorInsuranceDocumentTypesDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetNonMotorInsuranceDocumentTypesDataCopyWith<$Res>(_value.body!,
        (value) {
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
abstract class _$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWith<
        $Res>
    implements $GetNonMotorInsuranceDocumentTypesResponseModelCopyWith<$Res> {
  factory _$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWith(
          _$GetNonMotorInsuranceDocumentTypesResponseModelImpl value,
          $Res Function(_$GetNonMotorInsuranceDocumentTypesResponseModelImpl)
              then) =
      __$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetNonMotorInsuranceDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetNonMotorInsuranceDocumentTypesDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWithImpl<$Res>
    extends _$GetNonMotorInsuranceDocumentTypesResponseModelCopyWithImpl<$Res,
        _$GetNonMotorInsuranceDocumentTypesResponseModelImpl>
    implements
        _$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWith<$Res> {
  __$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWithImpl(
      _$GetNonMotorInsuranceDocumentTypesResponseModelImpl _value,
      $Res Function(_$GetNonMotorInsuranceDocumentTypesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetNonMotorInsuranceDocumentTypesResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetNonMotorInsuranceDocumentTypesData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNonMotorInsuranceDocumentTypesResponseModelImpl
    implements _GetNonMotorInsuranceDocumentTypesResponseModel {
  const _$GetNonMotorInsuranceDocumentTypesResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetNonMotorInsuranceDocumentTypesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetNonMotorInsuranceDocumentTypesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetNonMotorInsuranceDocumentTypesData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetNonMotorInsuranceDocumentTypesResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNonMotorInsuranceDocumentTypesResponseModelImpl &&
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
  _$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWith<
          _$GetNonMotorInsuranceDocumentTypesResponseModelImpl>
      get copyWith =>
          __$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWithImpl<
                  _$GetNonMotorInsuranceDocumentTypesResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNonMotorInsuranceDocumentTypesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetNonMotorInsuranceDocumentTypesResponseModel
    implements GetNonMotorInsuranceDocumentTypesResponseModel {
  const factory _GetNonMotorInsuranceDocumentTypesResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetNonMotorInsuranceDocumentTypesData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetNonMotorInsuranceDocumentTypesResponseModelImpl;

  factory _GetNonMotorInsuranceDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetNonMotorInsuranceDocumentTypesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetNonMotorInsuranceDocumentTypesData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetNonMotorInsuranceDocumentTypesResponseModelImplCopyWith<
          _$GetNonMotorInsuranceDocumentTypesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetNonMotorInsuranceDocumentTypesData
    _$GetNonMotorInsuranceDocumentTypesDataFromJson(Map<String, dynamic> json) {
  return _GetNonMotorInsuranceDocumentTypesData.fromJson(json);
}

/// @nodoc
mixin _$GetNonMotorInsuranceDocumentTypesData {
  @JsonKey(name: "rb")
  List<NonMotorInsuranceDocumentTypeModel>? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetNonMotorInsuranceDocumentTypesDataCopyWith<
          GetNonMotorInsuranceDocumentTypesData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetNonMotorInsuranceDocumentTypesDataCopyWith<$Res> {
  factory $GetNonMotorInsuranceDocumentTypesDataCopyWith(
          GetNonMotorInsuranceDocumentTypesData value,
          $Res Function(GetNonMotorInsuranceDocumentTypesData) then) =
      _$GetNonMotorInsuranceDocumentTypesDataCopyWithImpl<$Res,
          GetNonMotorInsuranceDocumentTypesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb")
      List<NonMotorInsuranceDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$GetNonMotorInsuranceDocumentTypesDataCopyWithImpl<$Res,
        $Val extends GetNonMotorInsuranceDocumentTypesData>
    implements $GetNonMotorInsuranceDocumentTypesDataCopyWith<$Res> {
  _$GetNonMotorInsuranceDocumentTypesDataCopyWithImpl(this._value, this._then);

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
              as List<NonMotorInsuranceDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetNonMotorInsuranceDocumentTypesDataImplCopyWith<$Res>
    implements $GetNonMotorInsuranceDocumentTypesDataCopyWith<$Res> {
  factory _$$GetNonMotorInsuranceDocumentTypesDataImplCopyWith(
          _$GetNonMotorInsuranceDocumentTypesDataImpl value,
          $Res Function(_$GetNonMotorInsuranceDocumentTypesDataImpl) then) =
      __$$GetNonMotorInsuranceDocumentTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb")
      List<NonMotorInsuranceDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$GetNonMotorInsuranceDocumentTypesDataImplCopyWithImpl<$Res>
    extends _$GetNonMotorInsuranceDocumentTypesDataCopyWithImpl<$Res,
        _$GetNonMotorInsuranceDocumentTypesDataImpl>
    implements _$$GetNonMotorInsuranceDocumentTypesDataImplCopyWith<$Res> {
  __$$GetNonMotorInsuranceDocumentTypesDataImplCopyWithImpl(
      _$GetNonMotorInsuranceDocumentTypesDataImpl _value,
      $Res Function(_$GetNonMotorInsuranceDocumentTypesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetNonMotorInsuranceDocumentTypesDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<NonMotorInsuranceDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetNonMotorInsuranceDocumentTypesDataImpl
    implements _GetNonMotorInsuranceDocumentTypesData {
  const _$GetNonMotorInsuranceDocumentTypesDataImpl(
      {@JsonKey(name: "rb")
      final List<NonMotorInsuranceDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$GetNonMotorInsuranceDocumentTypesDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetNonMotorInsuranceDocumentTypesDataImplFromJson(json);

  final List<NonMotorInsuranceDocumentTypeModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<NonMotorInsuranceDocumentTypeModel>? get responseBody {
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
    return 'GetNonMotorInsuranceDocumentTypesData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNonMotorInsuranceDocumentTypesDataImpl &&
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
  _$$GetNonMotorInsuranceDocumentTypesDataImplCopyWith<
          _$GetNonMotorInsuranceDocumentTypesDataImpl>
      get copyWith => __$$GetNonMotorInsuranceDocumentTypesDataImplCopyWithImpl<
          _$GetNonMotorInsuranceDocumentTypesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetNonMotorInsuranceDocumentTypesDataImplToJson(
      this,
    );
  }
}

abstract class _GetNonMotorInsuranceDocumentTypesData
    implements GetNonMotorInsuranceDocumentTypesData {
  const factory _GetNonMotorInsuranceDocumentTypesData(
          {@JsonKey(name: "rb")
          final List<NonMotorInsuranceDocumentTypeModel>? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GetNonMotorInsuranceDocumentTypesDataImpl;

  factory _GetNonMotorInsuranceDocumentTypesData.fromJson(
          Map<String, dynamic> json) =
      _$GetNonMotorInsuranceDocumentTypesDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<NonMotorInsuranceDocumentTypeModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetNonMotorInsuranceDocumentTypesDataImplCopyWith<
          _$GetNonMotorInsuranceDocumentTypesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NonMotorInsuranceDocumentTypeModel _$NonMotorInsuranceDocumentTypeModelFromJson(
    Map<String, dynamic> json) {
  return _NonMotorInsuranceDocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$NonMotorInsuranceDocumentTypeModel {
  @JsonKey(name: "nonMotorInsuranceDocumentTypeId")
  int? get mDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "nonMotorInsuranceDocType")
  String? get nonMotorInsuranceDocType => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCode")
  String? get documentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NonMotorInsuranceDocumentTypeModelCopyWith<
          NonMotorInsuranceDocumentTypeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonMotorInsuranceDocumentTypeModelCopyWith<$Res> {
  factory $NonMotorInsuranceDocumentTypeModelCopyWith(
          NonMotorInsuranceDocumentTypeModel value,
          $Res Function(NonMotorInsuranceDocumentTypeModel) then) =
      _$NonMotorInsuranceDocumentTypeModelCopyWithImpl<$Res,
          NonMotorInsuranceDocumentTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "nonMotorInsuranceDocumentTypeId") int? mDocumentTypeId,
      @JsonKey(name: "nonMotorInsuranceDocType")
      String? nonMotorInsuranceDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class _$NonMotorInsuranceDocumentTypeModelCopyWithImpl<$Res,
        $Val extends NonMotorInsuranceDocumentTypeModel>
    implements $NonMotorInsuranceDocumentTypeModelCopyWith<$Res> {
  _$NonMotorInsuranceDocumentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mDocumentTypeId = freezed,
    Object? nonMotorInsuranceDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_value.copyWith(
      mDocumentTypeId: freezed == mDocumentTypeId
          ? _value.mDocumentTypeId
          : mDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorInsuranceDocType: freezed == nonMotorInsuranceDocType
          ? _value.nonMotorInsuranceDocType
          : nonMotorInsuranceDocType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCode: freezed == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NonMotorInsuranceDocumentTypeModelImplCopyWith<$Res>
    implements $NonMotorInsuranceDocumentTypeModelCopyWith<$Res> {
  factory _$$NonMotorInsuranceDocumentTypeModelImplCopyWith(
          _$NonMotorInsuranceDocumentTypeModelImpl value,
          $Res Function(_$NonMotorInsuranceDocumentTypeModelImpl) then) =
      __$$NonMotorInsuranceDocumentTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "nonMotorInsuranceDocumentTypeId") int? mDocumentTypeId,
      @JsonKey(name: "nonMotorInsuranceDocType")
      String? nonMotorInsuranceDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class __$$NonMotorInsuranceDocumentTypeModelImplCopyWithImpl<$Res>
    extends _$NonMotorInsuranceDocumentTypeModelCopyWithImpl<$Res,
        _$NonMotorInsuranceDocumentTypeModelImpl>
    implements _$$NonMotorInsuranceDocumentTypeModelImplCopyWith<$Res> {
  __$$NonMotorInsuranceDocumentTypeModelImplCopyWithImpl(
      _$NonMotorInsuranceDocumentTypeModelImpl _value,
      $Res Function(_$NonMotorInsuranceDocumentTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mDocumentTypeId = freezed,
    Object? nonMotorInsuranceDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_$NonMotorInsuranceDocumentTypeModelImpl(
      mDocumentTypeId: freezed == mDocumentTypeId
          ? _value.mDocumentTypeId
          : mDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorInsuranceDocType: freezed == nonMotorInsuranceDocType
          ? _value.nonMotorInsuranceDocType
          : nonMotorInsuranceDocType // ignore: cast_nullable_to_non_nullable
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
class _$NonMotorInsuranceDocumentTypeModelImpl
    implements _NonMotorInsuranceDocumentTypeModel {
  const _$NonMotorInsuranceDocumentTypeModelImpl(
      {@JsonKey(name: "nonMotorInsuranceDocumentTypeId") this.mDocumentTypeId,
      @JsonKey(name: "nonMotorInsuranceDocType") this.nonMotorInsuranceDocType,
      @JsonKey(name: "documentCode") this.documentCode});

  factory _$NonMotorInsuranceDocumentTypeModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NonMotorInsuranceDocumentTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "nonMotorInsuranceDocumentTypeId")
  final int? mDocumentTypeId;
  @override
  @JsonKey(name: "nonMotorInsuranceDocType")
  final String? nonMotorInsuranceDocType;
  @override
  @JsonKey(name: "documentCode")
  final String? documentCode;

  @override
  String toString() {
    return 'NonMotorInsuranceDocumentTypeModel(mDocumentTypeId: $mDocumentTypeId, nonMotorInsuranceDocType: $nonMotorInsuranceDocType, documentCode: $documentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonMotorInsuranceDocumentTypeModelImpl &&
            (identical(other.mDocumentTypeId, mDocumentTypeId) ||
                other.mDocumentTypeId == mDocumentTypeId) &&
            (identical(
                    other.nonMotorInsuranceDocType, nonMotorInsuranceDocType) ||
                other.nonMotorInsuranceDocType == nonMotorInsuranceDocType) &&
            (identical(other.documentCode, documentCode) ||
                other.documentCode == documentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, mDocumentTypeId, nonMotorInsuranceDocType, documentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NonMotorInsuranceDocumentTypeModelImplCopyWith<
          _$NonMotorInsuranceDocumentTypeModelImpl>
      get copyWith => __$$NonMotorInsuranceDocumentTypeModelImplCopyWithImpl<
          _$NonMotorInsuranceDocumentTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NonMotorInsuranceDocumentTypeModelImplToJson(
      this,
    );
  }
}

abstract class _NonMotorInsuranceDocumentTypeModel
    implements NonMotorInsuranceDocumentTypeModel {
  const factory _NonMotorInsuranceDocumentTypeModel(
          {@JsonKey(name: "nonMotorInsuranceDocumentTypeId")
          final int? mDocumentTypeId,
          @JsonKey(name: "nonMotorInsuranceDocType")
          final String? nonMotorInsuranceDocType,
          @JsonKey(name: "documentCode") final String? documentCode}) =
      _$NonMotorInsuranceDocumentTypeModelImpl;

  factory _NonMotorInsuranceDocumentTypeModel.fromJson(
          Map<String, dynamic> json) =
      _$NonMotorInsuranceDocumentTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "nonMotorInsuranceDocumentTypeId")
  int? get mDocumentTypeId;
  @override
  @JsonKey(name: "nonMotorInsuranceDocType")
  String? get nonMotorInsuranceDocType;
  @override
  @JsonKey(name: "documentCode")
  String? get documentCode;
  @override
  @JsonKey(ignore: true)
  _$$NonMotorInsuranceDocumentTypeModelImplCopyWith<
          _$NonMotorInsuranceDocumentTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
