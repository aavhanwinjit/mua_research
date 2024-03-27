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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
  List<AgentApplicationModel>? get agentApplicationList =>
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
      List<AgentApplicationModel>? agentApplicationList});
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
              as List<AgentApplicationModel>?,
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
      List<AgentApplicationModel>? agentApplicationList});
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
              as List<AgentApplicationModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAgentApplicationsResponseBodyImpl
    implements _GetAgentApplicationsResponseBody {
  const _$GetAgentApplicationsResponseBodyImpl(
      {@JsonKey(name: "agentApplicationList")
      final List<AgentApplicationModel>? agentApplicationList})
      : _agentApplicationList = agentApplicationList;

  factory _$GetAgentApplicationsResponseBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAgentApplicationsResponseBodyImplFromJson(json);

  final List<AgentApplicationModel>? _agentApplicationList;
  @override
  @JsonKey(name: "agentApplicationList")
  List<AgentApplicationModel>? get agentApplicationList {
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
          final List<AgentApplicationModel>? agentApplicationList}) =
      _$GetAgentApplicationsResponseBodyImpl;

  factory _GetAgentApplicationsResponseBody.fromJson(
          Map<String, dynamic> json) =
      _$GetAgentApplicationsResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "agentApplicationList")
  List<AgentApplicationModel>? get agentApplicationList;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentApplicationsResponseBodyImplCopyWith<
          _$GetAgentApplicationsResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
