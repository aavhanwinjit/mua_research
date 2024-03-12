// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_agent_applications_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetAgentApplicationsResponseModel _$GetAgentApplicationsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GetAgentApplicationsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GetAgentApplicationsResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GetAgentApplicationsData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAgentApplicationsResponseModelCopyWith<GetAgentApplicationsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentApplicationsResponseModelCopyWith<$Res> {
  factory $GetAgentApplicationsResponseModelCopyWith(
          GetAgentApplicationsResponseModel value,
          $Res Function(GetAgentApplicationsResponseModel) then) =
      _$GetAgentApplicationsResponseModelCopyWithImpl<$Res,
          GetAgentApplicationsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetAgentApplicationsData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $GetAgentApplicationsDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GetAgentApplicationsResponseModelCopyWithImpl<$Res,
        $Val extends GetAgentApplicationsResponseModel>
    implements $GetAgentApplicationsResponseModelCopyWith<$Res> {
  _$GetAgentApplicationsResponseModelCopyWithImpl(this._value, this._then);

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
              as GetAgentApplicationsData?,
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
  $GetAgentApplicationsDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GetAgentApplicationsDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GetAgentApplicationsResponseModelImplCopyWith<$Res>
    implements $GetAgentApplicationsResponseModelCopyWith<$Res> {
  factory _$$GetAgentApplicationsResponseModelImplCopyWith(
          _$GetAgentApplicationsResponseModelImpl value,
          $Res Function(_$GetAgentApplicationsResponseModelImpl) then) =
      __$$GetAgentApplicationsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") GetAgentApplicationsData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $GetAgentApplicationsDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GetAgentApplicationsResponseModelImplCopyWithImpl<$Res>
    extends _$GetAgentApplicationsResponseModelCopyWithImpl<$Res,
        _$GetAgentApplicationsResponseModelImpl>
    implements _$$GetAgentApplicationsResponseModelImplCopyWith<$Res> {
  __$$GetAgentApplicationsResponseModelImplCopyWithImpl(
      _$GetAgentApplicationsResponseModelImpl _value,
      $Res Function(_$GetAgentApplicationsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GetAgentApplicationsResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GetAgentApplicationsData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAgentApplicationsResponseModelImpl
    implements _GetAgentApplicationsResponseModel {
  const _$GetAgentApplicationsResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GetAgentApplicationsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAgentApplicationsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final GetAgentApplicationsData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GetAgentApplicationsResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgentApplicationsResponseModelImpl &&
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
  _$$GetAgentApplicationsResponseModelImplCopyWith<
          _$GetAgentApplicationsResponseModelImpl>
      get copyWith => __$$GetAgentApplicationsResponseModelImplCopyWithImpl<
          _$GetAgentApplicationsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAgentApplicationsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GetAgentApplicationsResponseModel
    implements GetAgentApplicationsResponseModel {
  const factory _GetAgentApplicationsResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final GetAgentApplicationsData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GetAgentApplicationsResponseModelImpl;

  factory _GetAgentApplicationsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAgentApplicationsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  GetAgentApplicationsData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentApplicationsResponseModelImplCopyWith<
          _$GetAgentApplicationsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAgentApplicationsData _$GetAgentApplicationsDataFromJson(
    Map<String, dynamic> json) {
  return _GetAgentApplicationsData.fromJson(json);
}

/// @nodoc
mixin _$GetAgentApplicationsData {
  @JsonKey(name: "rb")
  GetAgentApplicationsResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAgentApplicationsDataCopyWith<GetAgentApplicationsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentApplicationsDataCopyWith<$Res> {
  factory $GetAgentApplicationsDataCopyWith(GetAgentApplicationsData value,
          $Res Function(GetAgentApplicationsData) then) =
      _$GetAgentApplicationsDataCopyWithImpl<$Res, GetAgentApplicationsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") GetAgentApplicationsResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $GetAgentApplicationsResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$GetAgentApplicationsDataCopyWithImpl<$Res,
        $Val extends GetAgentApplicationsData>
    implements $GetAgentApplicationsDataCopyWith<$Res> {
  _$GetAgentApplicationsDataCopyWithImpl(this._value, this._then);

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
              as GetAgentApplicationsResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetAgentApplicationsResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $GetAgentApplicationsResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetAgentApplicationsDataImplCopyWith<$Res>
    implements $GetAgentApplicationsDataCopyWith<$Res> {
  factory _$$GetAgentApplicationsDataImplCopyWith(
          _$GetAgentApplicationsDataImpl value,
          $Res Function(_$GetAgentApplicationsDataImpl) then) =
      __$$GetAgentApplicationsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") GetAgentApplicationsResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $GetAgentApplicationsResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$GetAgentApplicationsDataImplCopyWithImpl<$Res>
    extends _$GetAgentApplicationsDataCopyWithImpl<$Res,
        _$GetAgentApplicationsDataImpl>
    implements _$$GetAgentApplicationsDataImplCopyWith<$Res> {
  __$$GetAgentApplicationsDataImplCopyWithImpl(
      _$GetAgentApplicationsDataImpl _value,
      $Res Function(_$GetAgentApplicationsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GetAgentApplicationsDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as GetAgentApplicationsResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAgentApplicationsDataImpl implements _GetAgentApplicationsData {
  const _$GetAgentApplicationsDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$GetAgentApplicationsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetAgentApplicationsDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final GetAgentApplicationsResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'GetAgentApplicationsData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgentApplicationsDataImpl &&
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
  _$$GetAgentApplicationsDataImplCopyWith<_$GetAgentApplicationsDataImpl>
      get copyWith => __$$GetAgentApplicationsDataImplCopyWithImpl<
          _$GetAgentApplicationsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAgentApplicationsDataImplToJson(
      this,
    );
  }
}

abstract class _GetAgentApplicationsData implements GetAgentApplicationsData {
  const factory _GetAgentApplicationsData(
          {@JsonKey(name: "rb")
          final GetAgentApplicationsResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GetAgentApplicationsDataImpl;

  factory _GetAgentApplicationsData.fromJson(Map<String, dynamic> json) =
      _$GetAgentApplicationsDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  GetAgentApplicationsResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentApplicationsDataImplCopyWith<_$GetAgentApplicationsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetAgentApplicationsResponseBody _$GetAgentApplicationsResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _GetAgentApplicationsResponseBody.fromJson(json);
}

/// @nodoc
mixin _$GetAgentApplicationsResponseBody {
  @JsonKey(name: "agentApplicationList")
  List<AgentApplicationsModel>? get agentApplicationList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAgentApplicationsResponseBodyCopyWith<GetAgentApplicationsResponseBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentApplicationsResponseBodyCopyWith<$Res> {
  factory $GetAgentApplicationsResponseBodyCopyWith(
          GetAgentApplicationsResponseBody value,
          $Res Function(GetAgentApplicationsResponseBody) then) =
      _$GetAgentApplicationsResponseBodyCopyWithImpl<$Res,
          GetAgentApplicationsResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationList")
      List<AgentApplicationsModel>? agentApplicationList});
}

/// @nodoc
class _$GetAgentApplicationsResponseBodyCopyWithImpl<$Res,
        $Val extends GetAgentApplicationsResponseBody>
    implements $GetAgentApplicationsResponseBodyCopyWith<$Res> {
  _$GetAgentApplicationsResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationList = freezed,
  }) {
    return _then(_value.copyWith(
      agentApplicationList: freezed == agentApplicationList
          ? _value.agentApplicationList
          : agentApplicationList // ignore: cast_nullable_to_non_nullable
              as List<AgentApplicationsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAgentApplicationsResponseBodyImplCopyWith<$Res>
    implements $GetAgentApplicationsResponseBodyCopyWith<$Res> {
  factory _$$GetAgentApplicationsResponseBodyImplCopyWith(
          _$GetAgentApplicationsResponseBodyImpl value,
          $Res Function(_$GetAgentApplicationsResponseBodyImpl) then) =
      __$$GetAgentApplicationsResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentApplicationList")
      List<AgentApplicationsModel>? agentApplicationList});
}

/// @nodoc
class __$$GetAgentApplicationsResponseBodyImplCopyWithImpl<$Res>
    extends _$GetAgentApplicationsResponseBodyCopyWithImpl<$Res,
        _$GetAgentApplicationsResponseBodyImpl>
    implements _$$GetAgentApplicationsResponseBodyImplCopyWith<$Res> {
  __$$GetAgentApplicationsResponseBodyImplCopyWithImpl(
      _$GetAgentApplicationsResponseBodyImpl _value,
      $Res Function(_$GetAgentApplicationsResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentApplicationList = freezed,
  }) {
    return _then(_$GetAgentApplicationsResponseBodyImpl(
      agentApplicationList: freezed == agentApplicationList
          ? _value._agentApplicationList
          : agentApplicationList // ignore: cast_nullable_to_non_nullable
              as List<AgentApplicationsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAgentApplicationsResponseBodyImpl
    implements _GetAgentApplicationsResponseBody {
  const _$GetAgentApplicationsResponseBodyImpl(
      {@JsonKey(name: "agentApplicationList")
      final List<AgentApplicationsModel>? agentApplicationList})
      : _agentApplicationList = agentApplicationList;

  factory _$GetAgentApplicationsResponseBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAgentApplicationsResponseBodyImplFromJson(json);

  final List<AgentApplicationsModel>? _agentApplicationList;
  @override
  @JsonKey(name: "agentApplicationList")
  List<AgentApplicationsModel>? get agentApplicationList {
    final value = _agentApplicationList;
    if (value == null) return null;
    if (_agentApplicationList is EqualUnmodifiableListView)
      return _agentApplicationList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetAgentApplicationsResponseBody(agentApplicationList: $agentApplicationList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgentApplicationsResponseBodyImpl &&
            const DeepCollectionEquality()
                .equals(other._agentApplicationList, _agentApplicationList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_agentApplicationList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAgentApplicationsResponseBodyImplCopyWith<
          _$GetAgentApplicationsResponseBodyImpl>
      get copyWith => __$$GetAgentApplicationsResponseBodyImplCopyWithImpl<
          _$GetAgentApplicationsResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAgentApplicationsResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _GetAgentApplicationsResponseBody
    implements GetAgentApplicationsResponseBody {
  const factory _GetAgentApplicationsResponseBody(
          {@JsonKey(name: "agentApplicationList")
          final List<AgentApplicationsModel>? agentApplicationList}) =
      _$GetAgentApplicationsResponseBodyImpl;

  factory _GetAgentApplicationsResponseBody.fromJson(
          Map<String, dynamic> json) =
      _$GetAgentApplicationsResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "agentApplicationList")
  List<AgentApplicationsModel>? get agentApplicationList;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentApplicationsResponseBodyImplCopyWith<
          _$GetAgentApplicationsResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgentApplicationsModel _$AgentApplicationsModelFromJson(
    Map<String, dynamic> json) {
  return _AgentApplicationsModel.fromJson(json);
}

/// @nodoc
mixin _$AgentApplicationsModel {
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
  @JsonKey(name: "idDocFirstName")
  String? get idDocFirstName => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocOtherName")
  String? get idDocOtherName => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocNICNumber")
  String? get idDocNicNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "idDocPolicyNumber")
  String? get idDocPolicyNumber => throw _privateConstructorUsedError;
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
  String? get addressDocBillDate => throw _privateConstructorUsedError;
  @JsonKey(name: "addressDocAddress")
  String? get addressDocAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "isAddressVerificationCompleted")
  bool? get isAddressVerificationCompleted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "porRequired")
  bool? get porRequired => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDocumentTypeId1")
  int? get insuredDocumentTypeId1 => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDocumentTypeId2")
  int? get insuredDocumentTypeId2 => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDocumentTypeId3")
  int? get insuredDocumentTypeId3 => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDocLastName")
  String? get insuredDocLastName => throw _privateConstructorUsedError;
  @JsonKey(name: "insureDocIssueDate")
  String? get insureDocIssueDate => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDocImagePath1")
  String? get insuredDocImagePath1 => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDocImagePath2")
  String? get insuredDocImagePath2 => throw _privateConstructorUsedError;
  @JsonKey(name: "insuredDocImagePath3")
  String? get insuredDocImagePath3 => throw _privateConstructorUsedError;
  @JsonKey(name: "isPORDocVerificationCompleted")
  bool? get isPorDocVerificationCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "policyDocumentTypeId")
  int? get policyDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "policyDocImagePath")
  String? get policyDocImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  bool? get isPolicyDocVerificationCompleted =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDocumentTypeId")
  int? get additionalDocumentTypeId => throw _privateConstructorUsedError;
  @JsonKey(name: "additionalDocImagePath")
  String? get additionalDocImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  bool? get isAdditionalDocVerificationCompleted =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentApplicationsModelCopyWith<AgentApplicationsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentApplicationsModelCopyWith<$Res> {
  factory $AgentApplicationsModelCopyWith(AgentApplicationsModel value,
          $Res Function(AgentApplicationsModel) then) =
      _$AgentApplicationsModelCopyWithImpl<$Res, AgentApplicationsModel>;
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
      @JsonKey(name: "idDocFirstName") String? idDocFirstName,
      @JsonKey(name: "idDocOtherName") String? idDocOtherName,
      @JsonKey(name: "idDocNICNumber") String? idDocNicNumber,
      @JsonKey(name: "idDocPolicyNumber") String? idDocPolicyNumber,
      @JsonKey(name: "isIDVerificationCompleted")
      bool? isIdVerificationCompleted,
      @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
      @JsonKey(name: "addressDocImagePath") String? addressDocImagePath,
      @JsonKey(name: "addressDocSurname") String? addressDocSurname,
      @JsonKey(name: "addressDocOtherName") String? addressDocOtherName,
      @JsonKey(name: "addressDocBillDate") String? addressDocBillDate,
      @JsonKey(name: "addressDocAddress") String? addressDocAddress,
      @JsonKey(name: "isAddressVerificationCompleted")
      bool? isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") bool? porRequired,
      @JsonKey(name: "insuredDocumentTypeId1") int? insuredDocumentTypeId1,
      @JsonKey(name: "insuredDocumentTypeId2") int? insuredDocumentTypeId2,
      @JsonKey(name: "insuredDocumentTypeId3") int? insuredDocumentTypeId3,
      @JsonKey(name: "insuredDocLastName") String? insuredDocLastName,
      @JsonKey(name: "insureDocIssueDate") String? insureDocIssueDate,
      @JsonKey(name: "insuredDocImagePath1") String? insuredDocImagePath1,
      @JsonKey(name: "insuredDocImagePath2") String? insuredDocImagePath2,
      @JsonKey(name: "insuredDocImagePath3") String? insuredDocImagePath3,
      @JsonKey(name: "isPORDocVerificationCompleted")
      bool? isPorDocVerificationCompleted,
      @JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
      @JsonKey(name: "policyDocImagePath") String? policyDocImagePath,
      @JsonKey(name: "isPolicyDocVerificationCompleted")
      bool? isPolicyDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentTypeId") int? additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath,
      @JsonKey(name: "isAdditionalDocVerificationCompleted")
      bool? isAdditionalDocVerificationCompleted});
}

/// @nodoc
class _$AgentApplicationsModelCopyWithImpl<$Res,
        $Val extends AgentApplicationsModel>
    implements $AgentApplicationsModelCopyWith<$Res> {
  _$AgentApplicationsModelCopyWithImpl(this._value, this._then);

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
    Object? idDocFirstName = freezed,
    Object? idDocOtherName = freezed,
    Object? idDocNicNumber = freezed,
    Object? idDocPolicyNumber = freezed,
    Object? isIdVerificationCompleted = freezed,
    Object? addressDocumentTypeId = freezed,
    Object? addressDocImagePath = freezed,
    Object? addressDocSurname = freezed,
    Object? addressDocOtherName = freezed,
    Object? addressDocBillDate = freezed,
    Object? addressDocAddress = freezed,
    Object? isAddressVerificationCompleted = freezed,
    Object? porRequired = freezed,
    Object? insuredDocumentTypeId1 = freezed,
    Object? insuredDocumentTypeId2 = freezed,
    Object? insuredDocumentTypeId3 = freezed,
    Object? insuredDocLastName = freezed,
    Object? insureDocIssueDate = freezed,
    Object? insuredDocImagePath1 = freezed,
    Object? insuredDocImagePath2 = freezed,
    Object? insuredDocImagePath3 = freezed,
    Object? isPorDocVerificationCompleted = freezed,
    Object? policyDocumentTypeId = freezed,
    Object? policyDocImagePath = freezed,
    Object? isPolicyDocVerificationCompleted = freezed,
    Object? additionalDocumentTypeId = freezed,
    Object? additionalDocImagePath = freezed,
    Object? isAdditionalDocVerificationCompleted = freezed,
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
      idDocFirstName: freezed == idDocFirstName
          ? _value.idDocFirstName
          : idDocFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocOtherName: freezed == idDocOtherName
          ? _value.idDocOtherName
          : idDocOtherName // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocNicNumber: freezed == idDocNicNumber
          ? _value.idDocNicNumber
          : idDocNicNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocPolicyNumber: freezed == idDocPolicyNumber
          ? _value.idDocPolicyNumber
          : idDocPolicyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      addressDocAddress: freezed == addressDocAddress
          ? _value.addressDocAddress
          : addressDocAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      isAddressVerificationCompleted: freezed == isAddressVerificationCompleted
          ? _value.isAddressVerificationCompleted
          : isAddressVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      porRequired: freezed == porRequired
          ? _value.porRequired
          : porRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuredDocumentTypeId1: freezed == insuredDocumentTypeId1
          ? _value.insuredDocumentTypeId1
          : insuredDocumentTypeId1 // ignore: cast_nullable_to_non_nullable
              as int?,
      insuredDocumentTypeId2: freezed == insuredDocumentTypeId2
          ? _value.insuredDocumentTypeId2
          : insuredDocumentTypeId2 // ignore: cast_nullable_to_non_nullable
              as int?,
      insuredDocumentTypeId3: freezed == insuredDocumentTypeId3
          ? _value.insuredDocumentTypeId3
          : insuredDocumentTypeId3 // ignore: cast_nullable_to_non_nullable
              as int?,
      insuredDocLastName: freezed == insuredDocLastName
          ? _value.insuredDocLastName
          : insuredDocLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      insureDocIssueDate: freezed == insureDocIssueDate
          ? _value.insureDocIssueDate
          : insureDocIssueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      insuredDocImagePath1: freezed == insuredDocImagePath1
          ? _value.insuredDocImagePath1
          : insuredDocImagePath1 // ignore: cast_nullable_to_non_nullable
              as String?,
      insuredDocImagePath2: freezed == insuredDocImagePath2
          ? _value.insuredDocImagePath2
          : insuredDocImagePath2 // ignore: cast_nullable_to_non_nullable
              as String?,
      insuredDocImagePath3: freezed == insuredDocImagePath3
          ? _value.insuredDocImagePath3
          : insuredDocImagePath3 // ignore: cast_nullable_to_non_nullable
              as String?,
      isPorDocVerificationCompleted: freezed == isPorDocVerificationCompleted
          ? _value.isPorDocVerificationCompleted
          : isPorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      policyDocumentTypeId: freezed == policyDocumentTypeId
          ? _value.policyDocumentTypeId
          : policyDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDocImagePath: freezed == policyDocImagePath
          ? _value.policyDocImagePath
          : policyDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isPolicyDocVerificationCompleted: freezed ==
              isPolicyDocVerificationCompleted
          ? _value.isPolicyDocVerificationCompleted
          : isPolicyDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalDocumentTypeId: freezed == additionalDocumentTypeId
          ? _value.additionalDocumentTypeId
          : additionalDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDocImagePath: freezed == additionalDocImagePath
          ? _value.additionalDocImagePath
          : additionalDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdditionalDocVerificationCompleted: freezed ==
              isAdditionalDocVerificationCompleted
          ? _value.isAdditionalDocVerificationCompleted
          : isAdditionalDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AgentApplicationsModelImplCopyWith<$Res>
    implements $AgentApplicationsModelCopyWith<$Res> {
  factory _$$AgentApplicationsModelImplCopyWith(
          _$AgentApplicationsModelImpl value,
          $Res Function(_$AgentApplicationsModelImpl) then) =
      __$$AgentApplicationsModelImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "idDocFirstName") String? idDocFirstName,
      @JsonKey(name: "idDocOtherName") String? idDocOtherName,
      @JsonKey(name: "idDocNICNumber") String? idDocNicNumber,
      @JsonKey(name: "idDocPolicyNumber") String? idDocPolicyNumber,
      @JsonKey(name: "isIDVerificationCompleted")
      bool? isIdVerificationCompleted,
      @JsonKey(name: "addressDocumentTypeId") int? addressDocumentTypeId,
      @JsonKey(name: "addressDocImagePath") String? addressDocImagePath,
      @JsonKey(name: "addressDocSurname") String? addressDocSurname,
      @JsonKey(name: "addressDocOtherName") String? addressDocOtherName,
      @JsonKey(name: "addressDocBillDate") String? addressDocBillDate,
      @JsonKey(name: "addressDocAddress") String? addressDocAddress,
      @JsonKey(name: "isAddressVerificationCompleted")
      bool? isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") bool? porRequired,
      @JsonKey(name: "insuredDocumentTypeId1") int? insuredDocumentTypeId1,
      @JsonKey(name: "insuredDocumentTypeId2") int? insuredDocumentTypeId2,
      @JsonKey(name: "insuredDocumentTypeId3") int? insuredDocumentTypeId3,
      @JsonKey(name: "insuredDocLastName") String? insuredDocLastName,
      @JsonKey(name: "insureDocIssueDate") String? insureDocIssueDate,
      @JsonKey(name: "insuredDocImagePath1") String? insuredDocImagePath1,
      @JsonKey(name: "insuredDocImagePath2") String? insuredDocImagePath2,
      @JsonKey(name: "insuredDocImagePath3") String? insuredDocImagePath3,
      @JsonKey(name: "isPORDocVerificationCompleted")
      bool? isPorDocVerificationCompleted,
      @JsonKey(name: "policyDocumentTypeId") int? policyDocumentTypeId,
      @JsonKey(name: "policyDocImagePath") String? policyDocImagePath,
      @JsonKey(name: "isPolicyDocVerificationCompleted")
      bool? isPolicyDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentTypeId") int? additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") String? additionalDocImagePath,
      @JsonKey(name: "isAdditionalDocVerificationCompleted")
      bool? isAdditionalDocVerificationCompleted});
}

/// @nodoc
class __$$AgentApplicationsModelImplCopyWithImpl<$Res>
    extends _$AgentApplicationsModelCopyWithImpl<$Res,
        _$AgentApplicationsModelImpl>
    implements _$$AgentApplicationsModelImplCopyWith<$Res> {
  __$$AgentApplicationsModelImplCopyWithImpl(
      _$AgentApplicationsModelImpl _value,
      $Res Function(_$AgentApplicationsModelImpl) _then)
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
    Object? idDocFirstName = freezed,
    Object? idDocOtherName = freezed,
    Object? idDocNicNumber = freezed,
    Object? idDocPolicyNumber = freezed,
    Object? isIdVerificationCompleted = freezed,
    Object? addressDocumentTypeId = freezed,
    Object? addressDocImagePath = freezed,
    Object? addressDocSurname = freezed,
    Object? addressDocOtherName = freezed,
    Object? addressDocBillDate = freezed,
    Object? addressDocAddress = freezed,
    Object? isAddressVerificationCompleted = freezed,
    Object? porRequired = freezed,
    Object? insuredDocumentTypeId1 = freezed,
    Object? insuredDocumentTypeId2 = freezed,
    Object? insuredDocumentTypeId3 = freezed,
    Object? insuredDocLastName = freezed,
    Object? insureDocIssueDate = freezed,
    Object? insuredDocImagePath1 = freezed,
    Object? insuredDocImagePath2 = freezed,
    Object? insuredDocImagePath3 = freezed,
    Object? isPorDocVerificationCompleted = freezed,
    Object? policyDocumentTypeId = freezed,
    Object? policyDocImagePath = freezed,
    Object? isPolicyDocVerificationCompleted = freezed,
    Object? additionalDocumentTypeId = freezed,
    Object? additionalDocImagePath = freezed,
    Object? isAdditionalDocVerificationCompleted = freezed,
  }) {
    return _then(_$AgentApplicationsModelImpl(
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
      idDocFirstName: freezed == idDocFirstName
          ? _value.idDocFirstName
          : idDocFirstName // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocOtherName: freezed == idDocOtherName
          ? _value.idDocOtherName
          : idDocOtherName // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocNicNumber: freezed == idDocNicNumber
          ? _value.idDocNicNumber
          : idDocNicNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      idDocPolicyNumber: freezed == idDocPolicyNumber
          ? _value.idDocPolicyNumber
          : idDocPolicyNumber // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      addressDocAddress: freezed == addressDocAddress
          ? _value.addressDocAddress
          : addressDocAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      isAddressVerificationCompleted: freezed == isAddressVerificationCompleted
          ? _value.isAddressVerificationCompleted
          : isAddressVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      porRequired: freezed == porRequired
          ? _value.porRequired
          : porRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuredDocumentTypeId1: freezed == insuredDocumentTypeId1
          ? _value.insuredDocumentTypeId1
          : insuredDocumentTypeId1 // ignore: cast_nullable_to_non_nullable
              as int?,
      insuredDocumentTypeId2: freezed == insuredDocumentTypeId2
          ? _value.insuredDocumentTypeId2
          : insuredDocumentTypeId2 // ignore: cast_nullable_to_non_nullable
              as int?,
      insuredDocumentTypeId3: freezed == insuredDocumentTypeId3
          ? _value.insuredDocumentTypeId3
          : insuredDocumentTypeId3 // ignore: cast_nullable_to_non_nullable
              as int?,
      insuredDocLastName: freezed == insuredDocLastName
          ? _value.insuredDocLastName
          : insuredDocLastName // ignore: cast_nullable_to_non_nullable
              as String?,
      insureDocIssueDate: freezed == insureDocIssueDate
          ? _value.insureDocIssueDate
          : insureDocIssueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      insuredDocImagePath1: freezed == insuredDocImagePath1
          ? _value.insuredDocImagePath1
          : insuredDocImagePath1 // ignore: cast_nullable_to_non_nullable
              as String?,
      insuredDocImagePath2: freezed == insuredDocImagePath2
          ? _value.insuredDocImagePath2
          : insuredDocImagePath2 // ignore: cast_nullable_to_non_nullable
              as String?,
      insuredDocImagePath3: freezed == insuredDocImagePath3
          ? _value.insuredDocImagePath3
          : insuredDocImagePath3 // ignore: cast_nullable_to_non_nullable
              as String?,
      isPorDocVerificationCompleted: freezed == isPorDocVerificationCompleted
          ? _value.isPorDocVerificationCompleted
          : isPorDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      policyDocumentTypeId: freezed == policyDocumentTypeId
          ? _value.policyDocumentTypeId
          : policyDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      policyDocImagePath: freezed == policyDocImagePath
          ? _value.policyDocImagePath
          : policyDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isPolicyDocVerificationCompleted: freezed ==
              isPolicyDocVerificationCompleted
          ? _value.isPolicyDocVerificationCompleted
          : isPolicyDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      additionalDocumentTypeId: freezed == additionalDocumentTypeId
          ? _value.additionalDocumentTypeId
          : additionalDocumentTypeId // ignore: cast_nullable_to_non_nullable
              as int?,
      additionalDocImagePath: freezed == additionalDocImagePath
          ? _value.additionalDocImagePath
          : additionalDocImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdditionalDocVerificationCompleted: freezed ==
              isAdditionalDocVerificationCompleted
          ? _value.isAdditionalDocVerificationCompleted
          : isAdditionalDocVerificationCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentApplicationsModelImpl implements _AgentApplicationsModel {
  const _$AgentApplicationsModelImpl(
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
      @JsonKey(name: "idDocFirstName") this.idDocFirstName,
      @JsonKey(name: "idDocOtherName") this.idDocOtherName,
      @JsonKey(name: "idDocNICNumber") this.idDocNicNumber,
      @JsonKey(name: "idDocPolicyNumber") this.idDocPolicyNumber,
      @JsonKey(name: "isIDVerificationCompleted")
      this.isIdVerificationCompleted,
      @JsonKey(name: "addressDocumentTypeId") this.addressDocumentTypeId,
      @JsonKey(name: "addressDocImagePath") this.addressDocImagePath,
      @JsonKey(name: "addressDocSurname") this.addressDocSurname,
      @JsonKey(name: "addressDocOtherName") this.addressDocOtherName,
      @JsonKey(name: "addressDocBillDate") this.addressDocBillDate,
      @JsonKey(name: "addressDocAddress") this.addressDocAddress,
      @JsonKey(name: "isAddressVerificationCompleted")
      this.isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") this.porRequired,
      @JsonKey(name: "insuredDocumentTypeId1") this.insuredDocumentTypeId1,
      @JsonKey(name: "insuredDocumentTypeId2") this.insuredDocumentTypeId2,
      @JsonKey(name: "insuredDocumentTypeId3") this.insuredDocumentTypeId3,
      @JsonKey(name: "insuredDocLastName") this.insuredDocLastName,
      @JsonKey(name: "insureDocIssueDate") this.insureDocIssueDate,
      @JsonKey(name: "insuredDocImagePath1") this.insuredDocImagePath1,
      @JsonKey(name: "insuredDocImagePath2") this.insuredDocImagePath2,
      @JsonKey(name: "insuredDocImagePath3") this.insuredDocImagePath3,
      @JsonKey(name: "isPORDocVerificationCompleted")
      this.isPorDocVerificationCompleted,
      @JsonKey(name: "policyDocumentTypeId") this.policyDocumentTypeId,
      @JsonKey(name: "policyDocImagePath") this.policyDocImagePath,
      @JsonKey(name: "isPolicyDocVerificationCompleted")
      this.isPolicyDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentTypeId") this.additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath") this.additionalDocImagePath,
      @JsonKey(name: "isAdditionalDocVerificationCompleted")
      this.isAdditionalDocVerificationCompleted});

  factory _$AgentApplicationsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentApplicationsModelImplFromJson(json);

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
  @JsonKey(name: "idDocFirstName")
  final String? idDocFirstName;
  @override
  @JsonKey(name: "idDocOtherName")
  final String? idDocOtherName;
  @override
  @JsonKey(name: "idDocNICNumber")
  final String? idDocNicNumber;
  @override
  @JsonKey(name: "idDocPolicyNumber")
  final String? idDocPolicyNumber;
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
  final String? addressDocBillDate;
  @override
  @JsonKey(name: "addressDocAddress")
  final String? addressDocAddress;
  @override
  @JsonKey(name: "isAddressVerificationCompleted")
  final bool? isAddressVerificationCompleted;
  @override
  @JsonKey(name: "porRequired")
  final bool? porRequired;
  @override
  @JsonKey(name: "insuredDocumentTypeId1")
  final int? insuredDocumentTypeId1;
  @override
  @JsonKey(name: "insuredDocumentTypeId2")
  final int? insuredDocumentTypeId2;
  @override
  @JsonKey(name: "insuredDocumentTypeId3")
  final int? insuredDocumentTypeId3;
  @override
  @JsonKey(name: "insuredDocLastName")
  final String? insuredDocLastName;
  @override
  @JsonKey(name: "insureDocIssueDate")
  final String? insureDocIssueDate;
  @override
  @JsonKey(name: "insuredDocImagePath1")
  final String? insuredDocImagePath1;
  @override
  @JsonKey(name: "insuredDocImagePath2")
  final String? insuredDocImagePath2;
  @override
  @JsonKey(name: "insuredDocImagePath3")
  final String? insuredDocImagePath3;
  @override
  @JsonKey(name: "isPORDocVerificationCompleted")
  final bool? isPorDocVerificationCompleted;
  @override
  @JsonKey(name: "policyDocumentTypeId")
  final int? policyDocumentTypeId;
  @override
  @JsonKey(name: "policyDocImagePath")
  final String? policyDocImagePath;
  @override
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  final bool? isPolicyDocVerificationCompleted;
  @override
  @JsonKey(name: "additionalDocumentTypeId")
  final int? additionalDocumentTypeId;
  @override
  @JsonKey(name: "additionalDocImagePath")
  final String? additionalDocImagePath;
  @override
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  final bool? isAdditionalDocVerificationCompleted;

  @override
  String toString() {
    return 'AgentApplicationsModel(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, agentApplicationId: $agentApplicationId, applicationRefNo: $applicationRefNo, agentId: $agentId, applicationStatus: $applicationStatus, mobileNumber: $mobileNumber, emailId: $emailId, maritalStatus: $maritalStatus, nationality: $nationality, kycTypeId: $kycTypeId, quoteNumber: $quoteNumber, policyNumber: $policyNumber, idDocumentTypeId: $idDocumentTypeId, idDocFrontImagePath: $idDocFrontImagePath, idDocBackImagePath: $idDocBackImagePath, idDocFirstName: $idDocFirstName, idDocOtherName: $idDocOtherName, idDocNicNumber: $idDocNicNumber, idDocPolicyNumber: $idDocPolicyNumber, isIdVerificationCompleted: $isIdVerificationCompleted, addressDocumentTypeId: $addressDocumentTypeId, addressDocImagePath: $addressDocImagePath, addressDocSurname: $addressDocSurname, addressDocOtherName: $addressDocOtherName, addressDocBillDate: $addressDocBillDate, addressDocAddress: $addressDocAddress, isAddressVerificationCompleted: $isAddressVerificationCompleted, porRequired: $porRequired, insuredDocumentTypeId1: $insuredDocumentTypeId1, insuredDocumentTypeId2: $insuredDocumentTypeId2, insuredDocumentTypeId3: $insuredDocumentTypeId3, insuredDocLastName: $insuredDocLastName, insureDocIssueDate: $insureDocIssueDate, insuredDocImagePath1: $insuredDocImagePath1, insuredDocImagePath2: $insuredDocImagePath2, insuredDocImagePath3: $insuredDocImagePath3, isPorDocVerificationCompleted: $isPorDocVerificationCompleted, policyDocumentTypeId: $policyDocumentTypeId, policyDocImagePath: $policyDocImagePath, isPolicyDocVerificationCompleted: $isPolicyDocVerificationCompleted, additionalDocumentTypeId: $additionalDocumentTypeId, additionalDocImagePath: $additionalDocImagePath, isAdditionalDocVerificationCompleted: $isAdditionalDocVerificationCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentApplicationsModelImpl &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.agentApplicationId, agentApplicationId) ||
                other.agentApplicationId == agentApplicationId) &&
            (identical(other.applicationRefNo, applicationRefNo) ||
                other.applicationRefNo == applicationRefNo) &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.applicationStatus, applicationStatus) ||
                other.applicationStatus == applicationStatus) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.nationality, nationality) ||
                other.nationality == nationality) &&
            (identical(other.kycTypeId, kycTypeId) ||
                other.kycTypeId == kycTypeId) &&
            (identical(other.quoteNumber, quoteNumber) ||
                other.quoteNumber == quoteNumber) &&
            (identical(other.policyNumber, policyNumber) ||
                other.policyNumber == policyNumber) &&
            (identical(other.idDocumentTypeId, idDocumentTypeId) ||
                other.idDocumentTypeId == idDocumentTypeId) &&
            (identical(other.idDocFrontImagePath, idDocFrontImagePath) ||
                other.idDocFrontImagePath == idDocFrontImagePath) &&
            (identical(other.idDocBackImagePath, idDocBackImagePath) ||
                other.idDocBackImagePath == idDocBackImagePath) &&
            (identical(other.idDocFirstName, idDocFirstName) ||
                other.idDocFirstName == idDocFirstName) &&
            (identical(other.idDocOtherName, idDocOtherName) ||
                other.idDocOtherName == idDocOtherName) &&
            (identical(other.idDocNicNumber, idDocNicNumber) ||
                other.idDocNicNumber == idDocNicNumber) &&
            (identical(other.idDocPolicyNumber, idDocPolicyNumber) ||
                other.idDocPolicyNumber == idDocPolicyNumber) &&
            (identical(other.isIdVerificationCompleted, isIdVerificationCompleted) ||
                other.isIdVerificationCompleted == isIdVerificationCompleted) &&
            (identical(other.addressDocumentTypeId, addressDocumentTypeId) ||
                other.addressDocumentTypeId == addressDocumentTypeId) &&
            (identical(other.addressDocImagePath, addressDocImagePath) ||
                other.addressDocImagePath == addressDocImagePath) &&
            (identical(other.addressDocSurname, addressDocSurname) ||
                other.addressDocSurname == addressDocSurname) &&
            (identical(other.addressDocOtherName, addressDocOtherName) ||
                other.addressDocOtherName == addressDocOtherName) &&
            (identical(other.addressDocBillDate, addressDocBillDate) ||
                other.addressDocBillDate == addressDocBillDate) &&
            (identical(other.addressDocAddress, addressDocAddress) ||
                other.addressDocAddress == addressDocAddress) &&
            (identical(other.isAddressVerificationCompleted, isAddressVerificationCompleted) ||
                other.isAddressVerificationCompleted ==
                    isAddressVerificationCompleted) &&
            (identical(other.porRequired, porRequired) ||
                other.porRequired == porRequired) &&
            (identical(other.insuredDocumentTypeId1, insuredDocumentTypeId1) ||
                other.insuredDocumentTypeId1 == insuredDocumentTypeId1) &&
            (identical(other.insuredDocumentTypeId2, insuredDocumentTypeId2) ||
                other.insuredDocumentTypeId2 == insuredDocumentTypeId2) &&
            (identical(other.insuredDocumentTypeId3, insuredDocumentTypeId3) ||
                other.insuredDocumentTypeId3 == insuredDocumentTypeId3) &&
            (identical(other.insuredDocLastName, insuredDocLastName) ||
                other.insuredDocLastName == insuredDocLastName) &&
            (identical(other.insureDocIssueDate, insureDocIssueDate) ||
                other.insureDocIssueDate == insureDocIssueDate) &&
            (identical(other.insuredDocImagePath1, insuredDocImagePath1) ||
                other.insuredDocImagePath1 == insuredDocImagePath1) &&
            (identical(other.insuredDocImagePath2, insuredDocImagePath2) ||
                other.insuredDocImagePath2 == insuredDocImagePath2) &&
            (identical(other.insuredDocImagePath3, insuredDocImagePath3) ||
                other.insuredDocImagePath3 == insuredDocImagePath3) &&
            (identical(other.isPorDocVerificationCompleted, isPorDocVerificationCompleted) ||
                other.isPorDocVerificationCompleted ==
                    isPorDocVerificationCompleted) &&
            (identical(other.policyDocumentTypeId, policyDocumentTypeId) ||
                other.policyDocumentTypeId == policyDocumentTypeId) &&
            (identical(other.policyDocImagePath, policyDocImagePath) || other.policyDocImagePath == policyDocImagePath) &&
            (identical(other.isPolicyDocVerificationCompleted, isPolicyDocVerificationCompleted) || other.isPolicyDocVerificationCompleted == isPolicyDocVerificationCompleted) &&
            (identical(other.additionalDocumentTypeId, additionalDocumentTypeId) || other.additionalDocumentTypeId == additionalDocumentTypeId) &&
            (identical(other.additionalDocImagePath, additionalDocImagePath) || other.additionalDocImagePath == additionalDocImagePath) &&
            (identical(other.isAdditionalDocVerificationCompleted, isAdditionalDocVerificationCompleted) || other.isAdditionalDocVerificationCompleted == isAdditionalDocVerificationCompleted));
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
        idDocFirstName,
        idDocOtherName,
        idDocNicNumber,
        idDocPolicyNumber,
        isIdVerificationCompleted,
        addressDocumentTypeId,
        addressDocImagePath,
        addressDocSurname,
        addressDocOtherName,
        addressDocBillDate,
        addressDocAddress,
        isAddressVerificationCompleted,
        porRequired,
        insuredDocumentTypeId1,
        insuredDocumentTypeId2,
        insuredDocumentTypeId3,
        insuredDocLastName,
        insureDocIssueDate,
        insuredDocImagePath1,
        insuredDocImagePath2,
        insuredDocImagePath3,
        isPorDocVerificationCompleted,
        policyDocumentTypeId,
        policyDocImagePath,
        isPolicyDocVerificationCompleted,
        additionalDocumentTypeId,
        additionalDocImagePath,
        isAdditionalDocVerificationCompleted
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentApplicationsModelImplCopyWith<_$AgentApplicationsModelImpl>
      get copyWith => __$$AgentApplicationsModelImplCopyWithImpl<
          _$AgentApplicationsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentApplicationsModelImplToJson(
      this,
    );
  }
}

abstract class _AgentApplicationsModel implements AgentApplicationsModel {
  const factory _AgentApplicationsModel(
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
      @JsonKey(name: "idDocFirstName") final String? idDocFirstName,
      @JsonKey(name: "idDocOtherName") final String? idDocOtherName,
      @JsonKey(name: "idDocNICNumber") final String? idDocNicNumber,
      @JsonKey(name: "idDocPolicyNumber") final String? idDocPolicyNumber,
      @JsonKey(name: "isIDVerificationCompleted")
      final bool? isIdVerificationCompleted,
      @JsonKey(name: "addressDocumentTypeId") final int? addressDocumentTypeId,
      @JsonKey(name: "addressDocImagePath") final String? addressDocImagePath,
      @JsonKey(name: "addressDocSurname") final String? addressDocSurname,
      @JsonKey(name: "addressDocOtherName") final String? addressDocOtherName,
      @JsonKey(name: "addressDocBillDate") final String? addressDocBillDate,
      @JsonKey(name: "addressDocAddress") final String? addressDocAddress,
      @JsonKey(name: "isAddressVerificationCompleted")
      final bool? isAddressVerificationCompleted,
      @JsonKey(name: "porRequired") final bool? porRequired,
      @JsonKey(name: "insuredDocumentTypeId1")
      final int? insuredDocumentTypeId1,
      @JsonKey(name: "insuredDocumentTypeId2")
      final int? insuredDocumentTypeId2,
      @JsonKey(name: "insuredDocumentTypeId3")
      final int? insuredDocumentTypeId3,
      @JsonKey(name: "insuredDocLastName") final String? insuredDocLastName,
      @JsonKey(name: "insureDocIssueDate") final String? insureDocIssueDate,
      @JsonKey(name: "insuredDocImagePath1") final String? insuredDocImagePath1,
      @JsonKey(name: "insuredDocImagePath2") final String? insuredDocImagePath2,
      @JsonKey(name: "insuredDocImagePath3") final String? insuredDocImagePath3,
      @JsonKey(name: "isPORDocVerificationCompleted")
      final bool? isPorDocVerificationCompleted,
      @JsonKey(name: "policyDocumentTypeId") final int? policyDocumentTypeId,
      @JsonKey(name: "policyDocImagePath") final String? policyDocImagePath,
      @JsonKey(name: "isPolicyDocVerificationCompleted")
      final bool? isPolicyDocVerificationCompleted,
      @JsonKey(name: "additionalDocumentTypeId")
      final int? additionalDocumentTypeId,
      @JsonKey(name: "additionalDocImagePath")
      final String? additionalDocImagePath,
      @JsonKey(name: "isAdditionalDocVerificationCompleted")
      final bool?
          isAdditionalDocVerificationCompleted}) = _$AgentApplicationsModelImpl;

  factory _AgentApplicationsModel.fromJson(Map<String, dynamic> json) =
      _$AgentApplicationsModelImpl.fromJson;

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
  @JsonKey(name: "idDocFirstName")
  String? get idDocFirstName;
  @override
  @JsonKey(name: "idDocOtherName")
  String? get idDocOtherName;
  @override
  @JsonKey(name: "idDocNICNumber")
  String? get idDocNicNumber;
  @override
  @JsonKey(name: "idDocPolicyNumber")
  String? get idDocPolicyNumber;
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
  String? get addressDocBillDate;
  @override
  @JsonKey(name: "addressDocAddress")
  String? get addressDocAddress;
  @override
  @JsonKey(name: "isAddressVerificationCompleted")
  bool? get isAddressVerificationCompleted;
  @override
  @JsonKey(name: "porRequired")
  bool? get porRequired;
  @override
  @JsonKey(name: "insuredDocumentTypeId1")
  int? get insuredDocumentTypeId1;
  @override
  @JsonKey(name: "insuredDocumentTypeId2")
  int? get insuredDocumentTypeId2;
  @override
  @JsonKey(name: "insuredDocumentTypeId3")
  int? get insuredDocumentTypeId3;
  @override
  @JsonKey(name: "insuredDocLastName")
  String? get insuredDocLastName;
  @override
  @JsonKey(name: "insureDocIssueDate")
  String? get insureDocIssueDate;
  @override
  @JsonKey(name: "insuredDocImagePath1")
  String? get insuredDocImagePath1;
  @override
  @JsonKey(name: "insuredDocImagePath2")
  String? get insuredDocImagePath2;
  @override
  @JsonKey(name: "insuredDocImagePath3")
  String? get insuredDocImagePath3;
  @override
  @JsonKey(name: "isPORDocVerificationCompleted")
  bool? get isPorDocVerificationCompleted;
  @override
  @JsonKey(name: "policyDocumentTypeId")
  int? get policyDocumentTypeId;
  @override
  @JsonKey(name: "policyDocImagePath")
  String? get policyDocImagePath;
  @override
  @JsonKey(name: "isPolicyDocVerificationCompleted")
  bool? get isPolicyDocVerificationCompleted;
  @override
  @JsonKey(name: "additionalDocumentTypeId")
  int? get additionalDocumentTypeId;
  @override
  @JsonKey(name: "additionalDocImagePath")
  String? get additionalDocImagePath;
  @override
  @JsonKey(name: "isAdditionalDocVerificationCompleted")
  bool? get isAdditionalDocVerificationCompleted;
  @override
  @JsonKey(ignore: true)
  _$$AgentApplicationsModelImplCopyWith<_$AgentApplicationsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
