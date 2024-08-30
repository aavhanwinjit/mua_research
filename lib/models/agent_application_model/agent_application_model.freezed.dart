// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agent_application_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AgentApplicationModel _$AgentApplicationModelFromJson(Map<String, dynamic> json) {
  return _AgentApplicationModel.fromJson(json);
}

/// @nodoc
mixin _$AgentApplicationModel {
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
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "applicationRefNo")
  String? get applicationRefNo => throw _privateConstructorUsedError;
  @JsonKey(name: "agentId")
  int? get agentId => throw _privateConstructorUsedError;
  @JsonKey(name: "applicationStatus")
  String? get applicationStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "emailId")
  String? get emailId => throw _privateConstructorUsedError;
  @JsonKey(name: "maritalStatus")
  String? get maritalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: "nationality")
  String? get nationality => throw _privateConstructorUsedError;
  @JsonKey(name: "kycTypeId")
  int? get kycTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "quoteNumber")
  String? get quoteNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "policyNumber")
  String? get policyNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocumentTypeId")
  int? get idDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocFrontImagePath")
  String? get idDocFrontImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocBackImagePath")
  String? get idDocBackImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocSurname")
  String? get idDocSurname => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocOtherName")
  String? get idDocOtherName => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocNumber")
  String? get idDocNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocPolicyNumber")
  String? get idDocPolicyNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocFrontUploadedDocumentId")
  int? get idDocFrontUploadedDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocBackUploadedDocumentId")
  int? get idDocBackUploadedDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "isIDVerificationCompleted")
  bool? get isIdVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocumentTypeId")
  int? get addressDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocImagePath")
  String? get addressDocImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocSurname")
  String? get addressDocSurname => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocOtherName")
  String? get addressDocOtherName => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocBillDate")
  DateTime? get addressDocBillDate => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocAddress")
  String? get addressDocAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocUploadedDocumentId")
  int? get addressDocUploadedDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "isAddressVerificationCompleted")
  bool? get isAddressVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "porRequired")
  bool? get porRequired => throw _privateConstructorUsedError;
  @JsonKey(name: "isPORDocVerificationCompleted")
  bool? get isPorDocVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  bool? get isPolicyDocVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  dynamic get motorInsuranceDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "motorDocuImagePath")
  dynamic get motorDocImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "isMotorDocVerificationCompleted")
  bool? get isMotorDocVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDocumentTypeId")
  dynamic get additionalDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDocImagePath")
  dynamic get additionalDocImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  bool? get isAdditionalDocVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "isNonMotorDocVerificationCompleted")
  bool? get isNonMotorDocVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocumentTypes")
  AddressDocumentTypes? get addressDocumentTypes => throw _privateConstructorUsedError;
  @JsonKey(name: "porDocumentDetails")
  List<PorDocumentDetail>? get porDocumentDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "policyDocumentDetails")
  List<PolicyDocumentDetail>? get policyDocumentDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDoumentDetails")
  List<AdditionalDoumentDetail>? get additionalDoumentDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "motorInsuranceDocumentDetails")
  List<MotorInsuranceDocumentDetail>? get motorInsuranceDocumentDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "nonMotorInsuranceDocumentDetails")
  List<NonMotorInsuranceDocumentDetail>? get nonMotorInsuranceDocumentDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentApplicationModelCopyWith<AgentApplicationModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentApplicationModelCopyWith<$Res> {
  factory $AgentApplicationModelCopyWith(AgentApplicationModel value, $Res Function(AgentApplicationModel) then) =
      _$AgentApplicationModelCopyWithImpl<$Res, AgentApplicationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "applicationRefNo") String? applicationRefNo,
      @JsonKey(name: "agentId") int? agentId,
      @JsonKey(name: "applicationStatus") String? applicationStatus,
      @JsonKey(name: "mobileNumber") String? mobileNumber,
      @JsonKey(name: "emailId") String? emailId,
      @JsonKey(name: "maritalStatus") String? maritalStatus,
      @JsonKey(name: "nationality") String? nationality,
      @JsonKey(name: "kycTypeId") int? kycTypeId,
      @JsonKey(name: "quoteNumber") String? quoteNumber,
      @JsonKey(name: "policyNumber") String? policyNumber,
      @JsonKey(name: "idDocumentTypeId") int? idDocumentTypeId,
      @JsonKey(name: "idDocFrontImagePath") String? idDocFrontImagePath,
      @JsonKey(name: "idDocBackImagePath") String? idDocBackImagePath,
      @JsonKey(name: "idDocSurname") String? idDocSurname,
      @JsonKey(name: "idDocOtherName") String? idDocOtherName,
      @JsonKey(name: "idDocNumber") String? idDocNumber,
      @JsonKey(name: "idDocPolicyNumber") String? idDocPolicyNumber,
      @JsonKey(name: "idDocFrontUploadedDocumentId") int? idDocFrontUploadedDocumentId,
      @JsonKey(name: "idDocBackUploadedDocumentId") int? idDocBackUploadedDocumentId,
      @JsonKey(name: "isIDVerificationCompleted") bool? isIdVerificationCompleted,
      @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
      @JsonKey(name: "addressDocImagePath") String? addressDocImagePath,
      @JsonKey(name: "addressDocSurname") String? addressDocSurname,
      @JsonKey(name: "addressDocOtherName") String? addressDocOtherName,
      @JsonKey(name: "addressDocBillDate") DateTime? addressDocBillDate,
      @JsonKey(name: "addressDocAddress") String? addressDocAddress,
      @JsonKey(name: "addressDocUploadedDocumentId") int? addressDocUploadedDocumentId,
      @JsonKey(name: "isAddressVerificationCompleted") bool? isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") bool? porRequired,
      @JsonKey(name: "isPORDocVerificationCompleted") bool? isPorDocVerificationCompleted,
      @JsonKey(name: "isPolicyDocVerificationCompleted") bool? isPolicyDocVerificationCompleted,
      @JsonKey(name: "motorInsuranceDocumentTypeId") dynamic motorInsuranceDocumentTypeId,
      @JsonKey(name: "motorDocuImagePath") dynamic motorDocImagePath,
      @JsonKey(name: "isMotorDocVerificationCompleted") bool? isMotorDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentTypeId") dynamic additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") dynamic additionalDocImagePath,
      @JsonKey(name: "isAdditionalDocVerificationCompleted") bool? isAdditionalDocVerificationCompleted,
      @JsonKey(name: "isNonMotorDocVerificationCompleted") bool? isNonMotorDocVerificationCompleted,
      @JsonKey(name: "addressDocumentTypes") AddressDocumentTypes? addressDocumentTypes,
      @JsonKey(name: "porDocumentDetails") List<PorDocumentDetail>? porDocumentDetails,
      @JsonKey(name: "policyDocumentDetails") List<PolicyDocumentDetail>? policyDocumentDetails,
      @JsonKey(name: "additionalDoumentDetails") List<AdditionalDoumentDetail>? additionalDoumentDetails,
      @JsonKey(name: "motorInsuranceDocumentDetails") List<MotorInsuranceDocumentDetail>? motorInsuranceDocumentDetails,
      @JsonKey(name: "nonMotorInsuranceDocumentDetails")
      List<NonMotorInsuranceDocumentDetail>? nonMotorInsuranceDocumentDetails});

  $AddressDocumentTypesCopyWith<$Res>? get addressDocumentTypes;
}

