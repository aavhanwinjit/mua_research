// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_kyc_types_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetKycTypesResponseModel _$GetKycTypesResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetKycTypesResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetKycTypesResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetKycTypesData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetKycTypesResponseModelCopyWith<GetKycTypesResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetKycTypesResponseModelCopyWith<$Res> {
  factory $GetKycTypesResponseModelCopyWith(GetKycTypesResponseModel value,
          $Res Function(GetKycTypesResponseModel) then) =
      _$GetKycTypesResponseModelCopyWithImpl<$Res, GetKycTypesResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetKycTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetKycTypesDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetKycTypesResponseModelCopyWithImpl<$Res,
        $Val extends GetKycTypesResponseModel>
    implements $GetKycTypesResponseModelCopyWith<$Res> {
  _$GetKycTypesResponseModelCopyWithImpl(this._value, this._then);

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
              as GetKycTypesData?,
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
  $GetKycTypesDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetKycTypesDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetKycTypesResponseModelImplCopyWith<$Res>
    implements $GetKycTypesResponseModelCopyWith<$Res> {
  factory _$$GetKycTypesResponseModelImplCopyWith(
          _$GetKycTypesResponseModelImpl value,
          $Res Function(_$GetKycTypesResponseModelImpl) then) =
      __$$GetKycTypesResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetKycTypesData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetKycTypesDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetKycTypesResponseModelImplCopyWithImpl<$Res>
    extends _$GetKycTypesResponseModelCopyWithImpl<$Res,
        _$GetKycTypesResponseModelImpl>
    implements _$$GetKycTypesResponseModelImplCopyWith<$Res> {
  __$$GetKycTypesResponseModelImplCopyWithImpl(
      _$GetKycTypesResponseModelImpl _value,
      $Res Function(_$GetKycTypesResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetKycTypesResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetKycTypesData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetKycTypesResponseModelImpl implements _GetKycTypesResponseModel {
  const _$GetKycTypesResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetKycTypesResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetKycTypesResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetKycTypesData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetKycTypesResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetKycTypesResponseModelImpl &&
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
  _$$GetKycTypesResponseModelImplCopyWith<_$GetKycTypesResponseModelImpl>
      get copyWith => __$$GetKycTypesResponseModelImplCopyWithImpl<
          _$GetKycTypesResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetKycTypesResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetKycTypesResponseModel implements GetKycTypesResponseModel {
  const factory _GetKycTypesResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetKycTypesData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetKycTypesResponseModelImpl;

  factory _GetKycTypesResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetKycTypesResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetKycTypesData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetKycTypesResponseModelImplCopyWith<_$GetKycTypesResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetKycTypesData _$GetKycTypesDataFromJson(Map<String, dynamic> json) {
  return _GetKycTypesData.fromJson(json);
}

/// @nodoc
mixin _$GetKycTypesData {
  @JsonKey(name: "rb")
  List<KycTypesModel>? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetKycTypesDataCopyWith<GetKycTypesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetKycTypesDataCopyWith<$Res> {
  factory $GetKycTypesDataCopyWith(
          GetKycTypesData value, $Res Function(GetKycTypesData) then) =
      _$GetKycTypesDataCopyWithImpl<$Res, GetKycTypesData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<KycTypesModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$GetKycTypesDataCopyWithImpl<$Res, $Val extends GetKycTypesData>
    implements $GetKycTypesDataCopyWith<$Res> {
  _$GetKycTypesDataCopyWithImpl(this._value, this._then);

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
              as List<KycTypesModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetKycTypesDataImplCopyWith<$Res>
    implements $GetKycTypesDataCopyWith<$Res> {
  factory _$$GetKycTypesDataImplCopyWith(_$GetKycTypesDataImpl value,
          $Res Function(_$GetKycTypesDataImpl) then) =
      __$$GetKycTypesDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") List<KycTypesModel>? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$GetKycTypesDataImplCopyWithImpl<$Res>
    extends _$GetKycTypesDataCopyWithImpl<$Res, _$GetKycTypesDataImpl>
    implements _$$GetKycTypesDataImplCopyWith<$Res> {
  __$$GetKycTypesDataImplCopyWithImpl(
      _$GetKycTypesDataImpl _value, $Res Function(_$GetKycTypesDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetKycTypesDataImpl(
      responseBody: freezed == responseBody
          ? _value._responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as List<KycTypesModel>?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetKycTypesDataImpl implements _GetKycTypesData {
  const _$GetKycTypesDataImpl(
      {@JsonKey(name: "rb") final List<KycTypesModel>? responseBody,
      @JsonKey(name: "checkSum") this.checkSum})
      : _responseBody = responseBody;

  factory _$GetKycTypesDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetKycTypesDataImplFromJson(json);

  final List<KycTypesModel>? _responseBody;
  @override
  @JsonKey(name: "rb")
  List<KycTypesModel>? get responseBody {
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
    return 'GetKycTypesData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetKycTypesDataImpl &&
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
  _$$GetKycTypesDataImplCopyWith<_$GetKycTypesDataImpl> get copyWith =>
      __$$GetKycTypesDataImplCopyWithImpl<_$GetKycTypesDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetKycTypesDataImplToJson(
      this,
    );
  }
}

abstract class _GetKycTypesData implements GetKycTypesData {
  const factory _GetKycTypesData(
          {@JsonKey(name: "rb") final List<KycTypesModel>? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GetKycTypesDataImpl;

  factory _GetKycTypesData.fromJson(Map<String, dynamic> json) =
      _$GetKycTypesDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  List<KycTypesModel>? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetKycTypesDataImplCopyWith<_$GetKycTypesDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KycTypesModel _$KycTypesModelFromJson(Map<String, dynamic> json) {
  return _KycTypesModel.fromJson(json);
}

/// @nodoc
mixin _$KycTypesModel {
  @JsonKey(name: "kycTypeId")
  int? get kycTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "kycTypes")
  String? get kycTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  String? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "policyType")
  String? get policyType => throw _privateConstructorUsedError;
  @JsonKey(name: "isDisabled")
  bool? get isDisabled => throw _privateConstructorUsedError;
  @JsonKey(name: "crd")
  DateTime? get crd => throw _privateConstructorUsedError;
  @JsonKey(name: "crdBy")
  int? get crdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "lmd")
  DateTime? get lmd => throw _privateConstructorUsedError;
  @JsonKey(name: "lmdBy")
  int? get lmdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KycTypesModelCopyWith<KycTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycTypesModelCopyWith<$Res> {
  factory $KycTypesModelCopyWith(
          KycTypesModel value, $Res Function(KycTypesModel) then) =
      _$KycTypesModelCopyWithImpl<$Res, KycTypesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "kycTypeId") int? kycTypeId,
      @JsonKey(name: "kycTypes") String? kycTypes,
      @JsonKey(name: "companyId") String? companyId,
      @JsonKey(name: "policyType") String? policyType,
      @JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy});
}

/// @nodoc
class _$KycTypesModelCopyWithImpl<$Res, $Val extends KycTypesModel>
    implements $KycTypesModelCopyWith<$Res> {
  _$KycTypesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycTypeId = freezed,
    Object? kycTypes = freezed,
    Object? companyId = freezed,
    Object? policyType = freezed,
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
  }) {
    return _then(_value.copyWith(
      kycTypeId: freezed == kycTypeId
          ? _value.kycTypeId
          : kycTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      kycTypes: freezed == kycTypes
          ? _value.kycTypes
          : kycTypes // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      crd: freezed == crd
          ? _value.crd
          : crd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      crdBy: freezed == crdBy
          ? _value.crdBy
          : crdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lmd: freezed == lmd
          ? _value.lmd
          : lmd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lmdBy: freezed == lmdBy
          ? _value.lmdBy
          : lmdBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KycTypesModelImplCopyWith<$Res>
    implements $KycTypesModelCopyWith<$Res> {
  factory _$$KycTypesModelImplCopyWith(
          _$KycTypesModelImpl value, $Res Function(_$KycTypesModelImpl) then) =
      __$$KycTypesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "kycTypeId") int? kycTypeId,
      @JsonKey(name: "kycTypes") String? kycTypes,
      @JsonKey(name: "companyId") String? companyId,
      @JsonKey(name: "policyType") String? policyType,
      @JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy});
}

/// @nodoc
class __$$KycTypesModelImplCopyWithImpl<$Res>
    extends _$KycTypesModelCopyWithImpl<$Res, _$KycTypesModelImpl>
    implements _$$KycTypesModelImplCopyWith<$Res> {
  __$$KycTypesModelImplCopyWithImpl(
      _$KycTypesModelImpl _value, $Res Function(_$KycTypesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kycTypeId = freezed,
    Object? kycTypes = freezed,
    Object? companyId = freezed,
    Object? policyType = freezed,
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
  }) {
    return _then(_$KycTypesModelImpl(
      kycTypeId: freezed == kycTypeId
          ? _value.kycTypeId
          : kycTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      kycTypes: freezed == kycTypes
          ? _value.kycTypes
          : kycTypes // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String?,
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as String?,
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      crd: freezed == crd
          ? _value.crd
          : crd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      crdBy: freezed == crdBy
          ? _value.crdBy
          : crdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lmd: freezed == lmd
          ? _value.lmd
          : lmd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lmdBy: freezed == lmdBy
          ? _value.lmdBy
          : lmdBy // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KycTypesModelImpl implements _KycTypesModel {
  const _$KycTypesModelImpl(
      {@JsonKey(name: "kycTypeId") this.kycTypeId,
      @JsonKey(name: "kycTypes") this.kycTypes,
      @JsonKey(name: "companyId") this.companyId,
      @JsonKey(name: "policyType") this.policyType,
      @JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy});

  factory _$KycTypesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycTypesModelImplFromJson(json);

  @override
  @JsonKey(name: "kycTypeId")
  final int? kycTypeId;
  @override
  @JsonKey(name: "kycTypes")
  final String? kycTypes;
  @override
  @JsonKey(name: "companyId")
  final String? companyId;
  @override
  @JsonKey(name: "policyType")
  final String? policyType;
  @override
  @JsonKey(name: "isDisabled")
  final bool? isDisabled;
  @override
  @JsonKey(name: "crd")
  final DateTime? crd;
  @override
  @JsonKey(name: "crdBy")
  final int? crdBy;
  @override
  @JsonKey(name: "lmd")
  final DateTime? lmd;
  @override
  @JsonKey(name: "lmdBy")
  final int? lmdBy;

  @override
  String toString() {
    return 'KycTypesModel(kycTypeId: $kycTypeId, kycTypes: $kycTypes, companyId: $companyId, policyType: $policyType, isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycTypesModelImpl &&
            (identical(other.kycTypeId, kycTypeId) ||
                other.kycTypeId == kycTypeId) &&
            (identical(other.kycTypes, kycTypes) ||
                other.kycTypes == kycTypes) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kycTypeId, kycTypes, companyId,
      policyType, isDisabled, crd, crdBy, lmd, lmdBy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KycTypesModelImplCopyWith<_$KycTypesModelImpl> get copyWith =>
      __$$KycTypesModelImplCopyWithImpl<_$KycTypesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KycTypesModelImplToJson(
      this,
    );
  }
}

abstract class _KycTypesModel implements KycTypesModel {
  const factory _KycTypesModel(
      {@JsonKey(name: "kycTypeId") final int? kycTypeId,
      @JsonKey(name: "kycTypes") final String? kycTypes,
      @JsonKey(name: "companyId") final String? companyId,
      @JsonKey(name: "policyType") final String? policyType,
      @JsonKey(name: "isDisabled") final bool? isDisabled,
      @JsonKey(name: "crd") final DateTime? crd,
      @JsonKey(name: "crdBy") final int? crdBy,
      @JsonKey(name: "lmd") final DateTime? lmd,
      @JsonKey(name: "lmdBy") final int? lmdBy}) = _$KycTypesModelImpl;

  factory _KycTypesModel.fromJson(Map<String, dynamic> json) =
      _$KycTypesModelImpl.fromJson;

  @override
  @JsonKey(name: "kycTypeId")
  int? get kycTypeId;
  @override
  @JsonKey(name: "kycTypes")
  String? get kycTypes;
  @override
  @JsonKey(name: "companyId")
  String? get companyId;
  @override
  @JsonKey(name: "policyType")
  String? get policyType;
  @override
  @JsonKey(name: "isDisabled")
  bool? get isDisabled;
  @override
  @JsonKey(name: "crd")
  DateTime? get crd;
  @override
  @JsonKey(name: "crdBy")
  int? get crdBy;
  @override
  @JsonKey(name: "lmd")
  DateTime? get lmd;
  @override
  @JsonKey(name: "lmdBy")
  int? get lmdBy;
  @override
  @JsonKey(ignore: true)
  _$$KycTypesModelImplCopyWith<_$KycTypesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
