// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_policy_document_types_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPolicyDocumentTypesResponseModel
    _$GetPolicyDocumentTypesResponseModelFromJson(Map<String, dynamic> json) {
  return _GetPolicyDocumentTypesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetPolicyDocumentTypesResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetPolicyDocumentTypesData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPolicyDocumentTypesResponseModelCopyWith<
          GetPolicyDocumentTypesResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPolicyDocumentTypesResponseModelCopyWith<$Res> {
  factory $GetPolicyDocumentTypesResponseModelCopyWith(
          GetPolicyDocumentTypesResponseModel value,
          $Res Function(GetPolicyDocumentTypesResponseModel) then) =
      _$GetPolicyDocumentTypesResponseModelCopyWithImpl<$Res,
          GetPolicyDocumentTypesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetPolicyDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetPolicyDocumentTypesDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetPolicyDocumentTypesResponseModelCopyWithImpl<$Res,
        $Val extends GetPolicyDocumentTypesResponseModel>
    implements $GetPolicyDocumentTypesResponseModelCopyWith<$Res> {
  _$GetPolicyDocumentTypesResponseModelCopyWithImpl(this._value, this._then);

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
              as GetPolicyDocumentTypesData?,
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
  $GetPolicyDocumentTypesDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetPolicyDocumentTypesDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetPolicyDocumentTypesResponseModelImplCopyWith<$Res>
    implements $GetPolicyDocumentTypesResponseModelCopyWith<$Res> {
  factory _$$GetPolicyDocumentTypesResponseModelImplCopyWith(
          _$GetPolicyDocumentTypesResponseModelImpl value,
          $Res Function(_$GetPolicyDocumentTypesResponseModelImpl) then) =
      __$$GetPolicyDocumentTypesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetPolicyDocumentTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetPolicyDocumentTypesDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetPolicyDocumentTypesResponseModelImplCopyWithImpl<$Res>
    extends _$GetPolicyDocumentTypesResponseModelCopyWithImpl<$Res,
        _$GetPolicyDocumentTypesResponseModelImpl>
    implements _$$GetPolicyDocumentTypesResponseModelImplCopyWith<$Res> {
  __$$GetPolicyDocumentTypesResponseModelImplCopyWithImpl(
      _$GetPolicyDocumentTypesResponseModelImpl _value,
      $Res Function(_$GetPolicyDocumentTypesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetPolicyDocumentTypesResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetPolicyDocumentTypesData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPolicyDocumentTypesResponseModelImpl
    implements _GetPolicyDocumentTypesResponseModel {
  const _$GetPolicyDocumentTypesResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetPolicyDocumentTypesResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetPolicyDocumentTypesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetPolicyDocumentTypesData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetPolicyDocumentTypesResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPolicyDocumentTypesResponseModelImpl &&
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
  _$$GetPolicyDocumentTypesResponseModelImplCopyWith<
          _$GetPolicyDocumentTypesResponseModelImpl>
      get copyWith => __$$GetPolicyDocumentTypesResponseModelImplCopyWithImpl<
          _$GetPolicyDocumentTypesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPolicyDocumentTypesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetPolicyDocumentTypesResponseModel
    implements GetPolicyDocumentTypesResponseModel {
  const factory _GetPolicyDocumentTypesResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetPolicyDocumentTypesData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetPolicyDocumentTypesResponseModelImpl;

  factory _GetPolicyDocumentTypesResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetPolicyDocumentTypesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetPolicyDocumentTypesData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetPolicyDocumentTypesResponseModelImplCopyWith<
          _$GetPolicyDocumentTypesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetPolicyDocumentTypesData _$GetPolicyDocumentTypesDataFromJson(
    Map<String, dynamic> json) {
  return _GetPolicyDocumentTypesData.fromJson(json);
}

/// @nodoc
mixin _$GetPolicyDocumentTypesData {
  @JsonKey(name: "rb")
  List<PolicyDocumentTypeModel>? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPolicyDocumentTypesDataCopyWith<GetPolicyDocumentTypesData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPolicyDocumentTypesDataCopyWith<$Res> {
  factory $GetPolicyDocumentTypesDataCopyWith(GetPolicyDocumentTypesData value,
          $Res Function(GetPolicyDocumentTypesData) then) =
      _$GetPolicyDocumentTypesDataCopyWithImpl<$Res,
          GetPolicyDocumentTypesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<PolicyDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$GetPolicyDocumentTypesDataCopyWithImpl<$Res,
        $Val extends GetPolicyDocumentTypesData>
    implements $GetPolicyDocumentTypesDataCopyWith<$Res> {
  _$GetPolicyDocumentTypesDataCopyWithImpl(this._value, this._then);

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
              as List<PolicyDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPolicyDocumentTypesDataImplCopyWith<$Res>
    implements $GetPolicyDocumentTypesDataCopyWith<$Res> {
  factory _$$GetPolicyDocumentTypesDataImplCopyWith(
          _$GetPolicyDocumentTypesDataImpl value,
          $Res Function(_$GetPolicyDocumentTypesDataImpl) then) =
      __$$GetPolicyDocumentTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<PolicyDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$GetPolicyDocumentTypesDataImplCopyWithImpl<$Res>
    extends _$GetPolicyDocumentTypesDataCopyWithImpl<$Res,
        _$GetPolicyDocumentTypesDataImpl>
    implements _$$GetPolicyDocumentTypesDataImplCopyWith<$Res> {
  __$$GetPolicyDocumentTypesDataImplCopyWithImpl(
      _$GetPolicyDocumentTypesDataImpl _value,
      $Res Function(_$GetPolicyDocumentTypesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetPolicyDocumentTypesDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<PolicyDocumentTypeModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPolicyDocumentTypesDataImpl implements _GetPolicyDocumentTypesData {
  const _$GetPolicyDocumentTypesDataImpl(
      {@JsonKey(name: "rb") final List<PolicyDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$GetPolicyDocumentTypesDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetPolicyDocumentTypesDataImplFromJson(json);

  final List<PolicyDocumentTypeModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<PolicyDocumentTypeModel>? get responseBody {
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
    return 'GetPolicyDocumentTypesData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPolicyDocumentTypesDataImpl &&
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
  _$$GetPolicyDocumentTypesDataImplCopyWith<_$GetPolicyDocumentTypesDataImpl>
      get copyWith => __$$GetPolicyDocumentTypesDataImplCopyWithImpl<
          _$GetPolicyDocumentTypesDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPolicyDocumentTypesDataImplToJson(
      this,
    );
  }
}

abstract class _GetPolicyDocumentTypesData
    implements GetPolicyDocumentTypesData {
  const factory _GetPolicyDocumentTypesData(
      {@JsonKey(name: "rb") final List<PolicyDocumentTypeModel>? responseBody,
      @JsonKey(name: "checkSum")
      final String? checkSum}) = _$GetPolicyDocumentTypesDataImpl;

  factory _GetPolicyDocumentTypesData.fromJson(Map<String, dynamic> json) =
      _$GetPolicyDocumentTypesDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<PolicyDocumentTypeModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetPolicyDocumentTypesDataImplCopyWith<_$GetPolicyDocumentTypesDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PolicyDocumentTypeModel _$PolicyDocumentTypeModelFromJson(
    Map<String, dynamic> json) {
  return _PolicyDocumentTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PolicyDocumentTypeModel {
  @JsonKey(name: "policyDocumentTypeId")
  int? get policyDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "policyDocTypes")
  String? get policyDocTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCode")
  String? get documentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyDocumentTypeModelCopyWith<PolicyDocumentTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyDocumentTypeModelCopyWith<$Res> {
  factory $PolicyDocumentTypeModelCopyWith(PolicyDocumentTypeModel value,
          $Res Function(PolicyDocumentTypeModel) then) =
      _$PolicyDocumentTypeModelCopyWithImpl<$Res, PolicyDocumentTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
      @JsonKey(name: "policyDocTypes") String? policyDocTypes,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class _$PolicyDocumentTypeModelCopyWithImpl<$Res,
        $Val extends PolicyDocumentTypeModel>
    implements $PolicyDocumentTypeModelCopyWith<$Res> {
  _$PolicyDocumentTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyDocumentTypeId = freezed,
    Object? policyDocTypes = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_value.copyWith(
      policyDocumentTypeId: freezed == policyDocumentTypeId
          ? _value.policyDocumentTypeId
          : policyDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDocTypes: freezed == policyDocTypes
          ? _value.policyDocTypes
          : policyDocTypes // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCode: freezed == documentCode
          ? _value.documentCode
          : documentCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyDocumentTypeModelImplCopyWith<$Res>
    implements $PolicyDocumentTypeModelCopyWith<$Res> {
  factory _$$PolicyDocumentTypeModelImplCopyWith(
          _$PolicyDocumentTypeModelImpl value,
          $Res Function(_$PolicyDocumentTypeModelImpl) then) =
      __$$PolicyDocumentTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
      @JsonKey(name: "policyDocTypes") String? policyDocTypes,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class __$$PolicyDocumentTypeModelImplCopyWithImpl<$Res>
    extends _$PolicyDocumentTypeModelCopyWithImpl<$Res,
        _$PolicyDocumentTypeModelImpl>
    implements _$$PolicyDocumentTypeModelImplCopyWith<$Res> {
  __$$PolicyDocumentTypeModelImplCopyWithImpl(
      _$PolicyDocumentTypeModelImpl _value,
      $Res Function(_$PolicyDocumentTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? policyDocumentTypeId = freezed,
    Object? policyDocTypes = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_$PolicyDocumentTypeModelImpl(
      policyDocumentTypeId: freezed == policyDocumentTypeId
          ? _value.policyDocumentTypeId
          : policyDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDocTypes: freezed == policyDocTypes
          ? _value.policyDocTypes
          : policyDocTypes // ignore: cast_nullable_to_non_nullable
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
class _$PolicyDocumentTypeModelImpl implements _PolicyDocumentTypeModel {
  const _$PolicyDocumentTypeModelImpl(
      {@JsonKey(name: "policyDocumentTypeId") this.policyDocumentTypeId,
      @JsonKey(name: "policyDocTypes") this.policyDocTypes,
      @JsonKey(name: "documentCode") this.documentCode});

  factory _$PolicyDocumentTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyDocumentTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "policyDocumentTypeId")
  final int? policyDocumentTypeId;
  @override
  @JsonKey(name: "policyDocTypes")
  final String? policyDocTypes;
  @override
  @JsonKey(name: "documentCode")
  final String? documentCode;

  @override
  String toString() {
    return 'PolicyDocumentTypeModel(policyDocumentTypeId: $policyDocumentTypeId, policyDocTypes: $policyDocTypes, documentCode: $documentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyDocumentTypeModelImpl &&
            (identical(other.policyDocumentTypeId, policyDocumentTypeId) ||
                other.policyDocumentTypeId == policyDocumentTypeId) &&
            (identical(other.policyDocTypes, policyDocTypes) ||
                other.policyDocTypes == policyDocTypes) &&
            (identical(other.documentCode, documentCode) ||
                other.documentCode == documentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, policyDocumentTypeId, policyDocTypes, documentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyDocumentTypeModelImplCopyWith<_$PolicyDocumentTypeModelImpl>
      get copyWith => __$$PolicyDocumentTypeModelImplCopyWithImpl<
          _$PolicyDocumentTypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyDocumentTypeModelImplToJson(
      this,
    );
  }
}

abstract class _PolicyDocumentTypeModel implements PolicyDocumentTypeModel {
  const factory _PolicyDocumentTypeModel(
      {@JsonKey(name: "policyDocumentTypeId") final int? policyDocumentTypeId,
      @JsonKey(name: "policyDocTypes") final String? policyDocTypes,
      @JsonKey(name: "documentCode")
      final String? documentCode}) = _$PolicyDocumentTypeModelImpl;

  factory _PolicyDocumentTypeModel.fromJson(Map<String, dynamic> json) =
      _$PolicyDocumentTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "policyDocumentTypeId")
  int? get policyDocumentTypeId;
  @override
  @JsonKey(name: "policyDocTypes")
  String? get policyDocTypes;
  @override
  @JsonKey(name: "documentCode")
  String? get documentCode;
  @override
  @JsonKey(ignore: true)
  _$$PolicyDocumentTypeModelImplCopyWith<_$PolicyDocumentTypeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