/// @nodoc
class _$AgentApplicationModelCopyWithImpl<$Res, $Val extends AgentApplicationModel>
    implements $AgentApplicationModelCopyWith<$Res> {
  _$AgentApplicationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? agentApplicationId = freezed,
    Object? applicationRefNo = freezed,
    Object? agentId = freezed,
    Object? applicationStatus = freezed,
    Object? mobileNumber = freezed,
    Object? emailId = freezed,
    Object? maritalStatus = freezed,
    Object? nationality = freezed,
    Object? kycTypeId = freezed,
    Object? quoteNumber = freezed,
    Object? policyNumber = freezed,
    Object? idDocumentTypeId = freezed,
    Object? idDocFrontImagePath = freezed,
    Object? idDocBackImagePath = freezed,
    Object? idDocSurname = freezed,
    Object? idDocOtherName = freezed,
    Object? idDocNumber = freezed,
    Object? idDocPolicyNumber = freezed,
    Object? idDocFrontUploadedDocumentId = freezed,
    Object? idDocBackUploadedDocumentId = freezed,
    Object? isIdVerificationCompleted = freezed,
    Object? addressDocumentTypeId = freezed,
    Object? addressDocImagePath = freezed,
    Object? addressDocSurname = freezed,
    Object? addressDocOtherName = freezed,
    Object? addressDocBillDate = freezed,
    Object? addressDocAddress = freezed,
    Object? addressDocUploadedDocumentId = freezed,
    Object? isAddressVerificationCompleted = freezed,
    Object? porRequired = freezed,
    Object? isPorDocVerificationCompleted = freezed,
    Object? isPolicyDocVerificationCompleted = freezed,
    Object? motorInsuranceDocumentTypeId = freezed,
    Object? motorDocImagePath = freezed,
    Object? isMotorDocVerificationCompleted = freezed,
    Object? additionalDocumentTypeId = freezed,
    Object? additionalDocImagePath = freezed,
    Object? isAdditionalDocVerificationCompleted = freezed,
    Object? isNonMotorDocVerificationCompleted = freezed,
    Object? addressDocumentTypes = freezed,
    Object? porDocumentDetails = freezed,
    Object? policyDocumentDetails = freezed,
    Object? additionalDoumentDetails = freezed,
    Object? motorInsuranceDocumentDetails = freezed,
    Object? nonMotorInsuranceDocumentDetails = freezed,
  }) {
    return _then(_value.copyWith(
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
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationRefNo: freezed == applicationRefNo
          ? _value.applicationRefNo
          : applicationRefNo // ignore: cast_nullable_to_non_nullable
              as String?,
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationStatus: freezed == applicationStatus
          ? _value.applicationStatus
          : applicationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      kycTypeId: freezed == kycTypeId
          ? _value.kycTypeId
          : kycTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      quoteNumber: freezed == quoteNumber
          ? _value.quoteNumber
          : quoteNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      policyNumber: freezed == policyNumber
          ? _value.policyNumber
          : policyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocumentTypeId: freezed == idDocumentTypeId
          ? _value.idDocumentTypeId
          : idDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      idDocFrontImagePath: freezed == idDocFrontImagePath
          ? _value.idDocFrontImagePath
          : idDocFrontImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocBackImagePath: freezed == idDocBackImagePath
          ? _value.idDocBackImagePath
          : idDocBackImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocSurname: freezed == idDocSurname
          ? _value.idDocSurname
          : idDocSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocOtherName: freezed == idDocOtherName
          ? _value.idDocOtherName
          : idDocOtherName // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocNumber: freezed == idDocNumber
          ? _value.idDocNumber
          : idDocNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocPolicyNumber: freezed == idDocPolicyNumber
          ? _value.idDocPolicyNumber
          : idDocPolicyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocFrontUploadedDocumentId: freezed == idDocFrontUploadedDocumentId
          ? _value.idDocFrontUploadedDocumentId
          : idDocFrontUploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      idDocBackUploadedDocumentId: freezed == idDocBackUploadedDocumentId
          ? _value.idDocBackUploadedDocumentId
          : idDocBackUploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isIdVerificationCompleted: freezed == isIdVerificationCompleted
          ? _value.isIdVerificationCompleted
          : isIdVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      addressDocumentTypeId: freezed == addressDocumentTypeId
          ? _value.addressDocumentTypeId
          : addressDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      addressDocImagePath: freezed == addressDocImagePath
          ? _value.addressDocImagePath
          : addressDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      addressDocSurname: freezed == addressDocSurname
          ? _value.addressDocSurname
          : addressDocSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      addressDocOtherName: freezed == addressDocOtherName
          ? _value.addressDocOtherName
          : addressDocOtherName // ignore: cast_nullable_to_non_nullable
              as String?,
      addressDocBillDate: freezed == addressDocBillDate
          ? _value.addressDocBillDate
          : addressDocBillDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      addressDocAddress: freezed == addressDocAddress
          ? _value.addressDocAddress
          : addressDocAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      addressDocUploadedDocumentId: freezed == addressDocUploadedDocumentId
          ? _value.addressDocUploadedDocumentId
          : addressDocUploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAddressVerificationCompleted: freezed == isAddressVerificationCompleted
          ? _value.isAddressVerificationCompleted
          : isAddressVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      porRequired: freezed == porRequired
          ? _value.porRequired
          : porRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPorDocVerificationCompleted: freezed == isPorDocVerificationCompleted
          ? _value.isPorDocVerificationCompleted
          : isPorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPolicyDocVerificationCompleted: freezed == isPolicyDocVerificationCompleted
          ? _value.isPolicyDocVerificationCompleted
          : isPolicyDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      motorInsuranceDocumentTypeId: freezed == motorInsuranceDocumentTypeId
          ? _value.motorInsuranceDocumentTypeId
          : motorInsuranceDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      motorDocImagePath: freezed == motorDocImagePath
          ? _value.motorDocImagePath
          : motorDocImagePath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isMotorDocVerificationCompleted: freezed == isMotorDocVerificationCompleted
          ? _value.isMotorDocVerificationCompleted
          : isMotorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalDocumentTypeId: freezed == additionalDocumentTypeId
          ? _value.additionalDocumentTypeId
          : additionalDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      additionalDocImagePath: freezed == additionalDocImagePath
          ? _value.additionalDocImagePath
          : additionalDocImagePath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAdditionalDocVerificationCompleted: freezed == isAdditionalDocVerificationCompleted
          ? _value.isAdditionalDocVerificationCompleted
          : isAdditionalDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNonMotorDocVerificationCompleted: freezed == isNonMotorDocVerificationCompleted
          ? _value.isNonMotorDocVerificationCompleted
          : isNonMotorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      addressDocumentTypes: freezed == addressDocumentTypes
          ? _value.addressDocumentTypes
          : addressDocumentTypes // ignore: cast_nullable_to_non_nullable
              as AddressDocumentTypes?,
      porDocumentDetails: freezed == porDocumentDetails
          ? _value.porDocumentDetails
          : porDocumentDetails // ignore: cast_nullable_to_non_nullable
              as List<PorDocumentDetail>?,
      policyDocumentDetails: freezed == policyDocumentDetails
          ? _value.policyDocumentDetails
          : policyDocumentDetails // ignore: cast_nullable_to_non_nullable
              as List<PolicyDocumentDetail>?,
      additionalDoumentDetails: freezed == additionalDoumentDetails
          ? _value.additionalDoumentDetails
          : additionalDoumentDetails // ignore: cast_nullable_to_non_nullable
              as List<AdditionalDoumentDetail>?,
      motorInsuranceDocumentDetails: freezed == motorInsuranceDocumentDetails
          ? _value.motorInsuranceDocumentDetails
          : motorInsuranceDocumentDetails // ignore: cast_nullable_to_non_nullable
              as List<MotorInsuranceDocumentDetail>?,
      nonMotorInsuranceDocumentDetails: freezed == nonMotorInsuranceDocumentDetails
          ? _value.nonMotorInsuranceDocumentDetails
          : nonMotorInsuranceDocumentDetails // ignore: cast_nullable_to_non_nullable
              as List<NonMotorInsuranceDocumentDetail>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDocumentTypesCopyWith<$Res>? get addressDocumentTypes {
    if (_value.addressDocumentTypes == null) {
      return null;
    }

    return $AddressDocumentTypesCopyWith<$Res>(_value.addressDocumentTypes!, (value) {
      return _then(_value.copyWith(addressDocumentTypes: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentApplicationModelImplCopyWith<$Res> implements $AgentApplicationModelCopyWith<$Res> {
  factory _$$AgentApplicationModelImplCopyWith(
          _$AgentApplicationModelImpl value, $Res Function(_$AgentApplicationModelImpl) then) =
      __$$AgentApplicationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "applicationRefNo") String? applicationRefNo,
      @JsonKey(name: "agentId") int? agentId,
      @JsonKey(name: "applicationStatus") String? applicationStatus,
      @JsonKey(name: "mobileNumber") String? mobileNumber,
      @JsonKey(name: "emailId") String? emailId,
      @JsonKey(name: "maritalStatus") String? maritalStatus,
      @JsonKey(name: "nationality") String? nationality,
      @JsonKey(name: "kycTypeId") int? kycTypeId,
      @JsonKey(name: "quoteNumber") String? quoteNumber,
      @JsonKey(name: "policyNumber") String? policyNumber,
      @JsonKey(name: "idDocumentTypeId") int? idDocumentTypeId,
      @JsonKey(name: "idDocFrontImagePath") String? idDocFrontImagePath,
      @JsonKey(name: "idDocBackImagePath") String? idDocBackImagePath,
      @JsonKey(name: "idDocSurname") String? idDocSurname,
      @JsonKey(name: "idDocOtherName") String? idDocOtherName,
      @JsonKey(name: "idDocNumber") String? idDocNumber,
      @JsonKey(name: "idDocPolicyNumber") String? idDocPolicyNumber,
      @JsonKey(name: "idDocFrontUploadedDocumentId") int? idDocFrontUploadedDocumentId,
      @JsonKey(name: "idDocBackUploadedDocumentId") int? idDocBackUploadedDocumentId,
      @JsonKey(name: "isIDVerificationCompleted") bool? isIdVerificationCompleted,
      @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
      @JsonKey(name: "addressDocImagePath") String? addressDocImagePath,
      @JsonKey(name: "addressDocSurname") String? addressDocSurname,
      @JsonKey(name: "addressDocOtherName") String? addressDocOtherName,
      @JsonKey(name: "addressDocBillDate") DateTime? addressDocBillDate,
      @JsonKey(name: "addressDocAddress") String? addressDocAddress,
      @JsonKey(name: "addressDocUploadedDocumentId") int? addressDocUploadedDocumentId,
      @JsonKey(name: "isAddressVerificationCompleted") bool? isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") bool? porRequired,
      @JsonKey(name: "isPORDocVerificationCompleted") bool? isPorDocVerificationCompleted,
      @JsonKey(name: "isPolicyDocVerificationCompleted") bool? isPolicyDocVerificationCompleted,
      @JsonKey(name: "motorInsuranceDocumentTypeId") dynamic motorInsuranceDocumentTypeId,
      @JsonKey(name: "motorDocuImagePath") dynamic motorDocImagePath,
      @JsonKey(name: "isMotorDocVerificationCompleted") bool? isMotorDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentTypeId") dynamic additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") dynamic additionalDocImagePath,
      @JsonKey(name: "isAdditionalDocVerificationCompleted") bool? isAdditionalDocVerificationCompleted,
      @JsonKey(name: "isNonMotorDocVerificationCompleted") bool? isNonMotorDocVerificationCompleted,
      @JsonKey(name: "addressDocumentTypes") AddressDocumentTypes? addressDocumentTypes,
      @JsonKey(name: "porDocumentDetails") List<PorDocumentDetail>? porDocumentDetails,
      @JsonKey(name: "policyDocumentDetails") List<PolicyDocumentDetail>? policyDocumentDetails,
      @JsonKey(name: "additionalDoumentDetails") List<AdditionalDoumentDetail>? additionalDoumentDetails,
      @JsonKey(name: "motorInsuranceDocumentDetails") List<MotorInsuranceDocumentDetail>? motorInsuranceDocumentDetails,
      @JsonKey(name: "nonMotorInsuranceDocumentDetails")
      List<NonMotorInsuranceDocumentDetail>? nonMotorInsuranceDocumentDetails});

  @override
  $AddressDocumentTypesCopyWith<$Res>? get addressDocumentTypes;
}

/// @nodoc
class __$$AgentApplicationModelImplCopyWithImpl<$Res>
    extends _$AgentApplicationModelCopyWithImpl<$Res, _$AgentApplicationModelImpl>
    implements _$$AgentApplicationModelImplCopyWith<$Res> {
  __$$AgentApplicationModelImplCopyWithImpl(
      _$AgentApplicationModelImpl _value, $Res Function(_$AgentApplicationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? agentApplicationId = freezed,
    Object? applicationRefNo = freezed,
    Object? agentId = freezed,
    Object? applicationStatus = freezed,
    Object? mobileNumber = freezed,
    Object? emailId = freezed,
    Object? maritalStatus = freezed,
    Object? nationality = freezed,
    Object? kycTypeId = freezed,
    Object? quoteNumber = freezed,
    Object? policyNumber = freezed,
    Object? idDocumentTypeId = freezed,
    Object? idDocFrontImagePath = freezed,
    Object? idDocBackImagePath = freezed,
    Object? idDocSurname = freezed,
    Object? idDocOtherName = freezed,
    Object? idDocNumber = freezed,
    Object? idDocPolicyNumber = freezed,
    Object? idDocFrontUploadedDocumentId = freezed,
    Object? idDocBackUploadedDocumentId = freezed,
    Object? isIdVerificationCompleted = freezed,
    Object? addressDocumentTypeId = freezed,
    Object? addressDocImagePath = freezed,
    Object? addressDocSurname = freezed,
    Object? addressDocOtherName = freezed,
    Object? addressDocBillDate = freezed,
    Object? addressDocAddress = freezed,
    Object? addressDocUploadedDocumentId = freezed,
    Object? isAddressVerificationCompleted = freezed,
    Object? porRequired = freezed,
    Object? isPorDocVerificationCompleted = freezed,
    Object? isPolicyDocVerificationCompleted = freezed,
    Object? motorInsuranceDocumentTypeId = freezed,
    Object? motorDocImagePath = freezed,
    Object? isMotorDocVerificationCompleted = freezed,
    Object? additionalDocumentTypeId = freezed,
    Object? additionalDocImagePath = freezed,
    Object? isAdditionalDocVerificationCompleted = freezed,
    Object? isNonMotorDocVerificationCompleted = freezed,
    Object? addressDocumentTypes = freezed,
    Object? porDocumentDetails = freezed,
    Object? policyDocumentDetails = freezed,
    Object? additionalDoumentDetails = freezed,
    Object? motorInsuranceDocumentDetails = freezed,
    Object? nonMotorInsuranceDocumentDetails = freezed,
  }) {
    return _then(_$AgentApplicationModelImpl(
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
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationRefNo: freezed == applicationRefNo
          ? _value.applicationRefNo
          : applicationRefNo // ignore: cast_nullable_to_non_nullable
              as String?,
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      applicationStatus: freezed == applicationStatus
          ? _value.applicationStatus
          : applicationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: freezed == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      maritalStatus: freezed == maritalStatus
          ? _value.maritalStatus
          : maritalStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      nationality: freezed == nationality
          ? _value.nationality
          : nationality // ignore: cast_nullable_to_non_nullable
              as String?,
      kycTypeId: freezed == kycTypeId
          ? _value.kycTypeId
          : kycTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      quoteNumber: freezed == quoteNumber
          ? _value.quoteNumber
          : quoteNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      policyNumber: freezed == policyNumber
          ? _value.policyNumber
          : policyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocumentTypeId: freezed == idDocumentTypeId
          ? _value.idDocumentTypeId
          : idDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      idDocFrontImagePath: freezed == idDocFrontImagePath
          ? _value.idDocFrontImagePath
          : idDocFrontImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocBackImagePath: freezed == idDocBackImagePath
          ? _value.idDocBackImagePath
          : idDocBackImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocSurname: freezed == idDocSurname
          ? _value.idDocSurname
          : idDocSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocOtherName: freezed == idDocOtherName
          ? _value.idDocOtherName
          : idDocOtherName // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocNumber: freezed == idDocNumber
          ? _value.idDocNumber
          : idDocNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocPolicyNumber: freezed == idDocPolicyNumber
          ? _value.idDocPolicyNumber
          : idDocPolicyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocFrontUploadedDocumentId: freezed == idDocFrontUploadedDocumentId
          ? _value.idDocFrontUploadedDocumentId
          : idDocFrontUploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      idDocBackUploadedDocumentId: freezed == idDocBackUploadedDocumentId
          ? _value.idDocBackUploadedDocumentId
          : idDocBackUploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isIdVerificationCompleted: freezed == isIdVerificationCompleted
          ? _value.isIdVerificationCompleted
          : isIdVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      addressDocumentTypeId: freezed == addressDocumentTypeId
          ? _value.addressDocumentTypeId
          : addressDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      addressDocImagePath: freezed == addressDocImagePath
          ? _value.addressDocImagePath
          : addressDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      addressDocSurname: freezed == addressDocSurname
          ? _value.addressDocSurname
          : addressDocSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      addressDocOtherName: freezed == addressDocOtherName
          ? _value.addressDocOtherName
          : addressDocOtherName // ignore: cast_nullable_to_non_nullable
              as String?,
      addressDocBillDate: freezed == addressDocBillDate
          ? _value.addressDocBillDate
          : addressDocBillDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      addressDocAddress: freezed == addressDocAddress
          ? _value.addressDocAddress
          : addressDocAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      addressDocUploadedDocumentId: freezed == addressDocUploadedDocumentId
          ? _value.addressDocUploadedDocumentId
          : addressDocUploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAddressVerificationCompleted: freezed == isAddressVerificationCompleted
          ? _value.isAddressVerificationCompleted
          : isAddressVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      porRequired: freezed == porRequired
          ? _value.porRequired
          : porRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPorDocVerificationCompleted: freezed == isPorDocVerificationCompleted
          ? _value.isPorDocVerificationCompleted
          : isPorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPolicyDocVerificationCompleted: freezed == isPolicyDocVerificationCompleted
          ? _value.isPolicyDocVerificationCompleted
          : isPolicyDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      motorInsuranceDocumentTypeId: freezed == motorInsuranceDocumentTypeId
          ? _value.motorInsuranceDocumentTypeId
          : motorInsuranceDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      motorDocImagePath: freezed == motorDocImagePath
          ? _value.motorDocImagePath
          : motorDocImagePath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isMotorDocVerificationCompleted: freezed == isMotorDocVerificationCompleted
          ? _value.isMotorDocVerificationCompleted
          : isMotorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalDocumentTypeId: freezed == additionalDocumentTypeId
          ? _value.additionalDocumentTypeId
          : additionalDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      additionalDocImagePath: freezed == additionalDocImagePath
          ? _value.additionalDocImagePath
          : additionalDocImagePath // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAdditionalDocVerificationCompleted: freezed == isAdditionalDocVerificationCompleted
          ? _value.isAdditionalDocVerificationCompleted
          : isAdditionalDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isNonMotorDocVerificationCompleted: freezed == isNonMotorDocVerificationCompleted
          ? _value.isNonMotorDocVerificationCompleted
          : isNonMotorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      addressDocumentTypes: freezed == addressDocumentTypes
          ? _value.addressDocumentTypes
          : addressDocumentTypes // ignore: cast_nullable_to_non_nullable
              as AddressDocumentTypes?,
      porDocumentDetails: freezed == porDocumentDetails
          ? _value._porDocumentDetails
          : porDocumentDetails // ignore: cast_nullable_to_non_nullable
              as List<PorDocumentDetail>?,
      policyDocumentDetails: freezed == policyDocumentDetails
          ? _value._policyDocumentDetails
          : policyDocumentDetails // ignore: cast_nullable_to_non_nullable
              as List<PolicyDocumentDetail>?,
      additionalDoumentDetails: freezed == additionalDoumentDetails
          ? _value._additionalDoumentDetails
          : additionalDoumentDetails // ignore: cast_nullable_to_non_nullable
              as List<AdditionalDoumentDetail>?,
      motorInsuranceDocumentDetails: freezed == motorInsuranceDocumentDetails
          ? _value._motorInsuranceDocumentDetails
          : motorInsuranceDocumentDetails // ignore: cast_nullable_to_non_nullable
              as List<MotorInsuranceDocumentDetail>?,
      nonMotorInsuranceDocumentDetails: freezed == nonMotorInsuranceDocumentDetails
          ? _value._nonMotorInsuranceDocumentDetails
          : nonMotorInsuranceDocumentDetails // ignore: cast_nullable_to_non_nullable
              as List<NonMotorInsuranceDocumentDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentApplicationModelImpl implements _AgentApplicationModel {
  const _$AgentApplicationModelImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "applicationRefNo") this.applicationRefNo,
      @JsonKey(name: "agentId") this.agentId,
      @JsonKey(name: "applicationStatus") this.applicationStatus,
      @JsonKey(name: "mobileNumber") this.mobileNumber,
      @JsonKey(name: "emailId") this.emailId,
      @JsonKey(name: "maritalStatus") this.maritalStatus,
      @JsonKey(name: "nationality") this.nationality,
      @JsonKey(name: "kycTypeId") this.kycTypeId,
      @JsonKey(name: "quoteNumber") this.quoteNumber,
      @JsonKey(name: "policyNumber") this.policyNumber,
      @JsonKey(name: "idDocumentTypeId") this.idDocumentTypeId,
      @JsonKey(name: "idDocFrontImagePath") this.idDocFrontImagePath,
      @JsonKey(name: "idDocBackImagePath") this.idDocBackImagePath,
      @JsonKey(name: "idDocSurname") this.idDocSurname,
      @JsonKey(name: "idDocOtherName") this.idDocOtherName,
      @JsonKey(name: "idDocNumber") this.idDocNumber,
      @JsonKey(name: "idDocPolicyNumber") this.idDocPolicyNumber,
      @JsonKey(name: "idDocFrontUploadedDocumentId") this.idDocFrontUploadedDocumentId,
      @JsonKey(name: "idDocBackUploadedDocumentId") this.idDocBackUploadedDocumentId,
      @JsonKey(name: "isIDVerificationCompleted") this.isIdVerificationCompleted,
      @JsonKey(name: "addressDocumentTypeId") this.addressDocumentTypeId,
      @JsonKey(name: "addressDocImagePath") this.addressDocImagePath,
      @JsonKey(name: "addressDocSurname") this.addressDocSurname,
      @JsonKey(name: "addressDocOtherName") this.addressDocOtherName,
      @JsonKey(name: "addressDocBillDate") this.addressDocBillDate,
      @JsonKey(name: "addressDocAddress") this.addressDocAddress,
      @JsonKey(name: "addressDocUploadedDocumentId") this.addressDocUploadedDocumentId,
      @JsonKey(name: "isAddressVerificationCompleted") this.isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") this.porRequired,
      @JsonKey(name: "isPORDocVerificationCompleted") this.isPorDocVerificationCompleted,
      @JsonKey(name: "isPolicyDocVerificationCompleted") this.isPolicyDocVerificationCompleted,
      @JsonKey(name: "motorInsuranceDocumentTypeId") this.motorInsuranceDocumentTypeId,
      @JsonKey(name: "motorDocuImagePath") this.motorDocImagePath,
      @JsonKey(name: "isMotorDocVerificationCompleted") this.isMotorDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentTypeId") this.additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") this.additionalDocImagePath,
      @JsonKey(name: "isAdditionalDocVerificationCompleted") this.isAdditionalDocVerificationCompleted,
      @JsonKey(name: "isNonMotorDocVerificationCompleted") this.isNonMotorDocVerificationCompleted,
      @JsonKey(name: "addressDocumentTypes") this.addressDocumentTypes,
      @JsonKey(name: "porDocumentDetails") final List<PorDocumentDetail>? porDocumentDetails,
      @JsonKey(name: "policyDocumentDetails") final List<PolicyDocumentDetail>? policyDocumentDetails,
      @JsonKey(name: "additionalDoumentDetails") final List<AdditionalDoumentDetail>? additionalDoumentDetails,
      @JsonKey(name: "motorInsuranceDocumentDetails")
      final List<MotorInsuranceDocumentDetail>? motorInsuranceDocumentDetails,
      @JsonKey(name: "nonMotorInsuranceDocumentDetails")
      final List<NonMotorInsuranceDocumentDetail>? nonMotorInsuranceDocumentDetails})
      : _porDocumentDetails = porDocumentDetails,
        _policyDocumentDetails = policyDocumentDetails,
        _additionalDoumentDetails = additionalDoumentDetails,
        _motorInsuranceDocumentDetails = motorInsuranceDocumentDetails,
        _nonMotorInsuranceDocumentDetails = nonMotorInsuranceDocumentDetails;

  factory _$AgentApplicationModelImpl.fromJson(Map<String, dynamic> json) => _$$AgentApplicationModelImplFromJson(json);

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
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "applicationRefNo")
  final String? applicationRefNo;
  @override
  @JsonKey(name: "agentId")
  final int? agentId;
  @override
  @JsonKey(name: "applicationStatus")
  final String? applicationStatus;
  @override
  @JsonKey(name: "mobileNumber")
  final String? mobileNumber;
  @override
  @JsonKey(name: "emailId")
  final String? emailId;
  @override
  @JsonKey(name: "maritalStatus")
  final String? maritalStatus;
  @override
  @JsonKey(name: "nationality")
  final String? nationality;
  @override
  @JsonKey(name: "kycTypeId")
  final int? kycTypeId;
  @override
  @JsonKey(name: "quoteNumber")
  final String? quoteNumber;
  @override
  @JsonKey(name: "policyNumber")
  final String? policyNumber;
  @override
  @JsonKey(name: "idDocumentTypeId")
  final int? idDocumentTypeId;
  @override
  @JsonKey(name: "idDocFrontImagePath")
  final String? idDocFrontImagePath;
  @override
  @JsonKey(name: "idDocBackImagePath")
  final String? idDocBackImagePath;
  @override
  @JsonKey(name: "idDocSurname")
  final String? idDocSurname;
  @override
  @JsonKey(name: "idDocOtherName")
  final String? idDocOtherName;
  @override
  @JsonKey(name: "idDocNumber")
  final String? idDocNumber;
  @override
  @JsonKey(name: "idDocPolicyNumber")
  final String? idDocPolicyNumber;
  @override
  @JsonKey(name: "idDocFrontUploadedDocumentId")
  final int? idDocFrontUploadedDocumentId;
  @override
  @JsonKey(name: "idDocBackUploadedDocumentId")
  final int? idDocBackUploadedDocumentId;
  @override
  @JsonKey(name: "isIDVerificationCompleted")
  final bool? isIdVerificationCompleted;
  @override
  @JsonKey(name: "addressDocumentTypeId")
  final int? addressDocumentTypeId;
  @override
  @JsonKey(name: "addressDocImagePath")
  final String? addressDocImagePath;
  @override
  @JsonKey(name: "addressDocSurname")
  final String? addressDocSurname;
  @override
  @JsonKey(name: "addressDocOtherName")
  final String? addressDocOtherName;
  @override
  @JsonKey(name: "addressDocBillDate")
  final DateTime? addressDocBillDate;
  @override
  @JsonKey(name: "addressDocAddress")
  final String? addressDocAddress;
  @override
  @JsonKey(name: "addressDocUploadedDocumentId")
  final int? addressDocUploadedDocumentId;
  @override
  @JsonKey(name: "isAddressVerificationCompleted")
  final bool? isAddressVerificationCompleted;
  @override
  @JsonKey(name: "porRequired")
  final bool? porRequired;
  @override
  @JsonKey(name: "isPORDocVerificationCompleted")
  final bool? isPorDocVerificationCompleted;
  @override
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  final bool? isPolicyDocVerificationCompleted;
  @override
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  final dynamic motorInsuranceDocumentTypeId;
  @override
  @JsonKey(name: "motorDocuImagePath")
  final dynamic motorDocImagePath;
  @override
  @JsonKey(name: "isMotorDocVerificationCompleted")
  final bool? isMotorDocVerificationCompleted;
  @override
  @JsonKey(name: "additionalDocumentTypeId")
  final dynamic additionalDocumentTypeId;
  @override
  @JsonKey(name: "additionalDocImagePath")
  final dynamic additionalDocImagePath;
  @override
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  final bool? isAdditionalDocVerificationCompleted;
  @override
  @JsonKey(name: "isNonMotorDocVerificationCompleted")
  final bool? isNonMotorDocVerificationCompleted;
  @override
  @JsonKey(name: "addressDocumentTypes")
  final AddressDocumentTypes? addressDocumentTypes;
  final List<PorDocumentDetail>? _porDocumentDetails;
  @override
  @JsonKey(name: "porDocumentDetails")
  List<PorDocumentDetail>? get porDocumentDetails {
    final value = _porDocumentDetails;
    if (value == null) return null;
    if (_porDocumentDetails is EqualUnmodifiableListView) return _porDocumentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PolicyDocumentDetail>? _policyDocumentDetails;
  @override
  @JsonKey(name: "policyDocumentDetails")
  List<PolicyDocumentDetail>? get policyDocumentDetails {
    final value = _policyDocumentDetails;
    if (value == null) return null;
    if (_policyDocumentDetails is EqualUnmodifiableListView) return _policyDocumentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdditionalDoumentDetail>? _additionalDoumentDetails;
  @override
  @JsonKey(name: "additionalDoumentDetails")
  List<AdditionalDoumentDetail>? get additionalDoumentDetails {
    final value = _additionalDoumentDetails;
    if (value == null) return null;
    if (_additionalDoumentDetails is EqualUnmodifiableListView) return _additionalDoumentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MotorInsuranceDocumentDetail>? _motorInsuranceDocumentDetails;
  @override
  @JsonKey(name: "motorInsuranceDocumentDetails")
  List<MotorInsuranceDocumentDetail>? get motorInsuranceDocumentDetails {
    final value = _motorInsuranceDocumentDetails;
    if (value == null) return null;
    if (_motorInsuranceDocumentDetails is EqualUnmodifiableListView) return _motorInsuranceDocumentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<NonMotorInsuranceDocumentDetail>? _nonMotorInsuranceDocumentDetails;
  @override
  @JsonKey(name: "nonMotorInsuranceDocumentDetails")
  List<NonMotorInsuranceDocumentDetail>? get nonMotorInsuranceDocumentDetails {
    final value = _nonMotorInsuranceDocumentDetails;
    if (value == null) return null;
    if (_nonMotorInsuranceDocumentDetails is EqualUnmodifiableListView) return _nonMotorInsuranceDocumentDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AgentApplicationModel(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, agentApplicationId: $agentApplicationId, applicationRefNo: $applicationRefNo, agentId: $agentId, applicationStatus: $applicationStatus, mobileNumber: $mobileNumber, emailId: $emailId, maritalStatus: $maritalStatus, nationality: $nationality, kycTypeId: $kycTypeId, quoteNumber: $quoteNumber, policyNumber: $policyNumber, idDocumentTypeId: $idDocumentTypeId, idDocFrontImagePath: $idDocFrontImagePath, idDocBackImagePath: $idDocBackImagePath, idDocSurname: $idDocSurname, idDocOtherName: $idDocOtherName, idDocNumber: $idDocNumber, idDocPolicyNumber: $idDocPolicyNumber, idDocFrontUploadedDocumentId: $idDocFrontUploadedDocumentId, idDocBackUploadedDocumentId: $idDocBackUploadedDocumentId, isIdVerificationCompleted: $isIdVerificationCompleted, addressDocumentTypeId: $addressDocumentTypeId, addressDocImagePath: $addressDocImagePath, addressDocSurname: $addressDocSurname, addressDocOtherName: $addressDocOtherName, addressDocBillDate: $addressDocBillDate, addressDocAddress: $addressDocAddress, addressDocUploadedDocumentId: $addressDocUploadedDocumentId, isAddressVerificationCompleted: $isAddressVerificationCompleted, porRequired: $porRequired, isPorDocVerificationCompleted: $isPorDocVerificationCompleted, isPolicyDocVerificationCompleted: $isPolicyDocVerificationCompleted, motorInsuranceDocumentTypeId: $motorInsuranceDocumentTypeId, motorDocImagePath: $motorDocImagePath, isMotorDocVerificationCompleted: $isMotorDocVerificationCompleted, additionalDocumentTypeId: $additionalDocumentTypeId, additionalDocImagePath: $additionalDocImagePath, isAdditionalDocVerificationCompleted: $isAdditionalDocVerificationCompleted, isNonMotorDocVerificationCompleted: $isNonMotorDocVerificationCompleted, addressDocumentTypes: $addressDocumentTypes, porDocumentDetails: $porDocumentDetails, policyDocumentDetails: $policyDocumentDetails, additionalDoumentDetails: $additionalDoumentDetails, motorInsuranceDocumentDetails: $motorInsuranceDocumentDetails, nonMotorInsuranceDocumentDetails: $nonMotorInsuranceDocumentDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentApplicationModelImpl &&
            (identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.applicationRefNo, applicationRefNo) || other.applicationRefNo == applicationRefNo) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.applicationStatus, applicationStatus) || other.applicationStatus == applicationStatus) &&
            (identical(other.mobileNumber, mobileNumber) || other.mobileNumber == mobileNumber) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.maritalStatus, maritalStatus) || other.maritalStatus == maritalStatus) &&
            (identical(other.nationality, nationality) || other.nationality == nationality) &&
            (identical(other.kycTypeId, kycTypeId) || other.kycTypeId == kycTypeId) &&
            (identical(other.quoteNumber, quoteNumber) || other.quoteNumber == quoteNumber) &&
            (identical(other.policyNumber, policyNumber) || other.policyNumber == policyNumber) &&
            (identical(other.idDocumentTypeId, idDocumentTypeId) || other.idDocumentTypeId == idDocumentTypeId) &&
            (identical(other.idDocFrontImagePath, idDocFrontImagePath) ||
                other.idDocFrontImagePath == idDocFrontImagePath) &&
            (identical(other.idDocBackImagePath, idDocBackImagePath) ||
                other.idDocBackImagePath == idDocBackImagePath) &&
            (identical(other.idDocSurname, idDocSurname) || other.idDocSurname == idDocSurname) &&
            (identical(other.idDocOtherName, idDocOtherName) || other.idDocOtherName == idDocOtherName) &&
            (identical(other.idDocNumber, idDocNumber) || other.idDocNumber == idDocNumber) &&
            (identical(other.idDocPolicyNumber, idDocPolicyNumber) || other.idDocPolicyNumber == idDocPolicyNumber) &&
            (identical(other.idDocFrontUploadedDocumentId, idDocFrontUploadedDocumentId) ||
                other.idDocFrontUploadedDocumentId == idDocFrontUploadedDocumentId) &&
            (identical(other.idDocBackUploadedDocumentId, idDocBackUploadedDocumentId) ||
                other.idDocBackUploadedDocumentId == idDocBackUploadedDocumentId) &&
            (identical(other.isIdVerificationCompleted, isIdVerificationCompleted) ||
                other.isIdVerificationCompleted == isIdVerificationCompleted) &&
            (identical(other.addressDocumentTypeId, addressDocumentTypeId) ||
                other.addressDocumentTypeId == addressDocumentTypeId) &&
            (identical(other.addressDocImagePath, addressDocImagePath) ||
                other.addressDocImagePath == addressDocImagePath) &&
            (identical(other.addressDocSurname, addressDocSurname) || other.addressDocSurname == addressDocSurname) &&
            (identical(other.addressDocOtherName, addressDocOtherName) ||
                other.addressDocOtherName == addressDocOtherName) &&
            (identical(other.addressDocBillDate, addressDocBillDate) ||
                other.addressDocBillDate == addressDocBillDate) &&
            (identical(other.addressDocAddress, addressDocAddress) || other.addressDocAddress == addressDocAddress) &&
            (identical(other.addressDocUploadedDocumentId, addressDocUploadedDocumentId) ||
                other.addressDocUploadedDocumentId == addressDocUploadedDocumentId) &&
            (identical(other.isAddressVerificationCompleted, isAddressVerificationCompleted) ||
                other.isAddressVerificationCompleted == isAddressVerificationCompleted) &&
            (identical(other.porRequired, porRequired) || other.porRequired == porRequired) &&
            (identical(other.isPorDocVerificationCompleted, isPorDocVerificationCompleted) ||
                other.isPorDocVerificationCompleted == isPorDocVerificationCompleted) &&
            (identical(other.isPolicyDocVerificationCompleted, isPolicyDocVerificationCompleted) ||
                other.isPolicyDocVerificationCompleted == isPolicyDocVerificationCompleted) &&
            const DeepCollectionEquality().equals(other.motorInsuranceDocumentTypeId, motorInsuranceDocumentTypeId) &&
            const DeepCollectionEquality().equals(other.motorDocImagePath, motorDocImagePath) &&
            (identical(other.isMotorDocVerificationCompleted, isMotorDocVerificationCompleted) ||
                other.isMotorDocVerificationCompleted == isMotorDocVerificationCompleted) &&
            const DeepCollectionEquality().equals(other.additionalDocumentTypeId, additionalDocumentTypeId) &&
            const DeepCollectionEquality().equals(other.additionalDocImagePath, additionalDocImagePath) &&
            (identical(other.isAdditionalDocVerificationCompleted, isAdditionalDocVerificationCompleted) ||
                other.isAdditionalDocVerificationCompleted == isAdditionalDocVerificationCompleted) &&
            (identical(other.isNonMotorDocVerificationCompleted, isNonMotorDocVerificationCompleted) ||
                other.isNonMotorDocVerificationCompleted == isNonMotorDocVerificationCompleted) &&
            (identical(other.addressDocumentTypes, addressDocumentTypes) ||
                other.addressDocumentTypes == addressDocumentTypes) &&
            const DeepCollectionEquality().equals(other._porDocumentDetails, _porDocumentDetails) &&
            const DeepCollectionEquality().equals(other._policyDocumentDetails, _policyDocumentDetails) &&
            const DeepCollectionEquality().equals(other._additionalDoumentDetails, _additionalDoumentDetails) &&
            const DeepCollectionEquality()
                .equals(other._motorInsuranceDocumentDetails, _motorInsuranceDocumentDetails) &&
            const DeepCollectionEquality()
                .equals(other._nonMotorInsuranceDocumentDetails, _nonMotorInsuranceDocumentDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        isDisabled,
        crd,
        crdBy,
        lmd,
        lmdBy,
        agentApplicationId,
        applicationRefNo,
        agentId,
        applicationStatus,
        mobileNumber,
        emailId,
        maritalStatus,
        nationality,
        kycTypeId,
        quoteNumber,
        policyNumber,
        idDocumentTypeId,
        idDocFrontImagePath,
        idDocBackImagePath,
        idDocSurname,
        idDocOtherName,
        idDocNumber,
        idDocPolicyNumber,
        idDocFrontUploadedDocumentId,
        idDocBackUploadedDocumentId,
        isIdVerificationCompleted,
        addressDocumentTypeId,
        addressDocImagePath,
        addressDocSurname,
        addressDocOtherName,
        addressDocBillDate,
        addressDocAddress,
        addressDocUploadedDocumentId,
        isAddressVerificationCompleted,
        porRequired,
        isPorDocVerificationCompleted,
        isPolicyDocVerificationCompleted,
        const DeepCollectionEquality().hash(motorInsuranceDocumentTypeId),
        const DeepCollectionEquality().hash(motorDocImagePath),
        isMotorDocVerificationCompleted,
        const DeepCollectionEquality().hash(additionalDocumentTypeId),
        const DeepCollectionEquality().hash(additionalDocImagePath),
        isAdditionalDocVerificationCompleted,
        isNonMotorDocVerificationCompleted,
        addressDocumentTypes,
        const DeepCollectionEquality().hash(_porDocumentDetails),
        const DeepCollectionEquality().hash(_policyDocumentDetails),
        const DeepCollectionEquality().hash(_additionalDoumentDetails),
        const DeepCollectionEquality().hash(_motorInsuranceDocumentDetails),
        const DeepCollectionEquality().hash(_nonMotorInsuranceDocumentDetails)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentApplicationModelImplCopyWith<_$AgentApplicationModelImpl> get copyWith =>
      __$$AgentApplicationModelImplCopyWithImpl<_$AgentApplicationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentApplicationModelImplToJson(
      this,
    );
  }
}

abstract class _AgentApplicationModel implements AgentApplicationModel {
  const factory _AgentApplicationModel(
      {@JsonKey(name: "isDisabled") final bool? isDisabled,
      @JsonKey(name: "crd") final DateTime? crd,
      @JsonKey(name: "crdBy") final int? crdBy,
      @JsonKey(name: "lmd") final DateTime? lmd,
      @JsonKey(name: "lmdBy") final int? lmdBy,
      @JsonKey(name: "agentApplicationId") final int? agentApplicationId,
      @JsonKey(name: "applicationRefNo") final String? applicationRefNo,
      @JsonKey(name: "agentId") final int? agentId,
      @JsonKey(name: "applicationStatus") final String? applicationStatus,
      @JsonKey(name: "mobileNumber") final String? mobileNumber,
      @JsonKey(name: "emailId") final String? emailId,
      @JsonKey(name: "maritalStatus") final String? maritalStatus,
      @JsonKey(name: "nationality") final String? nationality,
      @JsonKey(name: "kycTypeId") final int? kycTypeId,
      @JsonKey(name: "quoteNumber") final String? quoteNumber,
      @JsonKey(name: "policyNumber") final String? policyNumber,
      @JsonKey(name: "idDocumentTypeId") final int? idDocumentTypeId,
      @JsonKey(name: "idDocFrontImagePath") final String? idDocFrontImagePath,
      @JsonKey(name: "idDocBackImagePath") final String? idDocBackImagePath,
      @JsonKey(name: "idDocSurname") final String? idDocSurname,
      @JsonKey(name: "idDocOtherName") final String? idDocOtherName,
      @JsonKey(name: "idDocNumber") final String? idDocNumber,
      @JsonKey(name: "idDocPolicyNumber") final String? idDocPolicyNumber,
      @JsonKey(name: "idDocFrontUploadedDocumentId") final int? idDocFrontUploadedDocumentId,
      @JsonKey(name: "idDocBackUploadedDocumentId") final int? idDocBackUploadedDocumentId,
      @JsonKey(name: "isIDVerificationCompleted") final bool? isIdVerificationCompleted,
      @JsonKey(name: "addressDocumentTypeId") final int? addressDocumentTypeId,
      @JsonKey(name: "addressDocImagePath") final String? addressDocImagePath,
      @JsonKey(name: "addressDocSurname") final String? addressDocSurname,
      @JsonKey(name: "addressDocOtherName") final String? addressDocOtherName,
      @JsonKey(name: "addressDocBillDate") final DateTime? addressDocBillDate,
      @JsonKey(name: "addressDocAddress") final String? addressDocAddress,
      @JsonKey(name: "addressDocUploadedDocumentId") final int? addressDocUploadedDocumentId,
      @JsonKey(name: "isAddressVerificationCompleted") final bool? isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") final bool? porRequired,
      @JsonKey(name: "isPORDocVerificationCompleted") final bool? isPorDocVerificationCompleted,
      @JsonKey(name: "isPolicyDocVerificationCompleted") final bool? isPolicyDocVerificationCompleted,
      @JsonKey(name: "motorInsuranceDocumentTypeId") final dynamic motorInsuranceDocumentTypeId,
      @JsonKey(name: "motorDocuImagePath") final dynamic motorDocImagePath,
      @JsonKey(name: "isMotorDocVerificationCompleted") final bool? isMotorDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentTypeId") final dynamic additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") final dynamic additionalDocImagePath,
      @JsonKey(name: "isAdditionalDocVerificationCompleted") final bool? isAdditionalDocVerificationCompleted,
      @JsonKey(name: "isNonMotorDocVerificationCompleted") final bool? isNonMotorDocVerificationCompleted,
      @JsonKey(name: "addressDocumentTypes") final AddressDocumentTypes? addressDocumentTypes,
      @JsonKey(name: "porDocumentDetails") final List<PorDocumentDetail>? porDocumentDetails,
      @JsonKey(name: "policyDocumentDetails") final List<PolicyDocumentDetail>? policyDocumentDetails,
      @JsonKey(name: "additionalDoumentDetails") final List<AdditionalDoumentDetail>? additionalDoumentDetails,
      @JsonKey(name: "motorInsuranceDocumentDetails")
      final List<MotorInsuranceDocumentDetail>? motorInsuranceDocumentDetails,
      @JsonKey(name: "nonMotorInsuranceDocumentDetails")
      final List<NonMotorInsuranceDocumentDetail>? nonMotorInsuranceDocumentDetails}) = _$AgentApplicationModelImpl;

  factory _AgentApplicationModel.fromJson(Map<String, dynamic> json) = _$AgentApplicationModelImpl.fromJson;

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
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "applicationRefNo")
  String? get applicationRefNo;
  @override
  @JsonKey(name: "agentId")
  int? get agentId;
  @override
  @JsonKey(name: "applicationStatus")
  String? get applicationStatus;
  @override
  @JsonKey(name: "mobileNumber")
  String? get mobileNumber;
  @override
  @JsonKey(name: "emailId")
  String? get emailId;
  @override
  @JsonKey(name: "maritalStatus")
  String? get maritalStatus;
  @override
  @JsonKey(name: "nationality")
  String? get nationality;
  @override
  @JsonKey(name: "kycTypeId")
  int? get kycTypeId;
  @override
  @JsonKey(name: "quoteNumber")
  String? get quoteNumber;
  @override
  @JsonKey(name: "policyNumber")
  String? get policyNumber;
  @override
  @JsonKey(name: "idDocumentTypeId")
  int? get idDocumentTypeId;
  @override
  @JsonKey(name: "idDocFrontImagePath")
  String? get idDocFrontImagePath;
  @override
  @JsonKey(name: "idDocBackImagePath")
  String? get idDocBackImagePath;
  @override
  @JsonKey(name: "idDocSurname")
  String? get idDocSurname;
  @override
  @JsonKey(name: "idDocOtherName")
  String? get idDocOtherName;
  @override
  @JsonKey(name: "idDocNumber")
  String? get idDocNumber;
  @override
  @JsonKey(name: "idDocPolicyNumber")
  String? get idDocPolicyNumber;
  @override
  @JsonKey(name: "idDocFrontUploadedDocumentId")
  int? get idDocFrontUploadedDocumentId;
  @override
  @JsonKey(name: "idDocBackUploadedDocumentId")
  int? get idDocBackUploadedDocumentId;
  @override
  @JsonKey(name: "isIDVerificationCompleted")
  bool? get isIdVerificationCompleted;
  @override
  @JsonKey(name: "addressDocumentTypeId")
  int? get addressDocumentTypeId;
  @override
  @JsonKey(name: "addressDocImagePath")
  String? get addressDocImagePath;
  @override
  @JsonKey(name: "addressDocSurname")
  String? get addressDocSurname;
  @override
  @JsonKey(name: "addressDocOtherName")
  String? get addressDocOtherName;
  @override
  @JsonKey(name: "addressDocBillDate")
  DateTime? get addressDocBillDate;
  @override
  @JsonKey(name: "addressDocAddress")
  String? get addressDocAddress;
  @override
  @JsonKey(name: "addressDocUploadedDocumentId")
  int? get addressDocUploadedDocumentId;
  @override
  @JsonKey(name: "isAddressVerificationCompleted")
  bool? get isAddressVerificationCompleted;
  @override
  @JsonKey(name: "porRequired")
  bool? get porRequired;
  @override
  @JsonKey(name: "isPORDocVerificationCompleted")
  bool? get isPorDocVerificationCompleted;
  @override
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  bool? get isPolicyDocVerificationCompleted;
  @override
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  dynamic get motorInsuranceDocumentTypeId;
  @override
  @JsonKey(name: "motorDocuImagePath")
  dynamic get motorDocImagePath;
  @override
  @JsonKey(name: "isMotorDocVerificationCompleted")
  bool? get isMotorDocVerificationCompleted;
  @override
  @JsonKey(name: "additionalDocumentTypeId")
  dynamic get additionalDocumentTypeId;
  @override
  @JsonKey(name: "additionalDocImagePath")
  dynamic get additionalDocImagePath;
  @override
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  bool? get isAdditionalDocVerificationCompleted;
  @override
  @JsonKey(name: "isNonMotorDocVerificationCompleted")
  bool? get isNonMotorDocVerificationCompleted;
  @override
  @JsonKey(name: "addressDocumentTypes")
  AddressDocumentTypes? get addressDocumentTypes;
  @override
  @JsonKey(name: "porDocumentDetails")
  List<PorDocumentDetail>? get porDocumentDetails;
  @override
  @JsonKey(name: "policyDocumentDetails")
  List<PolicyDocumentDetail>? get policyDocumentDetails;
  @override
  @JsonKey(name: "additionalDoumentDetails")
  List<AdditionalDoumentDetail>? get additionalDoumentDetails;
  @override
  @JsonKey(name: "motorInsuranceDocumentDetails")
  List<MotorInsuranceDocumentDetail>? get motorInsuranceDocumentDetails;
  @override
  @JsonKey(name: "nonMotorInsuranceDocumentDetails")
  List<NonMotorInsuranceDocumentDetail>? get nonMotorInsuranceDocumentDetails;
  @override
  @JsonKey(ignore: true)
  _$$AgentApplicationModelImplCopyWith<_$AgentApplicationModelImpl> get copyWith => throw _privateConstructorUsedError;
}

AdditionalDoumentDetail _$AdditionalDoumentDetailFromJson(Map<String, dynamic> json) {
  return _AdditionalDoumentDetail.fromJson(json);
}

/// @nodoc
mixin _$AdditionalDoumentDetail {
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
  @JsonKey(name: "additionalDoumentDetailId")
  int? get additionalDoumentDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDocumentTypeId")
  int? get additionalDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDocImagePath")
  String? get additionalDocImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalDoumentDetailCopyWith<AdditionalDoumentDetail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalDoumentDetailCopyWith<$Res> {
  factory $AdditionalDoumentDetailCopyWith(AdditionalDoumentDetail value, $Res Function(AdditionalDoumentDetail) then) =
      _$AdditionalDoumentDetailCopyWithImpl<$Res, AdditionalDoumentDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "additionalDoumentDetailId") int? additionalDoumentDetailId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "additionalDocumentTypeId") int? additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath});
}

