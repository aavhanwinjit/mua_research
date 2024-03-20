// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_agent_applications_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetAgentApplicationsRequestModel _$GetAgentApplicationsRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetAgentApplicationsRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetAgentApplicationsRequestModel {
  @JsonKey(name: "agentId")
  int? get agentId => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "rowsPerPage")
  int? get rowsPerPage => throw _privateConstructorUsedError;
  @JsonKey(name: "pageNo")
  int? get pageNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetAgentApplicationsRequestModelCopyWith<GetAgentApplicationsRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAgentApplicationsRequestModelCopyWith<$Res> {
  factory $GetAgentApplicationsRequestModelCopyWith(
          GetAgentApplicationsRequestModel value,
          $Res Function(GetAgentApplicationsRequestModel) then) =
      _$GetAgentApplicationsRequestModelCopyWithImpl<$Res,
          GetAgentApplicationsRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "agentId") int? agentId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "rowsPerPage") int? rowsPerPage,
      @JsonKey(name: "pageNo") int? pageNo});
}

/// @nodoc
class _$GetAgentApplicationsRequestModelCopyWithImpl<$Res,
        $Val extends GetAgentApplicationsRequestModel>
    implements $GetAgentApplicationsRequestModelCopyWith<$Res> {
  _$GetAgentApplicationsRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentId = freezed,
    Object? status = freezed,
    Object? rowsPerPage = freezed,
    Object? pageNo = freezed,
  }) {
    return _then(_value.copyWith(
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rowsPerPage: freezed == rowsPerPage
          ? _value.rowsPerPage
          : rowsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAgentApplicationsRequestModelImplCopyWith<$Res>
    implements $GetAgentApplicationsRequestModelCopyWith<$Res> {
  factory _$$GetAgentApplicationsRequestModelImplCopyWith(
          _$GetAgentApplicationsRequestModelImpl value,
          $Res Function(_$GetAgentApplicationsRequestModelImpl) then) =
      __$$GetAgentApplicationsRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "agentId") int? agentId,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "rowsPerPage") int? rowsPerPage,
      @JsonKey(name: "pageNo") int? pageNo});
}

/// @nodoc
class __$$GetAgentApplicationsRequestModelImplCopyWithImpl<$Res>
    extends _$GetAgentApplicationsRequestModelCopyWithImpl<$Res,
        _$GetAgentApplicationsRequestModelImpl>
    implements _$$GetAgentApplicationsRequestModelImplCopyWith<$Res> {
  __$$GetAgentApplicationsRequestModelImplCopyWithImpl(
      _$GetAgentApplicationsRequestModelImpl _value,
      $Res Function(_$GetAgentApplicationsRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agentId = freezed,
    Object? status = freezed,
    Object? rowsPerPage = freezed,
    Object? pageNo = freezed,
  }) {
    return _then(_$GetAgentApplicationsRequestModelImpl(
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      rowsPerPage: freezed == rowsPerPage
          ? _value.rowsPerPage
          : rowsPerPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageNo: freezed == pageNo
          ? _value.pageNo
          : pageNo // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetAgentApplicationsRequestModelImpl
    implements _GetAgentApplicationsRequestModel {
  const _$GetAgentApplicationsRequestModelImpl(
      {@JsonKey(name: "agentId") this.agentId,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "rowsPerPage") this.rowsPerPage,
      @JsonKey(name: "pageNo") this.pageNo});

  factory _$GetAgentApplicationsRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetAgentApplicationsRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "agentId")
  final int? agentId;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "rowsPerPage")
  final int? rowsPerPage;
  @override
  @JsonKey(name: "pageNo")
  final int? pageNo;

  @override
  String toString() {
    return 'GetAgentApplicationsRequestModel(agentId: $agentId, status: $status, rowsPerPage: $rowsPerPage, pageNo: $pageNo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgentApplicationsRequestModelImpl &&
            (identical(other.agentId, agentId) || other.agentId == agentId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rowsPerPage, rowsPerPage) ||
                other.rowsPerPage == rowsPerPage) &&
            (identical(other.pageNo, pageNo) || other.pageNo == pageNo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, agentId, status, rowsPerPage, pageNo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAgentApplicationsRequestModelImplCopyWith<
          _$GetAgentApplicationsRequestModelImpl>
      get copyWith => __$$GetAgentApplicationsRequestModelImplCopyWithImpl<
          _$GetAgentApplicationsRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetAgentApplicationsRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetAgentApplicationsRequestModel
    implements GetAgentApplicationsRequestModel {
  const factory _GetAgentApplicationsRequestModel(
          {@JsonKey(name: "agentId") final int? agentId,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "rowsPerPage") final int? rowsPerPage,
          @JsonKey(name: "pageNo") final int? pageNo}) =
      _$GetAgentApplicationsRequestModelImpl;

  factory _GetAgentApplicationsRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$GetAgentApplicationsRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "agentId")
  int? get agentId;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "rowsPerPage")
  int? get rowsPerPage;
  @override
  @JsonKey(name: "pageNo")
  int? get pageNo;
  @override
  @JsonKey(ignore: true)
  _$$GetAgentApplicationsRequestModelImplCopyWith<
          _$GetAgentApplicationsRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
