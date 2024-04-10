// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_document_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScanDocumentRequestModel _$ScanDocumentRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ScanDocumentRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ScanDocumentRequestModel {
  @JsonKey(name: "applicantType")
  String? get applicantType => throw _privateConstructorUsedError;
  @JsonKey(name: "policyType")
  String? get policyType => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCategory")
  String? get documentCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "documentType")
  String? get documentType => throw _privateConstructorUsedError;
  @JsonKey(name: "documentSide")
  String? get documentSide => throw _privateConstructorUsedError;
  @JsonKey(name: "customerId")
  String? get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: "policyNumber")
  String? get policyNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "fileExtension")
  String? get fileExtension => throw _privateConstructorUsedError;
  @JsonKey(name: "nicNumber")
  String? get nicNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "passportNumber")
  String? get passportNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "quoteNumber")
  String? get quoteNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "verificationData")
  VerificationData? get verificationData => throw _privateConstructorUsedError;
  @JsonKey(name: "base64Doc")
  String? get base64Doc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScanDocumentRequestModelCopyWith<ScanDocumentRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanDocumentRequestModelCopyWith<$Res> {
  factory $ScanDocumentRequestModelCopyWith(ScanDocumentRequestModel value,
          $Res Function(ScanDocumentRequestModel) then) =
      _$ScanDocumentRequestModelCopyWithImpl<$Res, ScanDocumentRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "applicantType") String? applicantType,
      @JsonKey(name: "policyType") String? policyType,
      @JsonKey(name: "documentCategory") String? documentCategory,
      @JsonKey(name: "documentType") String? documentType,
      @JsonKey(name: "documentSide") String? documentSide,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "policyNumber") String? policyNumber,
      @JsonKey(name: "fileExtension") String? fileExtension,
      @JsonKey(name: "nicNumber") String? nicNumber,
      @JsonKey(name: "passportNumber") String? passportNumber,
      @JsonKey(name: "quoteNumber") String? quoteNumber,
      @JsonKey(name: "verificationData") VerificationData? verificationData,
      @JsonKey(name: "base64Doc") String? base64Doc});

  $VerificationDataCopyWith<$Res>? get verificationData;
}