/// @nodoc
class _$AdditionalDoumentDetailCopyWithImpl<$Res, $Val extends AdditionalDoumentDetail>
    implements $AdditionalDoumentDetailCopyWith<$Res> {
  _$AdditionalDoumentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? additionalDoumentDetailId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? additionalDocumentTypeId = freezed,
    Object? additionalDocImagePath = freezed,
  }) {
    return _then(_value.copyWith(
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
      additionalDoumentDetailId: freezed == additionalDoumentDetailId
          ? _value.additionalDoumentDetailId
          : additionalDoumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDocumentTypeId: freezed == additionalDocumentTypeId
          ? _value.additionalDocumentTypeId
          : additionalDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDocImagePath: freezed == additionalDocImagePath
          ? _value.additionalDocImagePath
          : additionalDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalDoumentDetailImplCopyWith<$Res> implements $AdditionalDoumentDetailCopyWith<$Res> {
  factory _$$AdditionalDoumentDetailImplCopyWith(
          _$AdditionalDoumentDetailImpl value, $Res Function(_$AdditionalDoumentDetailImpl) then) =
      __$$AdditionalDoumentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "additionalDoumentDetailId") int? additionalDoumentDetailId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "additionalDocumentTypeId") int? additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath});
}

/// @nodoc
class __$$AdditionalDoumentDetailImplCopyWithImpl<$Res>
    extends _$AdditionalDoumentDetailCopyWithImpl<$Res, _$AdditionalDoumentDetailImpl>
    implements _$$AdditionalDoumentDetailImplCopyWith<$Res> {
  __$$AdditionalDoumentDetailImplCopyWithImpl(
      _$AdditionalDoumentDetailImpl _value, $Res Function(_$AdditionalDoumentDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? additionalDoumentDetailId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? additionalDocumentTypeId = freezed,
    Object? additionalDocImagePath = freezed,
  }) {
    return _then(_$AdditionalDoumentDetailImpl(
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
      additionalDoumentDetailId: freezed == additionalDoumentDetailId
          ? _value.additionalDoumentDetailId
          : additionalDoumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDocumentTypeId: freezed == additionalDocumentTypeId
          ? _value.additionalDocumentTypeId
          : additionalDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDocImagePath: freezed == additionalDocImagePath
          ? _value.additionalDocImagePath
          : additionalDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdditionalDoumentDetailImpl implements _AdditionalDoumentDetail {
  const _$AdditionalDoumentDetailImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "additionalDoumentDetailId") this.additionalDoumentDetailId,
      @JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "additionalDocumentTypeId") this.additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") this.additionalDocImagePath});

  factory _$AdditionalDoumentDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalDoumentDetailImplFromJson(json);

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
  @JsonKey(name: "additionalDoumentDetailId")
  final int? additionalDoumentDetailId;
  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  final int? uploadDocumentId;
  @override
  @JsonKey(name: "additionalDocumentTypeId")
  final int? additionalDocumentTypeId;
  @override
  @JsonKey(name: "additionalDocImagePath")
  final String? additionalDocImagePath;

  @override
  String toString() {
    return 'AdditionalDoumentDetail(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, additionalDoumentDetailId: $additionalDoumentDetailId, agentApplicationId: $agentApplicationId, uploadDocumentId: $uploadDocumentId, additionalDocumentTypeId: $additionalDocumentTypeId, additionalDocImagePath: $additionalDocImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalDoumentDetailImpl &&
            (identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.additionalDoumentDetailId, additionalDoumentDetailId) ||
                other.additionalDoumentDetailId == additionalDoumentDetailId) &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.uploadDocumentId, uploadDocumentId) || other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.additionalDocumentTypeId, additionalDocumentTypeId) ||
                other.additionalDocumentTypeId == additionalDocumentTypeId) &&
            (identical(other.additionalDocImagePath, additionalDocImagePath) ||
                other.additionalDocImagePath == additionalDocImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDisabled, crd, crdBy, lmd, lmdBy, additionalDoumentDetailId,
      agentApplicationId, uploadDocumentId, additionalDocumentTypeId, additionalDocImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalDoumentDetailImplCopyWith<_$AdditionalDoumentDetailImpl> get copyWith =>
      __$$AdditionalDoumentDetailImplCopyWithImpl<_$AdditionalDoumentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalDoumentDetailImplToJson(
      this,
    );
  }
}

