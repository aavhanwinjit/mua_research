// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_policy_documents_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavePolicyDocumentsResponseModel _$SavePolicyDocumentsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SavePolicyDocumentsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SavePolicyDocumentsResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SavePolicyDocumentsData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePolicyDocumentsResponseModelCopyWith<SavePolicyDocumentsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePolicyDocumentsResponseModelCopyWith<$Res> {
  factory $SavePolicyDocumentsResponseModelCopyWith(
          SavePolicyDocumentsResponseModel value,
          $Res Function(SavePolicyDocumentsResponseModel) then) =
      _$SavePolicyDocumentsResponseModelCopyWithImpl<$Res,
          SavePolicyDocumentsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SavePolicyDocumentsData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SavePolicyDocumentsDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$SavePolicyDocumentsResponseModelCopyWithImpl<$Res,
        $Val extends SavePolicyDocumentsResponseModel>
    implements $SavePolicyDocumentsResponseModelCopyWith<$Res> {
  _$SavePolicyDocumentsResponseModelCopyWithImpl(this._value, this._then);

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
              as SavePolicyDocumentsData?,
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
  $SavePolicyDocumentsDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SavePolicyDocumentsDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$SavePolicyDocumentsResponseModelImplCopyWith<$Res>
    implements $SavePolicyDocumentsResponseModelCopyWith<$Res> {
  factory _$$SavePolicyDocumentsResponseModelImplCopyWith(
          _$SavePolicyDocumentsResponseModelImpl value,
          $Res Function(_$SavePolicyDocumentsResponseModelImpl) then) =
      __$$SavePolicyDocumentsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SavePolicyDocumentsData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SavePolicyDocumentsDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SavePolicyDocumentsResponseModelImplCopyWithImpl<$Res>
    extends _$SavePolicyDocumentsResponseModelCopyWithImpl<$Res,
        _$SavePolicyDocumentsResponseModelImpl>
    implements _$$SavePolicyDocumentsResponseModelImplCopyWith<$Res> {
  __$$SavePolicyDocumentsResponseModelImplCopyWithImpl(
      _$SavePolicyDocumentsResponseModelImpl _value,
      $Res Function(_$SavePolicyDocumentsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SavePolicyDocumentsResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SavePolicyDocumentsData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavePolicyDocumentsResponseModelImpl
    implements _SavePolicyDocumentsResponseModel {
  const _$SavePolicyDocumentsResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SavePolicyDocumentsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SavePolicyDocumentsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SavePolicyDocumentsData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SavePolicyDocumentsResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePolicyDocumentsResponseModelImpl &&
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
  _$$SavePolicyDocumentsResponseModelImplCopyWith<
          _$SavePolicyDocumentsResponseModelImpl>
      get copyWith => __$$SavePolicyDocumentsResponseModelImplCopyWithImpl<
          _$SavePolicyDocumentsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavePolicyDocumentsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SavePolicyDocumentsResponseModel
    implements SavePolicyDocumentsResponseModel {
  const factory _SavePolicyDocumentsResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SavePolicyDocumentsData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SavePolicyDocumentsResponseModelImpl;

  factory _SavePolicyDocumentsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$SavePolicyDocumentsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SavePolicyDocumentsData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SavePolicyDocumentsResponseModelImplCopyWith<
          _$SavePolicyDocumentsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SavePolicyDocumentsData _$SavePolicyDocumentsDataFromJson(
    Map<String, dynamic> json) {
  return _SavePolicyDocumentsData.fromJson(json);
}

/// @nodoc
mixin _$SavePolicyDocumentsData {
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePolicyDocumentsDataCopyWith<SavePolicyDocumentsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePolicyDocumentsDataCopyWith<$Res> {
  factory $SavePolicyDocumentsDataCopyWith(SavePolicyDocumentsData value,
          $Res Function(SavePolicyDocumentsData) then) =
      _$SavePolicyDocumentsDataCopyWithImpl<$Res, SavePolicyDocumentsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SavePolicyDocumentsDataCopyWithImpl<$Res,
        $Val extends SavePolicyDocumentsData>
    implements $SavePolicyDocumentsDataCopyWith<$Res> {
  _$SavePolicyDocumentsDataCopyWithImpl(this._value, this._then);

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
              as AgentApplicationModel?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentApplicationModelCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $AgentApplicationModelCopyWith<$Res>(_value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SavePolicyDocumentsDataImplCopyWith<$Res>
    implements $SavePolicyDocumentsDataCopyWith<$Res> {
  factory _$$SavePolicyDocumentsDataImplCopyWith(
          _$SavePolicyDocumentsDataImpl value,
          $Res Function(_$SavePolicyDocumentsDataImpl) then) =
      __$$SavePolicyDocumentsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SavePolicyDocumentsDataImplCopyWithImpl<$Res>
    extends _$SavePolicyDocumentsDataCopyWithImpl<$Res,
        _$SavePolicyDocumentsDataImpl>
    implements _$$SavePolicyDocumentsDataImplCopyWith<$Res> {
  __$$SavePolicyDocumentsDataImplCopyWithImpl(
      _$SavePolicyDocumentsDataImpl _value,
      $Res Function(_$SavePolicyDocumentsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SavePolicyDocumentsDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as AgentApplicationModel?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavePolicyDocumentsDataImpl implements _SavePolicyDocumentsData {
  const _$SavePolicyDocumentsDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SavePolicyDocumentsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavePolicyDocumentsDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentApplicationModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SavePolicyDocumentsData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePolicyDocumentsDataImpl &&
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
  _$$SavePolicyDocumentsDataImplCopyWith<_$SavePolicyDocumentsDataImpl>
      get copyWith => __$$SavePolicyDocumentsDataImplCopyWithImpl<
          _$SavePolicyDocumentsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavePolicyDocumentsDataImplToJson(
      this,
    );
  }
}

abstract class _SavePolicyDocumentsData implements SavePolicyDocumentsData {
  const factory _SavePolicyDocumentsData(
          {@JsonKey(name: "rb") final AgentApplicationModel? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$SavePolicyDocumentsDataImpl;

  factory _SavePolicyDocumentsData.fromJson(Map<String, dynamic> json) =
      _$SavePolicyDocumentsDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SavePolicyDocumentsDataImplCopyWith<_$SavePolicyDocumentsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