/// @nodoc
class _$ScanDocumentRequestModelCopyWithImpl<$Res,
        $Val extends ScanDocumentRequestModel>
    implements $ScanDocumentRequestModelCopyWith<$Res> {
  _$ScanDocumentRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicantType = freezed,
    Object? policyType = freezed,
    Object? documentCategory = freezed,
    Object? documentType = freezed,
    Object? documentSide = freezed,
    Object? customerId = freezed,
    Object? policyNumber = freezed,
    Object? fileExtension = freezed,
    Object? nicNumber = freezed,
    Object? passportNumber = freezed,
    Object? quoteNumber = freezed,
    Object? verificationData = freezed,
    Object? base64Doc = freezed,
  }) {
    return _then(_value.copyWith(
      applicantType: freezed == applicantType
          ? _value.applicantType
          : applicantType // ignore: cast_nullable_to_non_nullable
              as String?,
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCategory: freezed == documentCategory
          ? _value.documentCategory
          : documentCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentSide: freezed == documentSide
          ? _value.documentSide
          : documentSide // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      policyNumber: freezed == policyNumber
          ? _value.policyNumber
          : policyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileExtension: freezed == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      nicNumber: freezed == nicNumber
          ? _value.nicNumber
          : nicNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNumber: freezed == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteNumber: freezed == quoteNumber
          ? _value.quoteNumber
          : quoteNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationData: freezed == verificationData
          ? _value.verificationData
          : verificationData // ignore: cast_nullable_to_non_nullable
              as VerificationData?,
      base64Doc: freezed == base64Doc
          ? _value.base64Doc
          : base64Doc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerificationDataCopyWith<$Res>? get verificationData {
    if (_value.verificationData == null) {
      return null;
    }

    return $VerificationDataCopyWith<$Res>(_value.verificationData!, (value) {
      return _then(_value.copyWith(verificationData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScanDocumentRequestModelImplCopyWith<$Res>
    implements $ScanDocumentRequestModelCopyWith<$Res> {
  factory _$$ScanDocumentRequestModelImplCopyWith(
          _$ScanDocumentRequestModelImpl value,
          $Res Function(_$ScanDocumentRequestModelImpl) then) =
      __$$ScanDocumentRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "applicantType") String? applicantType,
      @JsonKey(name: "policyType") String? policyType,
      @JsonKey(name: "documentCategory") String? documentCategory,
      @JsonKey(name: "documentType") String? documentType,
      @JsonKey(name: "documentSide") String? documentSide,
      @JsonKey(name: "customerId") String? customerId,
      @JsonKey(name: "policyNumber") String? policyNumber,
      @JsonKey(name: "fileExtension") String? fileExtension,
      @JsonKey(name: "nicNumber") String? nicNumber,
      @JsonKey(name: "passportNumber") String? passportNumber,
      @JsonKey(name: "quoteNumber") String? quoteNumber,
      @JsonKey(name: "verificationData") VerificationData? verificationData,
      @JsonKey(name: "base64Doc") String? base64Doc});

  @override
  $VerificationDataCopyWith<$Res>? get verificationData;
}

/// @nodoc
class __$$ScanDocumentRequestModelImplCopyWithImpl<$Res>
    extends _$ScanDocumentRequestModelCopyWithImpl<$Res,
        _$ScanDocumentRequestModelImpl>
    implements _$$ScanDocumentRequestModelImplCopyWith<$Res> {
  __$$ScanDocumentRequestModelImplCopyWithImpl(
      _$ScanDocumentRequestModelImpl _value,
      $Res Function(_$ScanDocumentRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicantType = freezed,
    Object? policyType = freezed,
    Object? documentCategory = freezed,
    Object? documentType = freezed,
    Object? documentSide = freezed,
    Object? customerId = freezed,
    Object? policyNumber = freezed,
    Object? fileExtension = freezed,
    Object? nicNumber = freezed,
    Object? passportNumber = freezed,
    Object? quoteNumber = freezed,
    Object? verificationData = freezed,
    Object? base64Doc = freezed,
  }) {
    return _then(_$ScanDocumentRequestModelImpl(
      applicantType: freezed == applicantType
          ? _value.applicantType
          : applicantType // ignore: cast_nullable_to_non_nullable
              as String?,
      policyType: freezed == policyType
          ? _value.policyType
          : policyType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentCategory: freezed == documentCategory
          ? _value.documentCategory
          : documentCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String?,
      documentSide: freezed == documentSide
          ? _value.documentSide
          : documentSide // ignore: cast_nullable_to_non_nullable
              as String?,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      policyNumber: freezed == policyNumber
          ? _value.policyNumber
          : policyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      fileExtension: freezed == fileExtension
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as String?,
      nicNumber: freezed == nicNumber
          ? _value.nicNumber
          : nicNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      passportNumber: freezed == passportNumber
          ? _value.passportNumber
          : passportNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      quoteNumber: freezed == quoteNumber
          ? _value.quoteNumber
          : quoteNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      verificationData: freezed == verificationData
          ? _value.verificationData
          : verificationData // ignore: cast_nullable_to_non_nullable
              as VerificationData?,
      base64Doc: freezed == base64Doc
          ? _value.base64Doc
          : base64Doc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScanDocumentRequestModelImpl implements _ScanDocumentRequestModel {
  const _$ScanDocumentRequestModelImpl(
      {@JsonKey(name: "applicantType") this.applicantType,
      @JsonKey(name: "policyType") this.policyType,
      @JsonKey(name: "documentCategory") this.documentCategory,
      @JsonKey(name: "documentType") this.documentType,
      @JsonKey(name: "documentSide") this.documentSide,
      @JsonKey(name: "customerId") this.customerId,
      @JsonKey(name: "policyNumber") this.policyNumber,
      @JsonKey(name: "fileExtension") this.fileExtension,
      @JsonKey(name: "nicNumber") this.nicNumber,
      @JsonKey(name: "passportNumber") this.passportNumber,
      @JsonKey(name: "quoteNumber") this.quoteNumber,
      @JsonKey(name: "verificationData") this.verificationData,
      @JsonKey(name: "base64Doc") this.base64Doc});

  factory _$ScanDocumentRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScanDocumentRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "applicantType")
  final String? applicantType;
  @override
  @JsonKey(name: "policyType")
  final String? policyType;
  @override
  @JsonKey(name: "documentCategory")
  final String? documentCategory;
  @override
  @JsonKey(name: "documentType")
  final String? documentType;
  @override
  @JsonKey(name: "documentSide")
  final String? documentSide;
  @override
  @JsonKey(name: "customerId")
  final String? customerId;
  @override
  @JsonKey(name: "policyNumber")
  final String? policyNumber;
  @override
  @JsonKey(name: "fileExtension")
  final String? fileExtension;
  @override
  @JsonKey(name: "nicNumber")
  final String? nicNumber;
  @override
  @JsonKey(name: "passportNumber")
  final String? passportNumber;
  @override
  @JsonKey(name: "quoteNumber")
  final String? quoteNumber;
  @override
  @JsonKey(name: "verificationData")
  final VerificationData? verificationData;
  @override
  @JsonKey(name: "base64Doc")
  final String? base64Doc;

  @override
  String toString() {
    return 'ScanDocumentRequestModel(applicantType: $applicantType, policyType: $policyType, documentCategory: $documentCategory, documentType: $documentType, documentSide: $documentSide, customerId: $customerId, policyNumber: $policyNumber, fileExtension: $fileExtension, nicNumber: $nicNumber, passportNumber: $passportNumber, quoteNumber: $quoteNumber, verificationData: $verificationData, base64Doc: $base64Doc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScanDocumentRequestModelImpl &&
            (identical(other.applicantType, applicantType) ||
                other.applicantType == applicantType) &&
            (identical(other.policyType, policyType) ||
                other.policyType == policyType) &&
            (identical(other.documentCategory, documentCategory) ||
                other.documentCategory == documentCategory) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.documentSide, documentSide) ||
                other.documentSide == documentSide) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.policyNumber, policyNumber) ||
                other.policyNumber == policyNumber) &&
            (identical(other.fileExtension, fileExtension) ||
                other.fileExtension == fileExtension) &&
            (identical(other.nicNumber, nicNumber) ||
                other.nicNumber == nicNumber) &&
            (identical(other.passportNumber, passportNumber) ||
                other.passportNumber == passportNumber) &&
            (identical(other.quoteNumber, quoteNumber) ||
                other.quoteNumber == quoteNumber) &&
            (identical(other.verificationData, verificationData) ||
                other.verificationData == verificationData) &&
            (identical(other.base64Doc, base64Doc) ||
                other.base64Doc == base64Doc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      applicantType,
      policyType,
      documentCategory,
      documentType,
      documentSide,
      customerId,
      policyNumber,
      fileExtension,
      nicNumber,
      passportNumber,
      quoteNumber,
      verificationData,
      base64Doc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanDocumentRequestModelImplCopyWith<_$ScanDocumentRequestModelImpl>
      get copyWith => __$$ScanDocumentRequestModelImplCopyWithImpl<
          _$ScanDocumentRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanDocumentRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ScanDocumentRequestModel implements ScanDocumentRequestModel {
  const factory _ScanDocumentRequestModel(
          {@JsonKey(name: "applicantType") final String? applicantType,
          @JsonKey(name: "policyType") final String? policyType,
          @JsonKey(name: "documentCategory") final String? documentCategory,
          @JsonKey(name: "documentType") final String? documentType,
          @JsonKey(name: "documentSide") final String? documentSide,
          @JsonKey(name: "customerId") final String? customerId,
          @JsonKey(name: "policyNumber") final String? policyNumber,
          @JsonKey(name: "fileExtension") final String? fileExtension,
          @JsonKey(name: "nicNumber") final String? nicNumber,
          @JsonKey(name: "passportNumber") final String? passportNumber,
          @JsonKey(name: "quoteNumber") final String? quoteNumber,
          @JsonKey(name: "verificationData")
          final VerificationData? verificationData,
          @JsonKey(name: "base64Doc") final String? base64Doc}) =
      _$ScanDocumentRequestModelImpl;

  factory _ScanDocumentRequestModel.fromJson(Map<String, dynamic> json) =
      _$ScanDocumentRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "applicantType")
  String? get applicantType;
  @override
  @JsonKey(name: "policyType")
  String? get policyType;
  @override
  @JsonKey(name: "documentCategory")
  String? get documentCategory;
  @override
  @JsonKey(name: "documentType")
  String? get documentType;
  @override
  @JsonKey(name: "documentSide")
  String? get documentSide;
  @override
  @JsonKey(name: "customerId")
  String? get customerId;
  @override
  @JsonKey(name: "policyNumber")
  String? get policyNumber;
  @override
  @JsonKey(name: "fileExtension")
  String? get fileExtension;
  @override
  @JsonKey(name: "nicNumber")
  String? get nicNumber;
  @override
  @JsonKey(name: "passportNumber")
  String? get passportNumber;
  @override
  @JsonKey(name: "quoteNumber")
  String? get quoteNumber;
  @override
  @JsonKey(name: "verificationData")
  VerificationData? get verificationData;
  @override
  @JsonKey(name: "base64Doc")
  String? get base64Doc;
  @override
  @JsonKey(ignore: true)
  _$$ScanDocumentRequestModelImplCopyWith<_$ScanDocumentRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerificationData _$VerificationDataFromJson(Map<String, dynamic> json) {
  return _VerificationData.fromJson(json);
}

/// @nodoc
mixin _$VerificationData {
  @JsonKey(name: "firstName")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "surname")
  String? get surname => throw _privateConstructorUsedError;
  @JsonKey(name: "idNumber")
  String? get idNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "billDate")
  String? get billDate => throw _privateConstructorUsedError;
  @JsonKey(name: "registration_Mark")
  String? get registrationMark => throw _privateConstructorUsedError;
  @JsonKey(name: "issueDate")
  String? get issueDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationDataCopyWith<VerificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationDataCopyWith<$Res> {
  factory $VerificationDataCopyWith(
          VerificationData value, $Res Function(VerificationData) then) =
      _$VerificationDataCopyWithImpl<$Res, VerificationData>;
  @useResult
  $Res call(
      {@JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "surname") String? surname,
      @JsonKey(name: "idNumber") String? idNumber,
      @JsonKey(name: "billDate") String? billDate,
      @JsonKey(name: "registration_Mark") String? registrationMark,
      @JsonKey(name: "issueDate") String? issueDate});
}

/// @nodoc
class _$VerificationDataCopyWithImpl<$Res, $Val extends VerificationData>
    implements $VerificationDataCopyWith<$Res> {
  _$VerificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? surname = freezed,
    Object? idNumber = freezed,
    Object? billDate = freezed,
    Object? registrationMark = freezed,
    Object? issueDate = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      billDate: freezed == billDate
          ? _value.billDate
          : billDate // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationMark: freezed == registrationMark
          ? _value.registrationMark
          : registrationMark // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerificationDataImplCopyWith<$Res>
    implements $VerificationDataCopyWith<$Res> {
  factory _$$VerificationDataImplCopyWith(_$VerificationDataImpl value,
          $Res Function(_$VerificationDataImpl) then) =
      __$$VerificationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "firstName") String? firstName,
      @JsonKey(name: "surname") String? surname,
      @JsonKey(name: "idNumber") String? idNumber,
      @JsonKey(name: "billDate") String? billDate,
      @JsonKey(name: "registration_Mark") String? registrationMark,
      @JsonKey(name: "issueDate") String? issueDate});
}

/// @nodoc
class __$$VerificationDataImplCopyWithImpl<$Res>
    extends _$VerificationDataCopyWithImpl<$Res, _$VerificationDataImpl>
    implements _$$VerificationDataImplCopyWith<$Res> {
  __$$VerificationDataImplCopyWithImpl(_$VerificationDataImpl _value,
      $Res Function(_$VerificationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = freezed,
    Object? surname = freezed,
    Object? idNumber = freezed,
    Object? billDate = freezed,
    Object? registrationMark = freezed,
    Object? issueDate = freezed,
  }) {
    return _then(_$VerificationDataImpl(
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      idNumber: freezed == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      billDate: freezed == billDate
          ? _value.billDate
          : billDate // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationMark: freezed == registrationMark
          ? _value.registrationMark
          : registrationMark // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationDataImpl implements _VerificationData {
  const _$VerificationDataImpl(
      {@JsonKey(name: "firstName") this.firstName,
      @JsonKey(name: "surname") this.surname,
      @JsonKey(name: "idNumber") this.idNumber,
      @JsonKey(name: "billDate") this.billDate,
      @JsonKey(name: "registration_Mark") this.registrationMark,
      @JsonKey(name: "issueDate") this.issueDate});

  factory _$VerificationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationDataImplFromJson(json);

  @override
  @JsonKey(name: "firstName")
  final String? firstName;
  @override
  @JsonKey(name: "surname")
  final String? surname;
  @override
  @JsonKey(name: "idNumber")
  final String? idNumber;
  @override
  @JsonKey(name: "billDate")
  final String? billDate;
  @override
  @JsonKey(name: "registration_Mark")
  final String? registrationMark;
  @override
  @JsonKey(name: "issueDate")
  final String? issueDate;

  @override
  String toString() {
    return 'VerificationData(firstName: $firstName, surname: $surname, idNumber: $idNumber, billDate: $billDate, registrationMark: $registrationMark, issueDate: $issueDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationDataImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.billDate, billDate) ||
                other.billDate == billDate) &&
            (identical(other.registrationMark, registrationMark) ||
                other.registrationMark == registrationMark) &&
            (identical(other.issueDate, issueDate) ||
                other.issueDate == issueDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firstName, surname, idNumber,
      billDate, registrationMark, issueDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationDataImplCopyWith<_$VerificationDataImpl> get copyWith =>
      __$$VerificationDataImplCopyWithImpl<_$VerificationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationDataImplToJson(
      this,
    );
  }
}

abstract class _VerificationData implements VerificationData {
  const factory _VerificationData(
          {@JsonKey(name: "firstName") final String? firstName,
          @JsonKey(name: "surname") final String? surname,
          @JsonKey(name: "idNumber") final String? idNumber,
          @JsonKey(name: "billDate") final String? billDate,
          @JsonKey(name: "registration_Mark") final String? registrationMark,
          @JsonKey(name: "issueDate") final String? issueDate}) =
      _$VerificationDataImpl;

  factory _VerificationData.fromJson(Map<String, dynamic> json) =
      _$VerificationDataImpl.fromJson;

  @override
  @JsonKey(name: "firstName")
  String? get firstName;
  @override
  @JsonKey(name: "surname")
  String? get surname;
  @override
  @JsonKey(name: "idNumber")
  String? get idNumber;
  @override
  @JsonKey(name: "billDate")
  String? get billDate;
  @override
  @JsonKey(name: "registration_Mark")
  String? get registrationMark;
  @override
  @JsonKey(name: "issueDate")
  String? get issueDate;
  @override
  @JsonKey(ignore: true)
  _$$VerificationDataImplCopyWith<_$VerificationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