abstract class _AdditionalDoumentDetail implements AdditionalDoumentDetail {
  const factory _AdditionalDoumentDetail(
      {@JsonKey(name: "isDisabled") final bool? isDisabled,
      @JsonKey(name: "crd") final DateTime? crd,
      @JsonKey(name: "crdBy") final int? crdBy,
      @JsonKey(name: "lmd") final DateTime? lmd,
      @JsonKey(name: "lmdBy") final int? lmdBy,
      @JsonKey(name: "additionalDoumentDetailId") final int? additionalDoumentDetailId,
      @JsonKey(name: "agentApplicationId") final int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
      @JsonKey(name: "additionalDocumentTypeId") final int? additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") final String? additionalDocImagePath}) = _$AdditionalDoumentDetailImpl;

  factory _AdditionalDoumentDetail.fromJson(Map<String, dynamic> json) = _$AdditionalDoumentDetailImpl.fromJson;

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
  @JsonKey(name: "additionalDoumentDetailId")
  int? get additionalDoumentDetailId;
  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId;
  @override
  @JsonKey(name: "additionalDocumentTypeId")
  int? get additionalDocumentTypeId;
  @override
  @JsonKey(name: "additionalDocImagePath")
  String? get additionalDocImagePath;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalDoumentDetailImplCopyWith<_$AdditionalDoumentDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDocumentTypes _$AddressDocumentTypesFromJson(Map<String, dynamic> json) {
  return _AddressDocumentTypes.fromJson(json);
}

/// @nodoc
mixin _$AddressDocumentTypes {
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
  @JsonKey(name: "addressDocumentTypeId")
  int? get addressDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocType")
  String? get addressDocType => throw _privateConstructorUsedError;
  @JsonKey(name: "documentCode")
  String? get documentCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDocumentTypesCopyWith<AddressDocumentTypes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDocumentTypesCopyWith<$Res> {
  factory $AddressDocumentTypesCopyWith(AddressDocumentTypes value, $Res Function(AddressDocumentTypes) then) =
      _$AddressDocumentTypesCopyWithImpl<$Res, AddressDocumentTypes>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
      @JsonKey(name: "addressDocType") String? addressDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class _$AddressDocumentTypesCopyWithImpl<$Res, $Val extends AddressDocumentTypes>
    implements $AddressDocumentTypesCopyWith<$Res> {
  _$AddressDocumentTypesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? addressDocumentTypeId = freezed,
    Object? addressDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$AddressDocumentTypesImplCopyWith<$Res> implements $AddressDocumentTypesCopyWith<$Res> {
  factory _$$AddressDocumentTypesImplCopyWith(
          _$AddressDocumentTypesImpl value, $Res Function(_$AddressDocumentTypesImpl) then) =
      __$$AddressDocumentTypesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
      @JsonKey(name: "addressDocType") String? addressDocType,
      @JsonKey(name: "documentCode") String? documentCode});
}

/// @nodoc
class __$$AddressDocumentTypesImplCopyWithImpl<$Res>
    extends _$AddressDocumentTypesCopyWithImpl<$Res, _$AddressDocumentTypesImpl>
    implements _$$AddressDocumentTypesImplCopyWith<$Res> {
  __$$AddressDocumentTypesImplCopyWithImpl(
      _$AddressDocumentTypesImpl _value, $Res Function(_$AddressDocumentTypesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? addressDocumentTypeId = freezed,
    Object? addressDocType = freezed,
    Object? documentCode = freezed,
  }) {
    return _then(_$AddressDocumentTypesImpl(
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
class _$AddressDocumentTypesImpl implements _AddressDocumentTypes {
  const _$AddressDocumentTypesImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "addressDocumentTypeId") this.addressDocumentTypeId,
      @JsonKey(name: "addressDocType") this.addressDocType,
      @JsonKey(name: "documentCode") this.documentCode});

  factory _$AddressDocumentTypesImpl.fromJson(Map<String, dynamic> json) => _$$AddressDocumentTypesImplFromJson(json);

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
    return 'AddressDocumentTypes(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, addressDocumentTypeId: $addressDocumentTypeId, addressDocType: $addressDocType, documentCode: $documentCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDocumentTypesImpl &&
            (identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.addressDocumentTypeId, addressDocumentTypeId) ||
                other.addressDocumentTypeId == addressDocumentTypeId) &&
            (identical(other.addressDocType, addressDocType) || other.addressDocType == addressDocType) &&
            (identical(other.documentCode, documentCode) || other.documentCode == documentCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDisabled, crd, crdBy, lmd, lmdBy, addressDocumentTypeId, addressDocType, documentCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDocumentTypesImplCopyWith<_$AddressDocumentTypesImpl> get copyWith =>
      __$$AddressDocumentTypesImplCopyWithImpl<_$AddressDocumentTypesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDocumentTypesImplToJson(
      this,
    );
  }
}

abstract class _AddressDocumentTypes implements AddressDocumentTypes {
  const factory _AddressDocumentTypes(
      {@JsonKey(name: "isDisabled") final bool? isDisabled,
      @JsonKey(name: "crd") final DateTime? crd,
      @JsonKey(name: "crdBy") final int? crdBy,
      @JsonKey(name: "lmd") final DateTime? lmd,
      @JsonKey(name: "lmdBy") final int? lmdBy,
      @JsonKey(name: "addressDocumentTypeId") final int? addressDocumentTypeId,
      @JsonKey(name: "addressDocType") final String? addressDocType,
      @JsonKey(name: "documentCode") final String? documentCode}) = _$AddressDocumentTypesImpl;

  factory _AddressDocumentTypes.fromJson(Map<String, dynamic> json) = _$AddressDocumentTypesImpl.fromJson;

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
  _$$AddressDocumentTypesImplCopyWith<_$AddressDocumentTypesImpl> get copyWith => throw _privateConstructorUsedError;
}

MotorInsuranceDocumentDetail _$MotorInsuranceDocumentDetailFromJson(Map<String, dynamic> json) {
  return _MotorInsuranceDocumentDetail.fromJson(json);
}

/// @nodoc
mixin _$MotorInsuranceDocumentDetail {
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
  @JsonKey(name: "motorInsuranceDoumentDetailId")
  int? get motorInsuranceDoumentDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  int? get motorInsuranceDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "motorDocuImagePath")
  String? get motorDocuImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotorInsuranceDocumentDetailCopyWith<MotorInsuranceDocumentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotorInsuranceDocumentDetailCopyWith<$Res> {
  factory $MotorInsuranceDocumentDetailCopyWith(
          MotorInsuranceDocumentDetail value, $Res Function(MotorInsuranceDocumentDetail) then) =
      _$MotorInsuranceDocumentDetailCopyWithImpl<$Res, MotorInsuranceDocumentDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "motorInsuranceDoumentDetailId") int? motorInsuranceDoumentDetailId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "motorInsuranceDocumentTypeId") int? motorInsuranceDocumentTypeId,
      @JsonKey(name: "motorDocuImagePath") String? motorDocuImagePath});
}

