// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_address_details_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveAddressDetailsRequestModel _$SaveAddressDetailsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SaveAddressDetailsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SaveAddressDetailsRequestModel {
  @JsonKey(name: "applicationRefNo")
  String? get applicationRefNo => throw _privateConstructorUsedError;
  @JsonKey(name: "documentTypeId")
  int? get documentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "docImagePath")
  String? get docImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "docSurname")
  String? get docSurname => throw _privateConstructorUsedError;
  @JsonKey(name: "docOtherName")
  String? get docOtherName => throw _privateConstructorUsedError;
  @JsonKey(name: "docBillDate")
  DateTime? get docBillDate => throw _privateConstructorUsedError;
  @JsonKey(name: "docAddress")
  String? get docAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "uploadedDocumentId")
  int? get uploadedDocumentId => throw _privateConstructorUsedError;
  @JsonKey(name: "isAddressVerificationCompleted")
  bool? get isAddressVerificationCompleted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "porRequired")
  bool? get porRequired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveAddressDetailsRequestModelCopyWith<SaveAddressDetailsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveAddressDetailsRequestModelCopyWith<$Res> {
  factory $SaveAddressDetailsRequestModelCopyWith(
          SaveAddressDetailsRequestModel value,
          $Res Function(SaveAddressDetailsRequestModel) then) =
      _$SaveAddressDetailsRequestModelCopyWithImpl<$Res,
          SaveAddressDetailsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "applicationRefNo") String? applicationRefNo,
      @JsonKey(name: "documentTypeId") int? documentTypeId,
      @JsonKey(name: "docImagePath") String? docImagePath,
      @JsonKey(name: "docSurname") String? docSurname,
      @JsonKey(name: "docOtherName") String? docOtherName,
      @JsonKey(name: "docBillDate") DateTime? docBillDate,
      @JsonKey(name: "docAddress") String? docAddress,
      @JsonKey(name: "uploadedDocumentId") int? uploadedDocumentId,
      @JsonKey(name: "isAddressVerificationCompleted")
      bool? isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") bool? porRequired});
}

