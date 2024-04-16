// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_motor_insurance_document_types_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetMotorInsuranceDocumentTypesResponseModel
    _$GetMotorInsuranceDocumentTypesResponseModelFromJson(
        Map<String, dynamic> json) {
  return _GetMotorInsuranceDocumentTypesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetMotorInsuranceDocumentTypesResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetMotorInsuranceDocumentTypesData? get body =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMotorInsuranceDocumentTypesResponseModelCopyWith<
          GetMotorInsuranceDocumentTypesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMotorInsuranceDocumentTypesResponseModelCopyWith<$Res> {
  factory $GetMotorInsuranceDocumentTypesResponseModelCopyWith(
          GetMotorInsuranceDocumentTypesResponseModel value,
          $Res Function(GetMotorInsuranceDocumentTypesResponseModel) then) =
      _$GetMotorInsuranceDocumentTypesResponseModelCopyWithImpl<$Res,
          GetMotorInsuranceDocumentTypesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetMotorInsuranceDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetMotorInsuranceDocumentTypesDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetMotorInsuranceDocumentTypesResponseModelCopyWithImpl<$Res,
        $Val extends GetMotorInsuranceDocumentTypesResponseModel>
    implements $GetMotorInsuranceDocumentTypesResponseModelCopyWith<$Res> {
  _$GetMotorInsuranceDocumentTypesResponseModelCopyWithImpl(
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
              as GetMotorInsuranceDocumentTypesData?,
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
  $GetMotorInsuranceDocumentTypesDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetMotorInsuranceDocumentTypesDataCopyWith<$Res>(_value.body!,
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
abstract class _$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWith<$Res>
    implements $GetMotorInsuranceDocumentTypesResponseModelCopyWith<$Res> {
  factory _$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWith(
          _$GetMotorInsuranceDocumentTypesResponseModelImpl value,
          $Res Function(_$GetMotorInsuranceDocumentTypesResponseModelImpl)
              then) =
      __$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetMotorInsuranceDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetMotorInsuranceDocumentTypesDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWithImpl<$Res>
    extends _$GetMotorInsuranceDocumentTypesResponseModelCopyWithImpl<$Res,
        _$GetMotorInsuranceDocumentTypesResponseModelImpl>
    implements
        _$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWith<$Res> {
  __$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWithImpl(
      _$GetMotorInsuranceDocumentTypesResponseModelImpl _value,
      $Res Function(_$GetMotorInsuranceDocumentTypesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetMotorInsuranceDocumentTypesResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetMotorInsuranceDocumentTypesData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMotorInsuranceDocumentTypesResponseModelImpl
    implements _GetMotorInsuranceDocumentTypesResponseModel {
  const _$GetMotorInsuranceDocumentTypesResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetMotorInsuranceDocumentTypesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetMotorInsuranceDocumentTypesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetMotorInsuranceDocumentTypesData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetMotorInsuranceDocumentTypesResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMotorInsuranceDocumentTypesResponseModelImpl &&
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
  _$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWith<
          _$GetMotorInsuranceDocumentTypesResponseModelImpl>
      get copyWith =>
          __$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWithImpl<
                  _$GetMotorInsuranceDocumentTypesResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMotorInsuranceDocumentTypesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetMotorInsuranceDocumentTypesResponseModel
    implements GetMotorInsuranceDocumentTypesResponseModel {
  const factory _GetMotorInsuranceDocumentTypesResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetMotorInsuranceDocumentTypesData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetMotorInsuranceDocumentTypesResponseModelImpl;

  factory _GetMotorInsuranceDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetMotorInsuranceDocumentTypesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetMotorInsuranceDocumentTypesData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetMotorInsuranceDocumentTypesResponseModelImplCopyWith<
          _$GetMotorInsuranceDocumentTypesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetMotorInsuranceDocumentTypesData _$GetMotorInsuranceDocumentTypesDataFromJson(
    Map<String, dynamic> json) {
  return _GetMotorInsuranceDocumentTypesData.fromJson(json);
}

/// @nodoc
mixin _$GetMotorInsuranceDocumentTypesData {
  @JsonKey(name: "rb")
  List<MotorInsuranceDocumentTypeModel>? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMotorInsuranceDocumentTypesDataCopyWith<
          GetMotorInsuranceDocumentTypesData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMotorInsuranceDocumentTypesDataCopyWith<$Res> {
  factory $GetMotorInsuranceDocumentTypesDataCopyWith(
          GetMotorInsuranceDocumentTypesData value,
          $Res Function(GetMotorInsuranceDocumentTypesData) then) =
      _$GetMotorInsuranceDocumentTypesDataCopyWithImpl<$Res,
          GetMotorInsuranceDocumentTypesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<MotorInsuranceDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$GetMotorInsuranceDocumentTypesDataCopyWithImpl<$Res,
        $Val extends GetMotorInsuranceDocumentTypesData>
    implements $GetMotorInsuranceDocumentTypesDataCopyWith<$Res> {
  _$GetMotorInsuranceDocumentTypesDataCopyWithImpl(this._value, this._then);

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
              as List<MotorInsuranceDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetMotorInsuranceDocumentTypesDataImplCopyWith<$Res>
    implements $GetMotorInsuranceDocumentTypesDataCopyWith<$Res> {
  factory _$$GetMotorInsuranceDocumentTypesDataImplCopyWith(
          _$GetMotorInsuranceDocumentTypesDataImpl value,
          $Res Function(_$GetMotorInsuranceDocumentTypesDataImpl) then) =
      __$$GetMotorInsuranceDocumentTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<MotorInsuranceDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$GetMotorInsuranceDocumentTypesDataImplCopyWithImpl<$Res>
    extends _$GetMotorInsuranceDocumentTypesDataCopyWithImpl<$Res,
        _$GetMotorInsuranceDocumentTypesDataImpl>
    implements _$$GetMotorInsuranceDocumentTypesDataImplCopyWith<$Res> {
  __$$GetMotorInsuranceDocumentTypesDataImplCopyWithImpl(
      _$GetMotorInsuranceDocumentTypesDataImpl _value,
      $Res Function(_$GetMotorInsuranceDocumentTypesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetMotorInsuranceDocumentTypesDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<MotorInsuranceDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetMotorInsuranceDocumentTypesDataImpl
    implements _GetMotorInsuranceDocumentTypesData {
  const _$GetMotorInsuranceDocumentTypesDataImpl(
      {@JsonKey(name: "rb")
      final List<MotorInsuranceDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$GetMotorInsuranceDocumentTypesDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetMotorInsuranceDocumentTypesDataImplFromJson(json);

  final List<MotorInsuranceDocumentTypeModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<MotorInsuranceDocumentTypeModel>? get responseBody {
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
    return 'GetMotorInsuranceDocumentTypesData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMotorInsuranceDocumentTypesDataImpl &&
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
  _$$GetMotorInsuranceDocumentTypesDataImplCopyWith<
          _$GetMotorInsuranceDocumentTypesDataImpl>
      get copyWith => __$$GetMotorInsuranceDocumentTypesDataImplCopyWithImpl<
          _$GetMotorInsuranceDocumentTypesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetMotorInsuranceDocumentTypesDataImplToJson(
      this,
    );
  }
}

abstract class _GetMotorInsuranceDocumentTypesData
    implements GetMotorInsuranceDocumentTypesData {
  const factory _GetMotorInsuranceDocumentTypesData(
          {@JsonKey(name: "rb")
          final List<MotorInsuranceDocumentTypeModel>? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GetMotorInsuranceDocumentTypesDataImpl;

  factory _GetMotorInsuranceDocumentTypesData.fromJson(
          Map<String, dynamic> json) =
      _$GetMotorInsuranceDocumentTypesDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<MotorInsuranceDocumentTypeModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetMotorInsuranceDocumentTypesDataImplCopyWith<
          _$GetMotorInsuranceDocumentTypesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

MotorInsuranceDocumentTypeModel _$MotorInsuranceDocumentTypeModelFromJson(
    Map<String, dynamic> json) {
  return _MotorInsuranceDocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$MotorInsuranceDocumentTypeModel {
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  int? get mDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "motorInsuranceDocType")
  String? get motorInsuranceDocType => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCode")
  String? get documentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotorInsuranceDocumentTypeModelCopyWith<MotorInsuranceDocumentTypeModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorInsuranceDocumentTypeModelCopyWith<$Res> {
  factory $MotorInsuranceDocumentTypeModelCopyWith(
          MotorInsuranceDocumentTypeModel value,
          $Res Function(MotorInsuranceDocumentTypeModel) then) =
      _$MotorInsuranceDocumentTypeModelCopyWithImpl<$Res,
          MotorInsuranceDocumentTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "motorInsuranceDocumentTypeId") int? mDocumentTypeId,
      @JsonKey(name: "motorInsuranceDocType") String? motorInsuranceDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class _$MotorInsuranceDocumentTypeModelCopyWithImpl<$Res,
        $Val extends MotorInsuranceDocumentTypeModel>
    implements $MotorInsuranceDocumentTypeModelCopyWith<$Res> {
  _$MotorInsuranceDocumentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mDocumentTypeId = freezed,
    Object? motorInsuranceDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_value.copyWith(
      mDocumentTypeId: freezed == mDocumentTypeId
          ? _value.mDocumentTypeId
          : mDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorInsuranceDocType: freezed == motorInsuranceDocType
          ? _value.motorInsuranceDocType
          : motorInsuranceDocType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCode: freezed == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MotorInsuranceDocumentTypeModelImplCopyWith<$Res>
    implements $MotorInsuranceDocumentTypeModelCopyWith<$Res> {
  factory _$$MotorInsuranceDocumentTypeModelImplCopyWith(
          _$MotorInsuranceDocumentTypeModelImpl value,
          $Res Function(_$MotorInsuranceDocumentTypeModelImpl) then) =
      __$$MotorInsuranceDocumentTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "motorInsuranceDocumentTypeId") int? mDocumentTypeId,
      @JsonKey(name: "motorInsuranceDocType") String? motorInsuranceDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class __$$MotorInsuranceDocumentTypeModelImplCopyWithImpl<$Res>
    extends _$MotorInsuranceDocumentTypeModelCopyWithImpl<$Res,
        _$MotorInsuranceDocumentTypeModelImpl>
    implements _$$MotorInsuranceDocumentTypeModelImplCopyWith<$Res> {
  __$$MotorInsuranceDocumentTypeModelImplCopyWithImpl(
      _$MotorInsuranceDocumentTypeModelImpl _value,
      $Res Function(_$MotorInsuranceDocumentTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mDocumentTypeId = freezed,
    Object? motorInsuranceDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_$MotorInsuranceDocumentTypeModelImpl(
      mDocumentTypeId: freezed == mDocumentTypeId
          ? _value.mDocumentTypeId
          : mDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorInsuranceDocType: freezed == motorInsuranceDocType
          ? _value.motorInsuranceDocType
          : motorInsuranceDocType // ignore: cast_nullable_to_non_nullable
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
class _$MotorInsuranceDocumentTypeModelImpl
    implements _MotorInsuranceDocumentTypeModel {
  const _$MotorInsuranceDocumentTypeModelImpl(
      {@JsonKey(name: "motorInsuranceDocumentTypeId") this.mDocumentTypeId,
      @JsonKey(name: "motorInsuranceDocType") this.motorInsuranceDocType,
      @JsonKey(name: "documentCode") this.documentCode});

  factory _$MotorInsuranceDocumentTypeModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$MotorInsuranceDocumentTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  final int? mDocumentTypeId;
  @override
  @JsonKey(name: "motorInsuranceDocType")
  final String? motorInsuranceDocType;
  @override
  @JsonKey(name: "documentCode")
  final String? documentCode;

  @override
  String toString() {
    return 'MotorInsuranceDocumentTypeModel(mDocumentTypeId: $mDocumentTypeId, motorInsuranceDocType: $motorInsuranceDocType, documentCode: $documentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotorInsuranceDocumentTypeModelImpl &&
            (identical(other.mDocumentTypeId, mDocumentTypeId) ||
                other.mDocumentTypeId == mDocumentTypeId) &&
            (identical(other.motorInsuranceDocType, motorInsuranceDocType) ||
                other.motorInsuranceDocType == motorInsuranceDocType) &&
            (identical(other.documentCode, documentCode) ||
                other.documentCode == documentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, mDocumentTypeId, motorInsuranceDocType, documentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MotorInsuranceDocumentTypeModelImplCopyWith<
          _$MotorInsuranceDocumentTypeModelImpl>
      get copyWith => __$$MotorInsuranceDocumentTypeModelImplCopyWithImpl<
          _$MotorInsuranceDocumentTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotorInsuranceDocumentTypeModelImplToJson(
      this,
    );
  }
}

abstract class _MotorInsuranceDocumentTypeModel
    implements MotorInsuranceDocumentTypeModel {
  const factory _MotorInsuranceDocumentTypeModel(
          {@JsonKey(name: "motorInsuranceDocumentTypeId")
          final int? mDocumentTypeId,
          @JsonKey(name: "motorInsuranceDocType")
          final String? motorInsuranceDocType,
          @JsonKey(name: "documentCode") final String? documentCode}) =
      _$MotorInsuranceDocumentTypeModelImpl;

  factory _MotorInsuranceDocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$MotorInsuranceDocumentTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  int? get mDocumentTypeId;
  @override
  @JsonKey(name: "motorInsuranceDocType")
  String? get motorInsuranceDocType;
  @override
  @JsonKey(name: "documentCode")
  String? get documentCode;
  @override
  @JsonKey(ignore: true)
  _$$MotorInsuranceDocumentTypeModelImplCopyWith<
          _$MotorInsuranceDocumentTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