/// @nodoc
class _$MotorInsuranceDocumentDetailCopyWithImpl<$Res, $Val extends MotorInsuranceDocumentDetail>
    implements $MotorInsuranceDocumentDetailCopyWith<$Res> {
  _$MotorInsuranceDocumentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? motorInsuranceDoumentDetailId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? motorInsuranceDocumentTypeId = freezed,
    Object? motorDocuImagePath = freezed,
  }) {
    return _then(_value.copyWith(
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
      motorInsuranceDoumentDetailId: freezed == motorInsuranceDoumentDetailId
          ? _value.motorInsuranceDoumentDetailId
          : motorInsuranceDoumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorInsuranceDocumentTypeId: freezed == motorInsuranceDocumentTypeId
          ? _value.motorInsuranceDocumentTypeId
          : motorInsuranceDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorDocuImagePath: freezed == motorDocuImagePath
          ? _value.motorDocuImagePath
          : motorDocuImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MotorInsuranceDocumentDetailImplCopyWith<$Res>
    implements $MotorInsuranceDocumentDetailCopyWith<$Res> {
  factory _$$MotorInsuranceDocumentDetailImplCopyWith(
          _$MotorInsuranceDocumentDetailImpl value, $Res Function(_$MotorInsuranceDocumentDetailImpl) then) =
      __$$MotorInsuranceDocumentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "motorInsuranceDoumentDetailId") int? motorInsuranceDoumentDetailId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "motorInsuranceDocumentTypeId") int? motorInsuranceDocumentTypeId,
      @JsonKey(name: "motorDocuImagePath") String? motorDocuImagePath});
}