/// @nodoc
class _$SaveAddressDetailsRequestModelCopyWithImpl<$Res,
        $Val extends SaveAddressDetailsRequestModel>
    implements $SaveAddressDetailsRequestModelCopyWith<$Res> {
  _$SaveAddressDetailsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationRefNo = freezed,
    Object? documentTypeId = freezed,
    Object? docImagePath = freezed,
    Object? docSurname = freezed,
    Object? docOtherName = freezed,
    Object? docBillDate = freezed,
    Object? docAddress = freezed,
    Object? uploadedDocumentId = freezed,
    Object? isAddressVerificationCompleted = freezed,
    Object? porRequired = freezed,
  }) {
    return _then(_value.copyWith(
      applicationRefNo: freezed == applicationRefNo
          ? _value.applicationRefNo
          : applicationRefNo // ignore: cast_nullable_to_non_nullable
              as String?,
      documentTypeId: freezed == documentTypeId
          ? _value.documentTypeId
          : documentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      docImagePath: freezed == docImagePath
          ? _value.docImagePath
          : docImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      docSurname: freezed == docSurname
          ? _value.docSurname
          : docSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      docOtherName: freezed == docOtherName
          ? _value.docOtherName
          : docOtherName // ignore: cast_nullable_to_non_nullable
              as String?,
      docBillDate: freezed == docBillDate
          ? _value.docBillDate
          : docBillDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      docAddress: freezed == docAddress
          ? _value.docAddress
          : docAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedDocumentId: freezed == uploadedDocumentId
          ? _value.uploadedDocumentId
          : uploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAddressVerificationCompleted: freezed == isAddressVerificationCompleted
          ? _value.isAddressVerificationCompleted
          : isAddressVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      porRequired: freezed == porRequired
          ? _value.porRequired
          : porRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveAddressDetailsRequestModelImplCopyWith<$Res>
    implements $SaveAddressDetailsRequestModelCopyWith<$Res> {
  factory _$$SaveAddressDetailsRequestModelImplCopyWith(
          _$SaveAddressDetailsRequestModelImpl value,
          $Res Function(_$SaveAddressDetailsRequestModelImpl) then) =
      __$$SaveAddressDetailsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "applicationRefNo") String? applicationRefNo,
      @JsonKey(name: "documentTypeId") int? documentTypeId,
      @JsonKey(name: "docImagePath") String? docImagePath,
      @JsonKey(name: "docSurname") String? docSurname,
      @JsonKey(name: "docOtherName") String? docOtherName,
      @JsonKey(name: "docBillDate") DateTime? docBillDate,
      @JsonKey(name: "docAddress") String? docAddress,
      @JsonKey(name: "uploadedDocumentId") int? uploadedDocumentId,
      @JsonKey(name: "isAddressVerificationCompleted")
      bool? isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") bool? porRequired});
}

/// @nodoc
class __$$SaveAddressDetailsRequestModelImplCopyWithImpl<$Res>
    extends _$SaveAddressDetailsRequestModelCopyWithImpl<$Res,
        _$SaveAddressDetailsRequestModelImpl>
    implements _$$SaveAddressDetailsRequestModelImplCopyWith<$Res> {
  __$$SaveAddressDetailsRequestModelImplCopyWithImpl(
      _$SaveAddressDetailsRequestModelImpl _value,
      $Res Function(_$SaveAddressDetailsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationRefNo = freezed,
    Object? documentTypeId = freezed,
    Object? docImagePath = freezed,
    Object? docSurname = freezed,
    Object? docOtherName = freezed,
    Object? docBillDate = freezed,
    Object? docAddress = freezed,
    Object? uploadedDocumentId = freezed,
    Object? isAddressVerificationCompleted = freezed,
    Object? porRequired = freezed,
  }) {
    return _then(_$SaveAddressDetailsRequestModelImpl(
      applicationRefNo: freezed == applicationRefNo
          ? _value.applicationRefNo
          : applicationRefNo // ignore: cast_nullable_to_non_nullable
              as String?,
      documentTypeId: freezed == documentTypeId
          ? _value.documentTypeId
          : documentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      docImagePath: freezed == docImagePath
          ? _value.docImagePath
          : docImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      docSurname: freezed == docSurname
          ? _value.docSurname
          : docSurname // ignore: cast_nullable_to_non_nullable
              as String?,
      docOtherName: freezed == docOtherName
          ? _value.docOtherName
          : docOtherName // ignore: cast_nullable_to_non_nullable
              as String?,
      docBillDate: freezed == docBillDate
          ? _value.docBillDate
          : docBillDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      docAddress: freezed == docAddress
          ? _value.docAddress
          : docAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadedDocumentId: freezed == uploadedDocumentId
          ? _value.uploadedDocumentId
          : uploadedDocumentId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAddressVerificationCompleted: freezed == isAddressVerificationCompleted
          ? _value.isAddressVerificationCompleted
          : isAddressVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      porRequired: freezed == porRequired
          ? _value.porRequired
          : porRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveAddressDetailsRequestModelImpl
    implements _SaveAddressDetailsRequestModel {
  const _$SaveAddressDetailsRequestModelImpl(
      {@JsonKey(name: "applicationRefNo") this.applicationRefNo,
      @JsonKey(name: "documentTypeId") this.documentTypeId,
      @JsonKey(name: "docImagePath") this.docImagePath,
      @JsonKey(name: "docSurname") this.docSurname,
      @JsonKey(name: "docOtherName") this.docOtherName,
      @JsonKey(name: "docBillDate") this.docBillDate,
      @JsonKey(name: "docAddress") this.docAddress,
      @JsonKey(name: "uploadedDocumentId") this.uploadedDocumentId,
      @JsonKey(name: "isAddressVerificationCompleted")
      this.isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") this.porRequired});

  factory _$SaveAddressDetailsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveAddressDetailsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "applicationRefNo")
  final String? applicationRefNo;
  @override
  @JsonKey(name: "documentTypeId")
  final int? documentTypeId;
  @override
  @JsonKey(name: "docImagePath")
  final String? docImagePath;
  @override
  @JsonKey(name: "docSurname")
  final String? docSurname;
  @override
  @JsonKey(name: "docOtherName")
  final String? docOtherName;
  @override
  @JsonKey(name: "docBillDate")
  final DateTime? docBillDate;
  @override
  @JsonKey(name: "docAddress")
  final String? docAddress;
  @override
  @JsonKey(name: "uploadedDocumentId")
  final int? uploadedDocumentId;
  @override
  @JsonKey(name: "isAddressVerificationCompleted")
  final bool? isAddressVerificationCompleted;
  @override
  @JsonKey(name: "porRequired")
  final bool? porRequired;

  @override
  String toString() {
    return 'SaveAddressDetailsRequestModel(applicationRefNo: $applicationRefNo, documentTypeId: $documentTypeId, docImagePath: $docImagePath, docSurname: $docSurname, docOtherName: $docOtherName, docBillDate: $docBillDate, docAddress: $docAddress, uploadedDocumentId: $uploadedDocumentId, isAddressVerificationCompleted: $isAddressVerificationCompleted, porRequired: $porRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAddressDetailsRequestModelImpl &&
            (identical(other.applicationRefNo, applicationRefNo) ||
                other.applicationRefNo == applicationRefNo) &&
            (identical(other.documentTypeId, documentTypeId) ||
                other.documentTypeId == documentTypeId) &&
            (identical(other.docImagePath, docImagePath) ||
                other.docImagePath == docImagePath) &&
            (identical(other.docSurname, docSurname) ||
                other.docSurname == docSurname) &&
            (identical(other.docOtherName, docOtherName) ||
                other.docOtherName == docOtherName) &&
            (identical(other.docBillDate, docBillDate) ||
                other.docBillDate == docBillDate) &&
            (identical(other.docAddress, docAddress) ||
                other.docAddress == docAddress) &&
            (identical(other.uploadedDocumentId, uploadedDocumentId) ||
                other.uploadedDocumentId == uploadedDocumentId) &&
            (identical(other.isAddressVerificationCompleted,
                    isAddressVerificationCompleted) ||
                other.isAddressVerificationCompleted ==
                    isAddressVerificationCompleted) &&
            (identical(other.porRequired, porRequired) ||
                other.porRequired == porRequired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      applicationRefNo,
      documentTypeId,
      docImagePath,
      docSurname,
      docOtherName,
      docBillDate,
      docAddress,
      uploadedDocumentId,
      isAddressVerificationCompleted,
      porRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveAddressDetailsRequestModelImplCopyWith<
          _$SaveAddressDetailsRequestModelImpl>
      get copyWith => __$$SaveAddressDetailsRequestModelImplCopyWithImpl<
          _$SaveAddressDetailsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveAddressDetailsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SaveAddressDetailsRequestModel
    implements SaveAddressDetailsRequestModel {
  const factory _SaveAddressDetailsRequestModel(
          {@JsonKey(name: "applicationRefNo") final String? applicationRefNo,
          @JsonKey(name: "documentTypeId") final int? documentTypeId,
          @JsonKey(name: "docImagePath") final String? docImagePath,
          @JsonKey(name: "docSurname") final String? docSurname,
          @JsonKey(name: "docOtherName") final String? docOtherName,
          @JsonKey(name: "docBillDate") final DateTime? docBillDate,
          @JsonKey(name: "docAddress") final String? docAddress,
          @JsonKey(name: "uploadedDocumentId") final int? uploadedDocumentId,
          @JsonKey(name: "isAddressVerificationCompleted")
          final bool? isAddressVerificationCompleted,
          @JsonKey(name: "porRequired") final bool? porRequired}) =
      _$SaveAddressDetailsRequestModelImpl;

  factory _SaveAddressDetailsRequestModel.fromJson(Map<String, dynamic> json) =
      _$SaveAddressDetailsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "applicationRefNo")
  String? get applicationRefNo;
  @override
  @JsonKey(name: "documentTypeId")
  int? get documentTypeId;
  @override
  @JsonKey(name: "docImagePath")
  String? get docImagePath;
  @override
  @JsonKey(name: "docSurname")
  String? get docSurname;
  @override
  @JsonKey(name: "docOtherName")
  String? get docOtherName;
  @override
  @JsonKey(name: "docBillDate")
  DateTime? get docBillDate;
  @override
  @JsonKey(name: "docAddress")
  String? get docAddress;
  @override
  @JsonKey(name: "uploadedDocumentId")
  int? get uploadedDocumentId;
  @override
  @JsonKey(name: "isAddressVerificationCompleted")
  bool? get isAddressVerificationCompleted;
  @override
  @JsonKey(name: "porRequired")
  bool? get porRequired;
  @override
  @JsonKey(ignore: true)
  _$$SaveAddressDetailsRequestModelImplCopyWith<
          _$SaveAddressDetailsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
