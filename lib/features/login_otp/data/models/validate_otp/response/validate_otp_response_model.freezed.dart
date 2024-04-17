// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validate_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ValidateOtpResponseModel _$ValidateOtpResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ValidateOtpResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ValidateOtpResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  ValidateOTPData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateOtpResponseModelCopyWith<ValidateOtpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOtpResponseModelCopyWith<$Res> {
  factory $ValidateOtpResponseModelCopyWith(ValidateOtpResponseModel value,
          $Res Function(ValidateOtpResponseModel) then) =
      _$ValidateOtpResponseModelCopyWithImpl<$Res, ValidateOtpResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ValidateOTPData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $ValidateOTPDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$ValidateOtpResponseModelCopyWithImpl<$Res,
        $Val extends ValidateOtpResponseModel>
    implements $ValidateOtpResponseModelCopyWith<$Res> {
  _$ValidateOtpResponseModelCopyWithImpl(this._value, this._then);

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
              as ValidateOTPData?,
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
  $ValidateOTPDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $ValidateOTPDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$ValidateOtpResponseModelImplCopyWith<$Res>
    implements $ValidateOtpResponseModelCopyWith<$Res> {
  factory _$$ValidateOtpResponseModelImplCopyWith(
          _$ValidateOtpResponseModelImpl value,
          $Res Function(_$ValidateOtpResponseModelImpl) then) =
      __$$ValidateOtpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ValidateOTPData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $ValidateOTPDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$ValidateOtpResponseModelImplCopyWithImpl<$Res>
    extends _$ValidateOtpResponseModelCopyWithImpl<$Res,
        _$ValidateOtpResponseModelImpl>
    implements _$$ValidateOtpResponseModelImplCopyWith<$Res> {
  __$$ValidateOtpResponseModelImplCopyWithImpl(
      _$ValidateOtpResponseModelImpl _value,
      $Res Function(_$ValidateOtpResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ValidateOtpResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ValidateOTPData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateOtpResponseModelImpl implements _ValidateOtpResponseModel {
  const _$ValidateOtpResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$ValidateOtpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateOtpResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final ValidateOTPData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'ValidateOtpResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOtpResponseModelImpl &&
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
  _$$ValidateOtpResponseModelImplCopyWith<_$ValidateOtpResponseModelImpl>
      get copyWith => __$$ValidateOtpResponseModelImplCopyWithImpl<
          _$ValidateOtpResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateOtpResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ValidateOtpResponseModel implements ValidateOtpResponseModel {
  const factory _ValidateOtpResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final ValidateOTPData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$ValidateOtpResponseModelImpl;

  factory _ValidateOtpResponseModel.fromJson(Map<String, dynamic> json) =
      _$ValidateOtpResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  ValidateOTPData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$ValidateOtpResponseModelImplCopyWith<_$ValidateOtpResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ValidateOTPData _$ValidateOTPDataFromJson(Map<String, dynamic> json) {
  return _ValidateOTPData.fromJson(json);
}

/// @nodoc
mixin _$ValidateOTPData {
  @JsonKey(name: "rb")
  ValidateOTPResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateOTPDataCopyWith<ValidateOTPData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOTPDataCopyWith<$Res> {
  factory $ValidateOTPDataCopyWith(
          ValidateOTPData value, $Res Function(ValidateOTPData) then) =
      _$ValidateOTPDataCopyWithImpl<$Res, ValidateOTPData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ValidateOTPResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $ValidateOTPResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$ValidateOTPDataCopyWithImpl<$Res, $Val extends ValidateOTPData>
    implements $ValidateOTPDataCopyWith<$Res> {
  _$ValidateOTPDataCopyWithImpl(this._value, this._then);

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
              as ValidateOTPResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ValidateOTPResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $ValidateOTPResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidateOTPDataImplCopyWith<$Res>
    implements $ValidateOTPDataCopyWith<$Res> {
  factory _$$ValidateOTPDataImplCopyWith(_$ValidateOTPDataImpl value,
          $Res Function(_$ValidateOTPDataImpl) then) =
      __$$ValidateOTPDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ValidateOTPResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $ValidateOTPResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$ValidateOTPDataImplCopyWithImpl<$Res>
    extends _$ValidateOTPDataCopyWithImpl<$Res, _$ValidateOTPDataImpl>
    implements _$$ValidateOTPDataImplCopyWith<$Res> {
  __$$ValidateOTPDataImplCopyWithImpl(
      _$ValidateOTPDataImpl _value, $Res Function(_$ValidateOTPDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$ValidateOTPDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as ValidateOTPResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateOTPDataImpl implements _ValidateOTPData {
  const _$ValidateOTPDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$ValidateOTPDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateOTPDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final ValidateOTPResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'ValidateOTPData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOTPDataImpl &&
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
  _$$ValidateOTPDataImplCopyWith<_$ValidateOTPDataImpl> get copyWith =>
      __$$ValidateOTPDataImplCopyWithImpl<_$ValidateOTPDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateOTPDataImplToJson(
      this,
    );
  }
}

abstract class _ValidateOTPData implements ValidateOTPData {
  const factory _ValidateOTPData(
          {@JsonKey(name: "rb") final ValidateOTPResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$ValidateOTPDataImpl;

  factory _ValidateOTPData.fromJson(Map<String, dynamic> json) =
      _$ValidateOTPDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  ValidateOTPResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$ValidateOTPDataImplCopyWith<_$ValidateOTPDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ValidateOTPResponseBody _$ValidateOTPResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _ValidateOTPResponseBody.fromJson(json);
}

/// @nodoc
mixin _$ValidateOTPResponseBody {
  @JsonKey(name: "agentName")
  String? get agentName => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "companyName")
  dynamic get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: "emailId")
  String? get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: "designation")
  dynamic get designation => throw _privateConstructorUsedError;
  @JsonKey(name: "agencyName")
  String? get agencyName => throw _privateConstructorUsedError;
  @JsonKey(name: "companies")
  List<Company>? get companies => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenData")
  TokenData? get tokenData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ValidateOTPResponseBodyCopyWith<ValidateOTPResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidateOTPResponseBodyCopyWith<$Res> {
  factory $ValidateOTPResponseBodyCopyWith(ValidateOTPResponseBody value,
          $Res Function(ValidateOTPResponseBody) then) =
      _$ValidateOTPResponseBodyCopyWithImpl<$Res, ValidateOTPResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentName") String? agentName,
      @JsonKey(name: "mobileNumber") String? mobileNumber,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "companyName") dynamic companyName,
      @JsonKey(name: "emailId") String? emailId,
      @JsonKey(name: "designation") dynamic designation,
      @JsonKey(name: "agencyName") String? agencyName,
      @JsonKey(name: "companies") List<Company>? companies,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$ValidateOTPResponseBodyCopyWithImpl<$Res,
        $Val extends ValidateOTPResponseBody>
    implements $ValidateOTPResponseBodyCopyWith<$Res> {
  _$ValidateOTPResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentName = freezed,
    Object? mobileNumber = freezed,
    Object? address = freezed,
    Object? companyName = freezed,
    Object? emailId = freezed,
    Object? designation = freezed,
    Object? agencyName = freezed,
    Object? companies = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_value.copyWith(
      agentName: freezed == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agencyName: freezed == agencyName
          ? _value.agencyName
          : agencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companies: freezed == companies
          ? _value.companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>?,
      tokenData: freezed == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as TokenData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenDataCopyWith<$Res>? get tokenData {
    if (_value.tokenData == null) {
      return null;
    }

    return $TokenDataCopyWith<$Res>(_value.tokenData!, (value) {
      return _then(_value.copyWith(tokenData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ValidateOTPResponseBodyImplCopyWith<$Res>
    implements $ValidateOTPResponseBodyCopyWith<$Res> {
  factory _$$ValidateOTPResponseBodyImplCopyWith(
          _$ValidateOTPResponseBodyImpl value,
          $Res Function(_$ValidateOTPResponseBodyImpl) then) =
      __$$ValidateOTPResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentName") String? agentName,
      @JsonKey(name: "mobileNumber") String? mobileNumber,
      @JsonKey(name: "address") String? address,
      @JsonKey(name: "companyName") dynamic companyName,
      @JsonKey(name: "emailId") String? emailId,
      @JsonKey(name: "designation") dynamic designation,
      @JsonKey(name: "agencyName") String? agencyName,
      @JsonKey(name: "companies") List<Company>? companies,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  @override
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$$ValidateOTPResponseBodyImplCopyWithImpl<$Res>
    extends _$ValidateOTPResponseBodyCopyWithImpl<$Res,
        _$ValidateOTPResponseBodyImpl>
    implements _$$ValidateOTPResponseBodyImplCopyWith<$Res> {
  __$$ValidateOTPResponseBodyImplCopyWithImpl(
      _$ValidateOTPResponseBodyImpl _value,
      $Res Function(_$ValidateOTPResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentName = freezed,
    Object? mobileNumber = freezed,
    Object? address = freezed,
    Object? companyName = freezed,
    Object? emailId = freezed,
    Object? designation = freezed,
    Object? agencyName = freezed,
    Object? companies = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_$ValidateOTPResponseBodyImpl(
      agentName: freezed == agentName
          ? _value.agentName
          : agentName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      agencyName: freezed == agencyName
          ? _value.agencyName
          : agencyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companies: freezed == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>?,
      tokenData: freezed == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as TokenData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ValidateOTPResponseBodyImpl implements _ValidateOTPResponseBody {
  const _$ValidateOTPResponseBodyImpl(
      {@JsonKey(name: "agentName") this.agentName,
      @JsonKey(name: "mobileNumber") this.mobileNumber,
      @JsonKey(name: "address") this.address,
      @JsonKey(name: "companyName") this.companyName,
      @JsonKey(name: "emailId") this.emailId,
      @JsonKey(name: "designation") this.designation,
      @JsonKey(name: "agencyName") this.agencyName,
      @JsonKey(name: "companies") final List<Company>? companies,
      @JsonKey(name: "tokenData") this.tokenData})
      : _companies = companies;

  factory _$ValidateOTPResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ValidateOTPResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "agentName")
  final String? agentName;
  @override
  @JsonKey(name: "mobileNumber")
  final String? mobileNumber;
  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "companyName")
  final dynamic companyName;
  @override
  @JsonKey(name: "emailId")
  final String? emailId;
  @override
  @JsonKey(name: "designation")
  final dynamic designation;
  @override
  @JsonKey(name: "agencyName")
  final String? agencyName;
  final List<Company>? _companies;
  @override
  @JsonKey(name: "companies")
  List<Company>? get companies {
    final value = _companies;
    if (value == null) return null;
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "tokenData")
  final TokenData? tokenData;

  @override
  String toString() {
    return 'ValidateOTPResponseBody(agentName: $agentName, mobileNumber: $mobileNumber, address: $address, companyName: $companyName, emailId: $emailId, designation: $designation, agencyName: $agencyName, companies: $companies, tokenData: $tokenData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateOTPResponseBodyImpl &&
            (identical(other.agentName, agentName) ||
                other.agentName == agentName) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other.companyName, companyName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            const DeepCollectionEquality()
                .equals(other.designation, designation) &&
            (identical(other.agencyName, agencyName) ||
                other.agencyName == agencyName) &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies) &&
            (identical(other.tokenData, tokenData) ||
                other.tokenData == tokenData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      agentName,
      mobileNumber,
      address,
      const DeepCollectionEquality().hash(companyName),
      emailId,
      const DeepCollectionEquality().hash(designation),
      agencyName,
      const DeepCollectionEquality().hash(_companies),
      tokenData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateOTPResponseBodyImplCopyWith<_$ValidateOTPResponseBodyImpl>
      get copyWith => __$$ValidateOTPResponseBodyImplCopyWithImpl<
          _$ValidateOTPResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ValidateOTPResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _ValidateOTPResponseBody implements ValidateOTPResponseBody {
  const factory _ValidateOTPResponseBody(
          {@JsonKey(name: "agentName") final String? agentName,
          @JsonKey(name: "mobileNumber") final String? mobileNumber,
          @JsonKey(name: "address") final String? address,
          @JsonKey(name: "companyName") final dynamic companyName,
          @JsonKey(name: "emailId") final String? emailId,
          @JsonKey(name: "designation") final dynamic designation,
          @JsonKey(name: "agencyName") final String? agencyName,
          @JsonKey(name: "companies") final List<Company>? companies,
          @JsonKey(name: "tokenData") final TokenData? tokenData}) =
      _$ValidateOTPResponseBodyImpl;

  factory _ValidateOTPResponseBody.fromJson(Map<String, dynamic> json) =
      _$ValidateOTPResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "agentName")
  String? get agentName;
  @override
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber;
  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "companyName")
  dynamic get companyName;
  @override
  @JsonKey(name: "emailId")
  String? get emailId;
  @override
  @JsonKey(name: "designation")
  dynamic get designation;
  @override
  @JsonKey(name: "agencyName")
  String? get agencyName;
  @override
  @JsonKey(name: "companies")
  List<Company>? get companies;
  @override
  @JsonKey(name: "tokenData")
  TokenData? get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$ValidateOTPResponseBodyImplCopyWith<_$ValidateOTPResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