/// @nodoc
class __$$MotorInsuranceDocumentDetailImplCopyWithImpl<$Res>
    extends _$MotorInsuranceDocumentDetailCopyWithImpl<$Res, _$MotorInsuranceDocumentDetailImpl>
    implements _$$MotorInsuranceDocumentDetailImplCopyWith<$Res> {
  __$$MotorInsuranceDocumentDetailImplCopyWithImpl(
      _$MotorInsuranceDocumentDetailImpl _value, $Res Function(_$MotorInsuranceDocumentDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? motorInsuranceDoumentDetailId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? motorInsuranceDocumentTypeId = freezed,
    Object? motorDocuImagePath = freezed,
  }) {
    return _then(_$MotorInsuranceDocumentDetailImpl(
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
      motorInsuranceDoumentDetailId: freezed == motorInsuranceDoumentDetailId
          ? _value.motorInsuranceDoumentDetailId
          : motorInsuranceDoumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorInsuranceDocumentTypeId: freezed == motorInsuranceDocumentTypeId
          ? _value.motorInsuranceDocumentTypeId
          : motorInsuranceDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      motorDocuImagePath: freezed == motorDocuImagePath
          ? _value.motorDocuImagePath
          : motorDocuImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MotorInsuranceDocumentDetailImpl implements _MotorInsuranceDocumentDetail {
  const _$MotorInsuranceDocumentDetailImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "motorInsuranceDoumentDetailId") this.motorInsuranceDoumentDetailId,
      @JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "motorInsuranceDocumentTypeId") this.motorInsuranceDocumentTypeId,
      @JsonKey(name: "motorDocuImagePath") this.motorDocuImagePath});

  factory _$MotorInsuranceDocumentDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$MotorInsuranceDocumentDetailImplFromJson(json);

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
  @JsonKey(name: "motorInsuranceDoumentDetailId")
  final int? motorInsuranceDoumentDetailId;
  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  final int? uploadDocumentId;
  @override
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  final int? motorInsuranceDocumentTypeId;
  @override
  @JsonKey(name: "motorDocuImagePath")
  final String? motorDocuImagePath;

  @override
  String toString() {
    return 'MotorInsuranceDocumentDetail(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, motorInsuranceDoumentDetailId: $motorInsuranceDoumentDetailId, agentApplicationId: $agentApplicationId, uploadDocumentId: $uploadDocumentId, motorInsuranceDocumentTypeId: $motorInsuranceDocumentTypeId, motorDocuImagePath: $motorDocuImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MotorInsuranceDocumentDetailImpl &&
            (identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.motorInsuranceDoumentDetailId, motorInsuranceDoumentDetailId) ||
                other.motorInsuranceDoumentDetailId == motorInsuranceDoumentDetailId) &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.uploadDocumentId, uploadDocumentId) || other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.motorInsuranceDocumentTypeId, motorInsuranceDocumentTypeId) ||
                other.motorInsuranceDocumentTypeId == motorInsuranceDocumentTypeId) &&
            (identical(other.motorDocuImagePath, motorDocuImagePath) ||
                other.motorDocuImagePath == motorDocuImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDisabled, crd, crdBy, lmd, lmdBy, motorInsuranceDoumentDetailId,
      agentApplicationId, uploadDocumentId, motorInsuranceDocumentTypeId, motorDocuImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MotorInsuranceDocumentDetailImplCopyWith<_$MotorInsuranceDocumentDetailImpl> get copyWith =>
      __$$MotorInsuranceDocumentDetailImplCopyWithImpl<_$MotorInsuranceDocumentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MotorInsuranceDocumentDetailImplToJson(
      this,
    );
  }
}

abstract class _MotorInsuranceDocumentDetail implements MotorInsuranceDocumentDetail {
  const factory _MotorInsuranceDocumentDetail(
      {@JsonKey(name: "isDisabled") final bool? isDisabled,
      @JsonKey(name: "crd") final DateTime? crd,
      @JsonKey(name: "crdBy") final int? crdBy,
      @JsonKey(name: "lmd") final DateTime? lmd,
      @JsonKey(name: "lmdBy") final int? lmdBy,
      @JsonKey(name: "motorInsuranceDoumentDetailId") final int? motorInsuranceDoumentDetailId,
      @JsonKey(name: "agentApplicationId") final int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
      @JsonKey(name: "motorInsuranceDocumentTypeId") final int? motorInsuranceDocumentTypeId,
      @JsonKey(name: "motorDocuImagePath") final String? motorDocuImagePath}) = _$MotorInsuranceDocumentDetailImpl;

