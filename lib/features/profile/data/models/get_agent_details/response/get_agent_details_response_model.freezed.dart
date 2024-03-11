// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_agent_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAgentDetailsResponseModel _$GetAgentDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetAgentDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAgentDetailsResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetAgentDetailsData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAgentDetailsResponseModelCopyWith<GetAgentDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentDetailsResponseModelCopyWith<$Res> {
  factory $GetAgentDetailsResponseModelCopyWith(
          GetAgentDetailsResponseModel value,
          $Res Function(GetAgentDetailsResponseModel) then) =
      _$GetAgentDetailsResponseModelCopyWithImpl<$Res,
          GetAgentDetailsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetAgentDetailsData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetAgentDetailsDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetAgentDetailsResponseModelCopyWithImpl<$Res,
        $Val extends GetAgentDetailsResponseModel>
    implements $GetAgentDetailsResponseModelCopyWith<$Res> {
  _$GetAgentDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as GetAgentDetailsData?,
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
  $GetAgentDetailsDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetAgentDetailsDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetAgentDetailsResponseModelImplCopyWith<$Res>
    implements $GetAgentDetailsResponseModelCopyWith<$Res> {
  factory _$$GetAgentDetailsResponseModelImplCopyWith(
          _$GetAgentDetailsResponseModelImpl value,
          $Res Function(_$GetAgentDetailsResponseModelImpl) then) =
      __$$GetAgentDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetAgentDetailsData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetAgentDetailsDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetAgentDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$GetAgentDetailsResponseModelCopyWithImpl<$Res,
        _$GetAgentDetailsResponseModelImpl>
    implements _$$GetAgentDetailsResponseModelImplCopyWith<$Res> {
  __$$GetAgentDetailsResponseModelImplCopyWithImpl(
      _$GetAgentDetailsResponseModelImpl _value,
      $Res Function(_$GetAgentDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetAgentDetailsResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetAgentDetailsData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAgentDetailsResponseModelImpl
    implements _GetAgentDetailsResponseModel {
  const _$GetAgentDetailsResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetAgentDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAgentDetailsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetAgentDetailsData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetAgentDetailsResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgentDetailsResponseModelImpl &&
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
  _$$GetAgentDetailsResponseModelImplCopyWith<
          _$GetAgentDetailsResponseModelImpl>
      get copyWith => __$$GetAgentDetailsResponseModelImplCopyWithImpl<
          _$GetAgentDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAgentDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAgentDetailsResponseModel
    implements GetAgentDetailsResponseModel {
  const factory _GetAgentDetailsResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetAgentDetailsData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetAgentDetailsResponseModelImpl;

  factory _GetAgentDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$GetAgentDetailsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetAgentDetailsData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentDetailsResponseModelImplCopyWith<
          _$GetAgentDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAgentDetailsData _$GetAgentDetailsDataFromJson(Map<String, dynamic> json) {
  return _GetAgentDetailsData.fromJson(json);
}

/// @nodoc
mixin _$GetAgentDetailsData {
  @JsonKey(name: "rb")
  GetAgentDetailsResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAgentDetailsDataCopyWith<GetAgentDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentDetailsDataCopyWith<$Res> {
  factory $GetAgentDetailsDataCopyWith(
          GetAgentDetailsData value, $Res Function(GetAgentDetailsData) then) =
      _$GetAgentDetailsDataCopyWithImpl<$Res, GetAgentDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") GetAgentDetailsResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $GetAgentDetailsResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$GetAgentDetailsDataCopyWithImpl<$Res, $Val extends GetAgentDetailsData>
    implements $GetAgentDetailsDataCopyWith<$Res> {
  _$GetAgentDetailsDataCopyWithImpl(this._value, this._then);

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
              as GetAgentDetailsResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAgentDetailsResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $GetAgentDetailsResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetAgentDetailsDataImplCopyWith<$Res>
    implements $GetAgentDetailsDataCopyWith<$Res> {
  factory _$$GetAgentDetailsDataImplCopyWith(_$GetAgentDetailsDataImpl value,
          $Res Function(_$GetAgentDetailsDataImpl) then) =
      __$$GetAgentDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") GetAgentDetailsResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $GetAgentDetailsResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$GetAgentDetailsDataImplCopyWithImpl<$Res>
    extends _$GetAgentDetailsDataCopyWithImpl<$Res, _$GetAgentDetailsDataImpl>
    implements _$$GetAgentDetailsDataImplCopyWith<$Res> {
  __$$GetAgentDetailsDataImplCopyWithImpl(_$GetAgentDetailsDataImpl _value,
      $Res Function(_$GetAgentDetailsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetAgentDetailsDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as GetAgentDetailsResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAgentDetailsDataImpl implements _GetAgentDetailsData {
  const _$GetAgentDetailsDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$GetAgentDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAgentDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final GetAgentDetailsResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'GetAgentDetailsData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgentDetailsDataImpl &&
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
  _$$GetAgentDetailsDataImplCopyWith<_$GetAgentDetailsDataImpl> get copyWith =>
      __$$GetAgentDetailsDataImplCopyWithImpl<_$GetAgentDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAgentDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _GetAgentDetailsData implements GetAgentDetailsData {
  const factory _GetAgentDetailsData(
          {@JsonKey(name: "rb") final GetAgentDetailsResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GetAgentDetailsDataImpl;

  factory _GetAgentDetailsData.fromJson(Map<String, dynamic> json) =
      _$GetAgentDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  GetAgentDetailsResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentDetailsDataImplCopyWith<_$GetAgentDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GetAgentDetailsResponseBody _$GetAgentDetailsResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _GetAgentDetailsResponseBody.fromJson(json);
}

/// @nodoc
mixin _$GetAgentDetailsResponseBody {
  @JsonKey(name: "agentId")
  int? get agentId => throw _privateConstructorUsedError;
  @JsonKey(name: "agentName")
  String? get agentName => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "companyId")
  int? get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: "signaturePath")
  String? get signaturePath => throw _privateConstructorUsedError;
  @JsonKey(name: "mpin")
  String? get mpin => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "isApproved")
  dynamic get isApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "remark")
  dynamic get remark => throw _privateConstructorUsedError;
  @JsonKey(name: "dateOfApproved")
  dynamic get dateOfApproved => throw _privateConstructorUsedError;
  @JsonKey(name: "approvedBy")
  dynamic get approvedBy => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "countryId")
  dynamic get countryId => throw _privateConstructorUsedError;
  @JsonKey(name: "emailId")
  String? get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: "authorized")
  dynamic get authorized => throw _privateConstructorUsedError;
  @JsonKey(name: "isMPINExpired")
  dynamic get isMpinExpired => throw _privateConstructorUsedError;
  @JsonKey(name: "mpinExpiry")
  DateTime? get mpinExpiry => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImagePath")
  dynamic get profileImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "birthDate")
  dynamic get birthDate => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewByUser")
  dynamic get reviewByUser => throw _privateConstructorUsedError;
  @JsonKey(name: "apiUniqueKey")
  dynamic get apiUniqueKey => throw _privateConstructorUsedError;
  @JsonKey(name: "companies")
  dynamic get companies => throw _privateConstructorUsedError;
  @JsonKey(name: "agencyName")
  String? get agencyName => throw _privateConstructorUsedError;
  @JsonKey(name: "designation")
  dynamic get designation => throw _privateConstructorUsedError;
  @JsonKey(name: "isDisabled")
  bool? get isDisabled => throw _privateConstructorUsedError;
  @JsonKey(name: "crd")
  DateTime? get crd => throw _privateConstructorUsedError;
  @JsonKey(name: "crdBy")
  dynamic get crdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "lmd")
  DateTime? get lmd => throw _privateConstructorUsedError;
  @JsonKey(name: "lmdBy")
  int? get lmdBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAgentDetailsResponseBodyCopyWith<GetAgentDetailsResponseBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentDetailsResponseBodyCopyWith<$Res> {
  factory $GetAgentDetailsResponseBodyCopyWith(
          GetAgentDetailsResponseBody value,
          $Res Function(GetAgentDetailsResponseBody) then) =
      _$GetAgentDetailsResponseBodyCopyWithImpl<$Res,
          GetAgentDetailsResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentId") int? agentId,
      @JsonKey(name: "agentName") String? agentName,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "companyId") int? companyId,
      @JsonKey(name: "signaturePath") String? signaturePath,
      @JsonKey(name: "mpin") String? mpin,
      @JsonKey(name: "mobileNumber") String? mobileNumber,
      @JsonKey(name: "isApproved") dynamic isApproved,
      @JsonKey(name: "remark") dynamic remark,
      @JsonKey(name: "dateOfApproved") dynamic dateOfApproved,
      @JsonKey(name: "approvedBy") dynamic approvedBy,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "countryId") dynamic countryId,
      @JsonKey(name: "emailId") String? emailId,
      @JsonKey(name: "authorized") dynamic authorized,
      @JsonKey(name: "isMPINExpired") dynamic isMpinExpired,
      @JsonKey(name: "mpinExpiry") DateTime? mpinExpiry,
      @JsonKey(name: "profileImagePath") dynamic profileImagePath,
      @JsonKey(name: "birthDate") dynamic birthDate,
      @JsonKey(name: "status") dynamic status,
      @JsonKey(name: "reviewByUser") dynamic reviewByUser,
      @JsonKey(name: "apiUniqueKey") dynamic apiUniqueKey,
      @JsonKey(name: "companies") dynamic companies,
      @JsonKey(name: "agencyName") String? agencyName,
      @JsonKey(name: "designation") dynamic designation,
      @JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") dynamic crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy});
}

/// @nodoc
class _$GetAgentDetailsResponseBodyCopyWithImpl<$Res,
        $Val extends GetAgentDetailsResponseBody>
    implements $GetAgentDetailsResponseBodyCopyWith<$Res> {
  _$GetAgentDetailsResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentId = freezed,
    Object? agentName = freezed,
    Object? address = freezed,
    Object? companyId = freezed,
    Object? signaturePath = freezed,
    Object? mpin = freezed,
    Object? mobileNumber = freezed,
    Object? isApproved = freezed,
    Object? remark = freezed,
    Object? dateOfApproved = freezed,
    Object? approvedBy = freezed,
    Object? city = freezed,
    Object? countryId = freezed,
    Object? emailId = freezed,
    Object? authorized = freezed,
    Object? isMpinExpired = freezed,
    Object? mpinExpiry = freezed,
    Object? profileImagePath = freezed,
    Object? birthDate = freezed,
    Object? status = freezed,
    Object? reviewByUser = freezed,
    Object? apiUniqueKey = freezed,
    Object? companies = freezed,
    Object? agencyName = freezed,
    Object? designation = freezed,
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
  }) {
    return _then(_value.copyWith(
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentName: freezed == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      signaturePath: freezed == signaturePath
          ? _value.signaturePath
          : signaturePath // ignore: cast_nullable_to_non_nullable
              as String?,
      mpin: freezed == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as dynamic,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfApproved: freezed == dateOfApproved
          ? _value.dateOfApproved
          : dateOfApproved // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      authorized: freezed == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isMpinExpired: freezed == isMpinExpired
          ? _value.isMpinExpired
          : isMpinExpired // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mpinExpiry: freezed == mpinExpiry
          ? _value.mpinExpiry
          : mpinExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profileImagePath: freezed == profileImagePath
          ? _value.profileImagePath
          : profileImagePath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewByUser: freezed == reviewByUser
          ? _value.reviewByUser
          : reviewByUser // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiUniqueKey: freezed == apiUniqueKey
          ? _value.apiUniqueKey
          : apiUniqueKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agencyName: freezed == agencyName
          ? _value.agencyName
          : agencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
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
abstract class _$$GetAgentDetailsResponseBodyImplCopyWith<$Res>
    implements $GetAgentDetailsResponseBodyCopyWith<$Res> {
  factory _$$GetAgentDetailsResponseBodyImplCopyWith(
          _$GetAgentDetailsResponseBodyImpl value,
          $Res Function(_$GetAgentDetailsResponseBodyImpl) then) =
      __$$GetAgentDetailsResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentId") int? agentId,
      @JsonKey(name: "agentName") String? agentName,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "companyId") int? companyId,
      @JsonKey(name: "signaturePath") String? signaturePath,
      @JsonKey(name: "mpin") String? mpin,
      @JsonKey(name: "mobileNumber") String? mobileNumber,
      @JsonKey(name: "isApproved") dynamic isApproved,
      @JsonKey(name: "remark") dynamic remark,
      @JsonKey(name: "dateOfApproved") dynamic dateOfApproved,
      @JsonKey(name: "approvedBy") dynamic approvedBy,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "countryId") dynamic countryId,
      @JsonKey(name: "emailId") String? emailId,
      @JsonKey(name: "authorized") dynamic authorized,
      @JsonKey(name: "isMPINExpired") dynamic isMpinExpired,
      @JsonKey(name: "mpinExpiry") DateTime? mpinExpiry,
      @JsonKey(name: "profileImagePath") dynamic profileImagePath,
      @JsonKey(name: "birthDate") dynamic birthDate,
      @JsonKey(name: "status") dynamic status,
      @JsonKey(name: "reviewByUser") dynamic reviewByUser,
      @JsonKey(name: "apiUniqueKey") dynamic apiUniqueKey,
      @JsonKey(name: "companies") dynamic companies,
      @JsonKey(name: "agencyName") String? agencyName,
      @JsonKey(name: "designation") dynamic designation,
      @JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") dynamic crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy});
}

/// @nodoc
class __$$GetAgentDetailsResponseBodyImplCopyWithImpl<$Res>
    extends _$GetAgentDetailsResponseBodyCopyWithImpl<$Res,
        _$GetAgentDetailsResponseBodyImpl>
    implements _$$GetAgentDetailsResponseBodyImplCopyWith<$Res> {
  __$$GetAgentDetailsResponseBodyImplCopyWithImpl(
      _$GetAgentDetailsResponseBodyImpl _value,
      $Res Function(_$GetAgentDetailsResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentId = freezed,
    Object? agentName = freezed,
    Object? address = freezed,
    Object? companyId = freezed,
    Object? signaturePath = freezed,
    Object? mpin = freezed,
    Object? mobileNumber = freezed,
    Object? isApproved = freezed,
    Object? remark = freezed,
    Object? dateOfApproved = freezed,
    Object? approvedBy = freezed,
    Object? city = freezed,
    Object? countryId = freezed,
    Object? emailId = freezed,
    Object? authorized = freezed,
    Object? isMpinExpired = freezed,
    Object? mpinExpiry = freezed,
    Object? profileImagePath = freezed,
    Object? birthDate = freezed,
    Object? status = freezed,
    Object? reviewByUser = freezed,
    Object? apiUniqueKey = freezed,
    Object? companies = freezed,
    Object? agencyName = freezed,
    Object? designation = freezed,
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
  }) {
    return _then(_$GetAgentDetailsResponseBodyImpl(
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentName: freezed == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      companyId: freezed == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int?,
      signaturePath: freezed == signaturePath
          ? _value.signaturePath
          : signaturePath // ignore: cast_nullable_to_non_nullable
              as String?,
      mpin: freezed == mpin
          ? _value.mpin
          : mpin // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as dynamic,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateOfApproved: freezed == dateOfApproved
          ? _value.dateOfApproved
          : dateOfApproved // ignore: cast_nullable_to_non_nullable
              as dynamic,
      approvedBy: freezed == approvedBy
          ? _value.approvedBy
          : approvedBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      countryId: freezed == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      authorized: freezed == authorized
          ? _value.authorized
          : authorized // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isMpinExpired: freezed == isMpinExpired
          ? _value.isMpinExpired
          : isMpinExpired // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mpinExpiry: freezed == mpinExpiry
          ? _value.mpinExpiry
          : mpinExpiry // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profileImagePath: freezed == profileImagePath
          ? _value.profileImagePath
          : profileImagePath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reviewByUser: freezed == reviewByUser
          ? _value.reviewByUser
          : reviewByUser // ignore: cast_nullable_to_non_nullable
              as dynamic,
      apiUniqueKey: freezed == apiUniqueKey
          ? _value.apiUniqueKey
          : apiUniqueKey // ignore: cast_nullable_to_non_nullable
              as dynamic,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agencyName: freezed == agencyName
          ? _value.agencyName
          : agencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
              as dynamic,
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
class _$GetAgentDetailsResponseBodyImpl
    implements _GetAgentDetailsResponseBody {
  const _$GetAgentDetailsResponseBodyImpl(
      {@JsonKey(name: "agentId") this.agentId,
      @JsonKey(name: "agentName") this.agentName,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "companyId") this.companyId,
      @JsonKey(name: "signaturePath") this.signaturePath,
      @JsonKey(name: "mpin") this.mpin,
      @JsonKey(name: "mobileNumber") this.mobileNumber,
      @JsonKey(name: "isApproved") this.isApproved,
      @JsonKey(name: "remark") this.remark,
      @JsonKey(name: "dateOfApproved") this.dateOfApproved,
      @JsonKey(name: "approvedBy") this.approvedBy,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "countryId") this.countryId,
      @JsonKey(name: "emailId") this.emailId,
      @JsonKey(name: "authorized") this.authorized,
      @JsonKey(name: "isMPINExpired") this.isMpinExpired,
      @JsonKey(name: "mpinExpiry") this.mpinExpiry,
      @JsonKey(name: "profileImagePath") this.profileImagePath,
      @JsonKey(name: "birthDate") this.birthDate,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "reviewByUser") this.reviewByUser,
      @JsonKey(name: "apiUniqueKey") this.apiUniqueKey,
      @JsonKey(name: "companies") this.companies,
      @JsonKey(name: "agencyName") this.agencyName,
      @JsonKey(name: "designation") this.designation,
      @JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy});

  factory _$GetAgentDetailsResponseBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAgentDetailsResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "agentId")
  final int? agentId;
  @override
  @JsonKey(name: "agentName")
  final String? agentName;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "companyId")
  final int? companyId;
  @override
  @JsonKey(name: "signaturePath")
  final String? signaturePath;
  @override
  @JsonKey(name: "mpin")
  final String? mpin;
  @override
  @JsonKey(name: "mobileNumber")
  final String? mobileNumber;
  @override
  @JsonKey(name: "isApproved")
  final dynamic isApproved;
  @override
  @JsonKey(name: "remark")
  final dynamic remark;
  @override
  @JsonKey(name: "dateOfApproved")
  final dynamic dateOfApproved;
  @override
  @JsonKey(name: "approvedBy")
  final dynamic approvedBy;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "countryId")
  final dynamic countryId;
  @override
  @JsonKey(name: "emailId")
  final String? emailId;
  @override
  @JsonKey(name: "authorized")
  final dynamic authorized;
  @override
  @JsonKey(name: "isMPINExpired")
  final dynamic isMpinExpired;
  @override
  @JsonKey(name: "mpinExpiry")
  final DateTime? mpinExpiry;
  @override
  @JsonKey(name: "profileImagePath")
  final dynamic profileImagePath;
  @override
  @JsonKey(name: "birthDate")
  final dynamic birthDate;
  @override
  @JsonKey(name: "status")
  final dynamic status;
  @override
  @JsonKey(name: "reviewByUser")
  final dynamic reviewByUser;
  @override
  @JsonKey(name: "apiUniqueKey")
  final dynamic apiUniqueKey;
  @override
  @JsonKey(name: "companies")
  final dynamic companies;
  @override
  @JsonKey(name: "agencyName")
  final String? agencyName;
  @override
  @JsonKey(name: "designation")
  final dynamic designation;
  @override
  @JsonKey(name: "isDisabled")
  final bool? isDisabled;
  @override
  @JsonKey(name: "crd")
  final DateTime? crd;
  @override
  @JsonKey(name: "crdBy")
  final dynamic crdBy;
  @override
  @JsonKey(name: "lmd")
  final DateTime? lmd;
  @override
  @JsonKey(name: "lmdBy")
  final int? lmdBy;

  @override
  String toString() {
    return 'GetAgentDetailsResponseBody(agentId: $agentId, agentName: $agentName, address: $address, companyId: $companyId, signaturePath: $signaturePath, mpin: $mpin, mobileNumber: $mobileNumber, isApproved: $isApproved, remark: $remark, dateOfApproved: $dateOfApproved, approvedBy: $approvedBy, city: $city, countryId: $countryId, emailId: $emailId, authorized: $authorized, isMpinExpired: $isMpinExpired, mpinExpiry: $mpinExpiry, profileImagePath: $profileImagePath, birthDate: $birthDate, status: $status, reviewByUser: $reviewByUser, apiUniqueKey: $apiUniqueKey, companies: $companies, agencyName: $agencyName, designation: $designation, isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgentDetailsResponseBodyImpl &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.signaturePath, signaturePath) ||
                other.signaturePath == signaturePath) &&
            (identical(other.mpin, mpin) || other.mpin == mpin) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.isApproved, isApproved) &&
            const DeepCollectionEquality().equals(other.remark, remark) &&
            const DeepCollectionEquality()
                .equals(other.dateOfApproved, dateOfApproved) &&
            const DeepCollectionEquality()
                .equals(other.approvedBy, approvedBy) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            const DeepCollectionEquality()
                .equals(other.authorized, authorized) &&
            const DeepCollectionEquality()
                .equals(other.isMpinExpired, isMpinExpired) &&
            (identical(other.mpinExpiry, mpinExpiry) ||
                other.mpinExpiry == mpinExpiry) &&
            const DeepCollectionEquality()
                .equals(other.profileImagePath, profileImagePath) &&
            const DeepCollectionEquality().equals(other.birthDate, birthDate) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.reviewByUser, reviewByUser) &&
            const DeepCollectionEquality()
                .equals(other.apiUniqueKey, apiUniqueKey) &&
            const DeepCollectionEquality().equals(other.companies, companies) &&
            (identical(other.agencyName, agencyName) ||
                other.agencyName == agencyName) &&
            const DeepCollectionEquality()
                .equals(other.designation, designation) &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            const DeepCollectionEquality().equals(other.crdBy, crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        agentId,
        agentName,
        address,
        companyId,
        signaturePath,
        mpin,
        mobileNumber,
        const DeepCollectionEquality().hash(isApproved),
        const DeepCollectionEquality().hash(remark),
        const DeepCollectionEquality().hash(dateOfApproved),
        const DeepCollectionEquality().hash(approvedBy),
        city,
        const DeepCollectionEquality().hash(countryId),
        emailId,
        const DeepCollectionEquality().hash(authorized),
        const DeepCollectionEquality().hash(isMpinExpired),
        mpinExpiry,
        const DeepCollectionEquality().hash(profileImagePath),
        const DeepCollectionEquality().hash(birthDate),
        const DeepCollectionEquality().hash(status),
        const DeepCollectionEquality().hash(reviewByUser),
        const DeepCollectionEquality().hash(apiUniqueKey),
        const DeepCollectionEquality().hash(companies),
        agencyName,
        const DeepCollectionEquality().hash(designation),
        isDisabled,
        crd,
        const DeepCollectionEquality().hash(crdBy),
        lmd,
        lmdBy
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAgentDetailsResponseBodyImplCopyWith<_$GetAgentDetailsResponseBodyImpl>
      get copyWith => __$$GetAgentDetailsResponseBodyImplCopyWithImpl<
          _$GetAgentDetailsResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAgentDetailsResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _GetAgentDetailsResponseBody
    implements GetAgentDetailsResponseBody {
  const factory _GetAgentDetailsResponseBody(
          {@JsonKey(name: "agentId") final int? agentId,
          @JsonKey(name: "agentName") final String? agentName,
          @JsonKey(name: "address") final String? address,
          @JsonKey(name: "companyId") final int? companyId,
          @JsonKey(name: "signaturePath") final String? signaturePath,
          @JsonKey(name: "mpin") final String? mpin,
          @JsonKey(name: "mobileNumber") final String? mobileNumber,
          @JsonKey(name: "isApproved") final dynamic isApproved,
          @JsonKey(name: "remark") final dynamic remark,
          @JsonKey(name: "dateOfApproved") final dynamic dateOfApproved,
          @JsonKey(name: "approvedBy") final dynamic approvedBy,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "countryId") final dynamic countryId,
          @JsonKey(name: "emailId") final String? emailId,
          @JsonKey(name: "authorized") final dynamic authorized,
          @JsonKey(name: "isMPINExpired") final dynamic isMpinExpired,
          @JsonKey(name: "mpinExpiry") final DateTime? mpinExpiry,
          @JsonKey(name: "profileImagePath") final dynamic profileImagePath,
          @JsonKey(name: "birthDate") final dynamic birthDate,
          @JsonKey(name: "status") final dynamic status,
          @JsonKey(name: "reviewByUser") final dynamic reviewByUser,
          @JsonKey(name: "apiUniqueKey") final dynamic apiUniqueKey,
          @JsonKey(name: "companies") final dynamic companies,
          @JsonKey(name: "agencyName") final String? agencyName,
          @JsonKey(name: "designation") final dynamic designation,
          @JsonKey(name: "isDisabled") final bool? isDisabled,
          @JsonKey(name: "crd") final DateTime? crd,
          @JsonKey(name: "crdBy") final dynamic crdBy,
          @JsonKey(name: "lmd") final DateTime? lmd,
          @JsonKey(name: "lmdBy") final int? lmdBy}) =
      _$GetAgentDetailsResponseBodyImpl;

  factory _GetAgentDetailsResponseBody.fromJson(Map<String, dynamic> json) =
      _$GetAgentDetailsResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "agentId")
  int? get agentId;
  @override
  @JsonKey(name: "agentName")
  String? get agentName;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "companyId")
  int? get companyId;
  @override
  @JsonKey(name: "signaturePath")
  String? get signaturePath;
  @override
  @JsonKey(name: "mpin")
  String? get mpin;
  @override
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber;
  @override
  @JsonKey(name: "isApproved")
  dynamic get isApproved;
  @override
  @JsonKey(name: "remark")
  dynamic get remark;
  @override
  @JsonKey(name: "dateOfApproved")
  dynamic get dateOfApproved;
  @override
  @JsonKey(name: "approvedBy")
  dynamic get approvedBy;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "countryId")
  dynamic get countryId;
  @override
  @JsonKey(name: "emailId")
  String? get emailId;
  @override
  @JsonKey(name: "authorized")
  dynamic get authorized;
  @override
  @JsonKey(name: "isMPINExpired")
  dynamic get isMpinExpired;
  @override
  @JsonKey(name: "mpinExpiry")
  DateTime? get mpinExpiry;
  @override
  @JsonKey(name: "profileImagePath")
  dynamic get profileImagePath;
  @override
  @JsonKey(name: "birthDate")
  dynamic get birthDate;
  @override
  @JsonKey(name: "status")
  dynamic get status;
  @override
  @JsonKey(name: "reviewByUser")
  dynamic get reviewByUser;
  @override
  @JsonKey(name: "apiUniqueKey")
  dynamic get apiUniqueKey;
  @override
  @JsonKey(name: "companies")
  dynamic get companies;
  @override
  @JsonKey(name: "agencyName")
  String? get agencyName;
  @override
  @JsonKey(name: "designation")
  dynamic get designation;
  @override
  @JsonKey(name: "isDisabled")
  bool? get isDisabled;
  @override
  @JsonKey(name: "crd")
  DateTime? get crd;
  @override
  @JsonKey(name: "crdBy")
  dynamic get crdBy;
  @override
  @JsonKey(name: "lmd")
  DateTime? get lmd;
  @override
  @JsonKey(name: "lmdBy")
  int? get lmdBy;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentDetailsResponseBodyImplCopyWith<_$GetAgentDetailsResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