  factory _MotorInsuranceDocumentDetail.fromJson(Map<String, dynamic> json) =
      _$MotorInsuranceDocumentDetailImpl.fromJson;

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
  @JsonKey(name: "motorInsuranceDoumentDetailId")
  int? get motorInsuranceDoumentDetailId;
  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId;
  @override
  @JsonKey(name: "motorInsuranceDocumentTypeId")
  int? get motorInsuranceDocumentTypeId;
  @override
  @JsonKey(name: "motorDocuImagePath")
  String? get motorDocuImagePath;
  @override
  @JsonKey(ignore: true)
  _$$MotorInsuranceDocumentDetailImplCopyWith<_$MotorInsuranceDocumentDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NonMotorInsuranceDocumentDetail _$NonMotorInsuranceDocumentDetailFromJson(Map<String, dynamic> json) {
  return _NonMotorInsuranceDocumentDetail.fromJson(json);
}

/// @nodoc
mixin _$NonMotorInsuranceDocumentDetail {
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
  @JsonKey(name: "nonMotorInsuranceDoumentDetailId")
  int? get nonMotorInsuranceDoumentDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "nonMotorInsuranceDocumentTypeId")
  int? get nonMotorInsuranceDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "nonMotorDocImagePath")
  String? get nonMotorDocImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NonMotorInsuranceDocumentDetailCopyWith<NonMotorInsuranceDocumentDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonMotorInsuranceDocumentDetailCopyWith<$Res> {
  factory $NonMotorInsuranceDocumentDetailCopyWith(
          NonMotorInsuranceDocumentDetail value, $Res Function(NonMotorInsuranceDocumentDetail) then) =
      _$NonMotorInsuranceDocumentDetailCopyWithImpl<$Res, NonMotorInsuranceDocumentDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "nonMotorInsuranceDoumentDetailId") int? nonMotorInsuranceDoumentDetailId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "nonMotorInsuranceDocumentTypeId") int? nonMotorInsuranceDocumentTypeId,
      @JsonKey(name: "nonMotorDocImagePath") String? nonMotorDocImagePath});
}

/// @nodoc
class _$NonMotorInsuranceDocumentDetailCopyWithImpl<$Res, $Val extends NonMotorInsuranceDocumentDetail>
    implements $NonMotorInsuranceDocumentDetailCopyWith<$Res> {
  _$NonMotorInsuranceDocumentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? nonMotorInsuranceDoumentDetailId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? nonMotorInsuranceDocumentTypeId = freezed,
    Object? nonMotorDocImagePath = freezed,
  }) {
    return _then(_value.copyWith(
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
      nonMotorInsuranceDoumentDetailId: freezed == nonMotorInsuranceDoumentDetailId
          ? _value.nonMotorInsuranceDoumentDetailId
          : nonMotorInsuranceDoumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorInsuranceDocumentTypeId: freezed == nonMotorInsuranceDocumentTypeId
          ? _value.nonMotorInsuranceDocumentTypeId
          : nonMotorInsuranceDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorDocImagePath: freezed == nonMotorDocImagePath
          ? _value.nonMotorDocImagePath
          : nonMotorDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NonMotorInsuranceDocumentDetailImplCopyWith<$Res>
    implements $NonMotorInsuranceDocumentDetailCopyWith<$Res> {
  factory _$$NonMotorInsuranceDocumentDetailImplCopyWith(
          _$NonMotorInsuranceDocumentDetailImpl value, $Res Function(_$NonMotorInsuranceDocumentDetailImpl) then) =
      __$$NonMotorInsuranceDocumentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "nonMotorInsuranceDoumentDetailId") int? nonMotorInsuranceDoumentDetailId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "nonMotorInsuranceDocumentTypeId") int? nonMotorInsuranceDocumentTypeId,
      @JsonKey(name: "nonMotorDocImagePath") String? nonMotorDocImagePath});
}

/// @nodoc
class __$$NonMotorInsuranceDocumentDetailImplCopyWithImpl<$Res>
    extends _$NonMotorInsuranceDocumentDetailCopyWithImpl<$Res, _$NonMotorInsuranceDocumentDetailImpl>
    implements _$$NonMotorInsuranceDocumentDetailImplCopyWith<$Res> {
  __$$NonMotorInsuranceDocumentDetailImplCopyWithImpl(
      _$NonMotorInsuranceDocumentDetailImpl _value, $Res Function(_$NonMotorInsuranceDocumentDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? nonMotorInsuranceDoumentDetailId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? nonMotorInsuranceDocumentTypeId = freezed,
    Object? nonMotorDocImagePath = freezed,
  }) {
    return _then(_$NonMotorInsuranceDocumentDetailImpl(
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
      nonMotorInsuranceDoumentDetailId: freezed == nonMotorInsuranceDoumentDetailId
          ? _value.nonMotorInsuranceDoumentDetailId
          : nonMotorInsuranceDoumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorInsuranceDocumentTypeId: freezed == nonMotorInsuranceDocumentTypeId
          ? _value.nonMotorInsuranceDocumentTypeId
          : nonMotorInsuranceDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nonMotorDocImagePath: freezed == nonMotorDocImagePath
          ? _value.nonMotorDocImagePath
          : nonMotorDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NonMotorInsuranceDocumentDetailImpl implements _NonMotorInsuranceDocumentDetail {
  const _$NonMotorInsuranceDocumentDetailImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "nonMotorInsuranceDoumentDetailId") this.nonMotorInsuranceDoumentDetailId,
      @JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "nonMotorInsuranceDocumentTypeId") this.nonMotorInsuranceDocumentTypeId,
      @JsonKey(name: "nonMotorDocImagePath") this.nonMotorDocImagePath});

  factory _$NonMotorInsuranceDocumentDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$NonMotorInsuranceDocumentDetailImplFromJson(json);

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
  @JsonKey(name: "nonMotorInsuranceDoumentDetailId")
  final int? nonMotorInsuranceDoumentDetailId;
  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  final int? uploadDocumentId;
  @override
  @JsonKey(name: "nonMotorInsuranceDocumentTypeId")
  final int? nonMotorInsuranceDocumentTypeId;
  @override
  @JsonKey(name: "nonMotorDocImagePath")
  final String? nonMotorDocImagePath;

  @override
  String toString() {
    return 'NonMotorInsuranceDocumentDetail(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, nonMotorInsuranceDoumentDetailId: $nonMotorInsuranceDoumentDetailId, agentApplicationId: $agentApplicationId, uploadDocumentId: $uploadDocumentId, nonMotorInsuranceDocumentTypeId: $nonMotorInsuranceDocumentTypeId, nonMotorDocImagePath: $nonMotorDocImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonMotorInsuranceDocumentDetailImpl &&
            (identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.nonMotorInsuranceDoumentDetailId, nonMotorInsuranceDoumentDetailId) ||
                other.nonMotorInsuranceDoumentDetailId == nonMotorInsuranceDoumentDetailId) &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.uploadDocumentId, uploadDocumentId) || other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.nonMotorInsuranceDocumentTypeId, nonMotorInsuranceDocumentTypeId) ||
                other.nonMotorInsuranceDocumentTypeId == nonMotorInsuranceDocumentTypeId) &&
            (identical(other.nonMotorDocImagePath, nonMotorDocImagePath) ||
                other.nonMotorDocImagePath == nonMotorDocImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDisabled, crd, crdBy, lmd, lmdBy, nonMotorInsuranceDoumentDetailId,
      agentApplicationId, uploadDocumentId, nonMotorInsuranceDocumentTypeId, nonMotorDocImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NonMotorInsuranceDocumentDetailImplCopyWith<_$NonMotorInsuranceDocumentDetailImpl> get copyWith =>
      __$$NonMotorInsuranceDocumentDetailImplCopyWithImpl<_$NonMotorInsuranceDocumentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NonMotorInsuranceDocumentDetailImplToJson(
      this,
    );
  }
}

abstract class _NonMotorInsuranceDocumentDetail implements NonMotorInsuranceDocumentDetail {
  const factory _NonMotorInsuranceDocumentDetail(
          {@JsonKey(name: "isDisabled") final bool? isDisabled,
          @JsonKey(name: "crd") final DateTime? crd,
          @JsonKey(name: "crdBy") final int? crdBy,
          @JsonKey(name: "lmd") final DateTime? lmd,
          @JsonKey(name: "lmdBy") final int? lmdBy,
          @JsonKey(name: "nonMotorInsuranceDoumentDetailId") final int? nonMotorInsuranceDoumentDetailId,
          @JsonKey(name: "agentApplicationId") final int? agentApplicationId,
          @JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
          @JsonKey(name: "nonMotorInsuranceDocumentTypeId") final int? nonMotorInsuranceDocumentTypeId,
          @JsonKey(name: "nonMotorDocImagePath") final String? nonMotorDocImagePath}) =
      _$NonMotorInsuranceDocumentDetailImpl;

  factory _NonMotorInsuranceDocumentDetail.fromJson(Map<String, dynamic> json) =
      _$NonMotorInsuranceDocumentDetailImpl.fromJson;

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
  @JsonKey(name: "nonMotorInsuranceDoumentDetailId")
  int? get nonMotorInsuranceDoumentDetailId;
  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId;
  @override
  @JsonKey(name: "nonMotorInsuranceDocumentTypeId")
  int? get nonMotorInsuranceDocumentTypeId;
  @override
  @JsonKey(name: "nonMotorDocImagePath")
  String? get nonMotorDocImagePath;
  @override
  @JsonKey(ignore: true)
  _$$NonMotorInsuranceDocumentDetailImplCopyWith<_$NonMotorInsuranceDocumentDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicyDocumentDetail _$PolicyDocumentDetailFromJson(Map<String, dynamic> json) {
  return _PolicyDocumentDetail.fromJson(json);
}

/// @nodoc
mixin _$PolicyDocumentDetail {
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
  @JsonKey(name: "policyDoumentDetailId")
  int? get policyDoumentDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "policyDocumentTypeId")
  int? get policyDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "policyDouImagePath")
  String? get policyDouImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyDocumentDetailCopyWith<PolicyDocumentDetail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyDocumentDetailCopyWith<$Res> {
  factory $PolicyDocumentDetailCopyWith(PolicyDocumentDetail value, $Res Function(PolicyDocumentDetail) then) =
      _$PolicyDocumentDetailCopyWithImpl<$Res, PolicyDocumentDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "policyDoumentDetailId") int? policyDoumentDetailId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
      @JsonKey(name: "policyDouImagePath") String? policyDouImagePath});
}

/// @nodoc
class _$PolicyDocumentDetailCopyWithImpl<$Res, $Val extends PolicyDocumentDetail>
    implements $PolicyDocumentDetailCopyWith<$Res> {
  _$PolicyDocumentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? policyDoumentDetailId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? policyDocumentTypeId = freezed,
    Object? policyDouImagePath = freezed,
  }) {
    return _then(_value.copyWith(
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
      policyDoumentDetailId: freezed == policyDoumentDetailId
          ? _value.policyDoumentDetailId
          : policyDoumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDocumentTypeId: freezed == policyDocumentTypeId
          ? _value.policyDocumentTypeId
          : policyDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDouImagePath: freezed == policyDouImagePath
          ? _value.policyDouImagePath
          : policyDouImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyDocumentDetailImplCopyWith<$Res> implements $PolicyDocumentDetailCopyWith<$Res> {
  factory _$$PolicyDocumentDetailImplCopyWith(
          _$PolicyDocumentDetailImpl value, $Res Function(_$PolicyDocumentDetailImpl) then) =
      __$$PolicyDocumentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "policyDoumentDetailId") int? policyDoumentDetailId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
      @JsonKey(name: "policyDouImagePath") String? policyDouImagePath});
}

/// @nodoc
class __$$PolicyDocumentDetailImplCopyWithImpl<$Res>
    extends _$PolicyDocumentDetailCopyWithImpl<$Res, _$PolicyDocumentDetailImpl>
    implements _$$PolicyDocumentDetailImplCopyWith<$Res> {
  __$$PolicyDocumentDetailImplCopyWithImpl(
      _$PolicyDocumentDetailImpl _value, $Res Function(_$PolicyDocumentDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? policyDoumentDetailId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? policyDocumentTypeId = freezed,
    Object? policyDouImagePath = freezed,
  }) {
    return _then(_$PolicyDocumentDetailImpl(
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
      policyDoumentDetailId: freezed == policyDoumentDetailId
          ? _value.policyDoumentDetailId
          : policyDoumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDocumentTypeId: freezed == policyDocumentTypeId
          ? _value.policyDocumentTypeId
          : policyDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDouImagePath: freezed == policyDouImagePath
          ? _value.policyDouImagePath
          : policyDouImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyDocumentDetailImpl implements _PolicyDocumentDetail {
  const _$PolicyDocumentDetailImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "policyDoumentDetailId") this.policyDoumentDetailId,
      @JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "policyDocumentTypeId") this.policyDocumentTypeId,
      @JsonKey(name: "policyDouImagePath") this.policyDouImagePath});

  factory _$PolicyDocumentDetailImpl.fromJson(Map<String, dynamic> json) => _$$PolicyDocumentDetailImplFromJson(json);

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
  @JsonKey(name: "policyDoumentDetailId")
  final int? policyDoumentDetailId;
  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  final int? uploadDocumentId;
  @override
  @JsonKey(name: "policyDocumentTypeId")
  final int? policyDocumentTypeId;
  @override
  @JsonKey(name: "policyDouImagePath")
  final String? policyDouImagePath;

  @override
  String toString() {
    return 'PolicyDocumentDetail(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, policyDoumentDetailId: $policyDoumentDetailId, agentApplicationId: $agentApplicationId, uploadDocumentId: $uploadDocumentId, policyDocumentTypeId: $policyDocumentTypeId, policyDouImagePath: $policyDouImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyDocumentDetailImpl &&
            (identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.policyDoumentDetailId, policyDoumentDetailId) ||
                other.policyDoumentDetailId == policyDoumentDetailId) &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.uploadDocumentId, uploadDocumentId) || other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.policyDocumentTypeId, policyDocumentTypeId) ||
                other.policyDocumentTypeId == policyDocumentTypeId) &&
            (identical(other.policyDouImagePath, policyDouImagePath) ||
                other.policyDouImagePath == policyDouImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDisabled, crd, crdBy, lmd, lmdBy, policyDoumentDetailId,
      agentApplicationId, uploadDocumentId, policyDocumentTypeId, policyDouImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyDocumentDetailImplCopyWith<_$PolicyDocumentDetailImpl> get copyWith =>
      __$$PolicyDocumentDetailImplCopyWithImpl<_$PolicyDocumentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyDocumentDetailImplToJson(
      this,
    );
  }
}

abstract class _PolicyDocumentDetail implements PolicyDocumentDetail {
  const factory _PolicyDocumentDetail(
      {@JsonKey(name: "isDisabled") final bool? isDisabled,
      @JsonKey(name: "crd") final DateTime? crd,
      @JsonKey(name: "crdBy") final int? crdBy,
      @JsonKey(name: "lmd") final DateTime? lmd,
      @JsonKey(name: "lmdBy") final int? lmdBy,
      @JsonKey(name: "policyDoumentDetailId") final int? policyDoumentDetailId,
      @JsonKey(name: "agentApplicationId") final int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
      @JsonKey(name: "policyDocumentTypeId") final int? policyDocumentTypeId,
      @JsonKey(name: "policyDouImagePath") final String? policyDouImagePath}) = _$PolicyDocumentDetailImpl;

  factory _PolicyDocumentDetail.fromJson(Map<String, dynamic> json) = _$PolicyDocumentDetailImpl.fromJson;

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
  @JsonKey(name: "policyDoumentDetailId")
  int? get policyDoumentDetailId;
  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId;
  @override
  @JsonKey(name: "policyDocumentTypeId")
  int? get policyDocumentTypeId;
  @override
  @JsonKey(name: "policyDouImagePath")
  String? get policyDouImagePath;
  @override
  @JsonKey(ignore: true)
  _$$PolicyDocumentDetailImplCopyWith<_$PolicyDocumentDetailImpl> get copyWith => throw _privateConstructorUsedError;
}

PorDocumentDetail _$PorDocumentDetailFromJson(Map<String, dynamic> json) {
  return _PorDocumentDetail.fromJson(json);
}

/// @nodoc
mixin _$PorDocumentDetail {
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
  @JsonKey(name: "porDocumentDetailId")
  int? get porDocumentDetailId => throw _privateConstructorUsedError;
  @JsonKey(name: "porDocumentTypeId")
  int? get porDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "lastName")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "issueDate")
  DateTime? get issueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "porDocImagePath")
  String? get porDocImagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PorDocumentDetailCopyWith<PorDocumentDetail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PorDocumentDetailCopyWith<$Res> {
  factory $PorDocumentDetailCopyWith(PorDocumentDetail value, $Res Function(PorDocumentDetail) then) =
      _$PorDocumentDetailCopyWithImpl<$Res, PorDocumentDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "porDocumentDetailId") int? porDocumentDetailId,
      @JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "issueDate") DateTime? issueDate,
      @JsonKey(name: "porDocImagePath") String? porDocImagePath});
}

/// @nodoc
class _$PorDocumentDetailCopyWithImpl<$Res, $Val extends PorDocumentDetail>
    implements $PorDocumentDetailCopyWith<$Res> {
  _$PorDocumentDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? porDocumentDetailId = freezed,
    Object? porDocumentTypeId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? lastName = freezed,
    Object? issueDate = freezed,
    Object? porDocImagePath = freezed,
  }) {
    return _then(_value.copyWith(
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
      porDocumentDetailId: freezed == porDocumentDetailId
          ? _value.porDocumentDetailId
          : porDocumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      porDocumentTypeId: freezed == porDocumentTypeId
          ? _value.porDocumentTypeId
          : porDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      porDocImagePath: freezed == porDocImagePath
          ? _value.porDocImagePath
          : porDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PorDocumentDetailImplCopyWith<$Res> implements $PorDocumentDetailCopyWith<$Res> {
  factory _$$PorDocumentDetailImplCopyWith(_$PorDocumentDetailImpl value, $Res Function(_$PorDocumentDetailImpl) then) =
      __$$PorDocumentDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "porDocumentDetailId") int? porDocumentDetailId,
      @JsonKey(name: "porDocumentTypeId") int? porDocumentTypeId,
      @JsonKey(name: "agentApplicationId") int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") int? uploadDocumentId,
      @JsonKey(name: "lastName") String? lastName,
      @JsonKey(name: "issueDate") DateTime? issueDate,
      @JsonKey(name: "porDocImagePath") String? porDocImagePath});
}

/// @nodoc
class __$$PorDocumentDetailImplCopyWithImpl<$Res> extends _$PorDocumentDetailCopyWithImpl<$Res, _$PorDocumentDetailImpl>
    implements _$$PorDocumentDetailImplCopyWith<$Res> {
  __$$PorDocumentDetailImplCopyWithImpl(_$PorDocumentDetailImpl _value, $Res Function(_$PorDocumentDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? porDocumentDetailId = freezed,
    Object? porDocumentTypeId = freezed,
    Object? agentApplicationId = freezed,
    Object? uploadDocumentId = freezed,
    Object? lastName = freezed,
    Object? issueDate = freezed,
    Object? porDocImagePath = freezed,
  }) {
    return _then(_$PorDocumentDetailImpl(
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
      porDocumentDetailId: freezed == porDocumentDetailId
          ? _value.porDocumentDetailId
          : porDocumentDetailId // ignore: cast_nullable_to_non_nullable
              as int?,
      porDocumentTypeId: freezed == porDocumentTypeId
          ? _value.porDocumentTypeId
          : porDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      agentApplicationId: freezed == agentApplicationId
          ? _value.agentApplicationId
          : agentApplicationId // ignore: cast_nullable_to_non_nullable
              as int?,
      uploadDocumentId: freezed == uploadDocumentId
          ? _value.uploadDocumentId
          : uploadDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      issueDate: freezed == issueDate
          ? _value.issueDate
          : issueDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      porDocImagePath: freezed == porDocImagePath
          ? _value.porDocImagePath
          : porDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PorDocumentDetailImpl implements _PorDocumentDetail {
  const _$PorDocumentDetailImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "porDocumentDetailId") this.porDocumentDetailId,
      @JsonKey(name: "porDocumentTypeId") this.porDocumentTypeId,
      @JsonKey(name: "agentApplicationId") this.agentApplicationId,
      @JsonKey(name: "uploadDocumentId") this.uploadDocumentId,
      @JsonKey(name: "lastName") this.lastName,
      @JsonKey(name: "issueDate") this.issueDate,
      @JsonKey(name: "porDocImagePath") this.porDocImagePath});

  factory _$PorDocumentDetailImpl.fromJson(Map<String, dynamic> json) => _$$PorDocumentDetailImplFromJson(json);

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
  @JsonKey(name: "porDocumentDetailId")
  final int? porDocumentDetailId;
  @override
  @JsonKey(name: "porDocumentTypeId")
  final int? porDocumentTypeId;
  @override
  @JsonKey(name: "agentApplicationId")
  final int? agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  final int? uploadDocumentId;
  @override
  @JsonKey(name: "lastName")
  final String? lastName;
  @override
  @JsonKey(name: "issueDate")
  final DateTime? issueDate;
  @override
  @JsonKey(name: "porDocImagePath")
  final String? porDocImagePath;

  @override
  String toString() {
    return 'PorDocumentDetail(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, porDocumentDetailId: $porDocumentDetailId, porDocumentTypeId: $porDocumentTypeId, agentApplicationId: $agentApplicationId, uploadDocumentId: $uploadDocumentId, lastName: $lastName, issueDate: $issueDate, porDocImagePath: $porDocImagePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PorDocumentDetailImpl &&
            (identical(other.isDisabled, isDisabled) || other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.porDocumentDetailId, porDocumentDetailId) ||
                other.porDocumentDetailId == porDocumentDetailId) &&
            (identical(other.porDocumentTypeId, porDocumentTypeId) || other.porDocumentTypeId == porDocumentTypeId) &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.uploadDocumentId, uploadDocumentId) || other.uploadDocumentId == uploadDocumentId) &&
            (identical(other.lastName, lastName) || other.lastName == lastName) &&
            (identical(other.issueDate, issueDate) || other.issueDate == issueDate) &&
            (identical(other.porDocImagePath, porDocImagePath) || other.porDocImagePath == porDocImagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDisabled, crd, crdBy, lmd, lmdBy, porDocumentDetailId,
      porDocumentTypeId, agentApplicationId, uploadDocumentId, lastName, issueDate, porDocImagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PorDocumentDetailImplCopyWith<_$PorDocumentDetailImpl> get copyWith =>
      __$$PorDocumentDetailImplCopyWithImpl<_$PorDocumentDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PorDocumentDetailImplToJson(
      this,
    );
  }
}

abstract class _PorDocumentDetail implements PorDocumentDetail {
  const factory _PorDocumentDetail(
      {@JsonKey(name: "isDisabled") final bool? isDisabled,
      @JsonKey(name: "crd") final DateTime? crd,
      @JsonKey(name: "crdBy") final int? crdBy,
      @JsonKey(name: "lmd") final DateTime? lmd,
      @JsonKey(name: "lmdBy") final int? lmdBy,
      @JsonKey(name: "porDocumentDetailId") final int? porDocumentDetailId,
      @JsonKey(name: "porDocumentTypeId") final int? porDocumentTypeId,
      @JsonKey(name: "agentApplicationId") final int? agentApplicationId,
      @JsonKey(name: "uploadDocumentId") final int? uploadDocumentId,
      @JsonKey(name: "lastName") final String? lastName,
      @JsonKey(name: "issueDate") final DateTime? issueDate,
      @JsonKey(name: "porDocImagePath") final String? porDocImagePath}) = _$PorDocumentDetailImpl;

  factory _PorDocumentDetail.fromJson(Map<String, dynamic> json) = _$PorDocumentDetailImpl.fromJson;

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
  @JsonKey(name: "porDocumentDetailId")
  int? get porDocumentDetailId;
  @override
  @JsonKey(name: "porDocumentTypeId")
  int? get porDocumentTypeId;
  @override
  @JsonKey(name: "agentApplicationId")
  int? get agentApplicationId;
  @override
  @JsonKey(name: "uploadDocumentId")
  int? get uploadDocumentId;
  @override
  @JsonKey(name: "lastName")
  String? get lastName;
  @override
  @JsonKey(name: "issueDate")
  DateTime? get issueDate;
  @override
  @JsonKey(name: "porDocImagePath")
  String? get porDocImagePath;
  @override
  @JsonKey(ignore: true)
  _$$PorDocumentDetailImplCopyWith<_$PorDocumentDetailImpl> get copyWith => throw _privateConstructorUsedError;
}
