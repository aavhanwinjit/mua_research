// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_agent_mpin_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetAgentMpinResponseModel _$SetAgentMpinResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SetAgentMpinResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SetAgentMpinResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SetAgentMpinData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAgentMpinResponseModelCopyWith<SetAgentMpinResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAgentMpinResponseModelCopyWith<$Res> {
  factory $SetAgentMpinResponseModelCopyWith(SetAgentMpinResponseModel value,
          $Res Function(SetAgentMpinResponseModel) then) =
      _$SetAgentMpinResponseModelCopyWithImpl<$Res, SetAgentMpinResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SetAgentMpinData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SetAgentMpinDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$SetAgentMpinResponseModelCopyWithImpl<$Res,
        $Val extends SetAgentMpinResponseModel>
    implements $SetAgentMpinResponseModelCopyWith<$Res> {
  _$SetAgentMpinResponseModelCopyWithImpl(this._value, this._then);

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
              as SetAgentMpinData?,
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
  $SetAgentMpinDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SetAgentMpinDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$SetAgentMpinResponseModelImplCopyWith<$Res>
    implements $SetAgentMpinResponseModelCopyWith<$Res> {
  factory _$$SetAgentMpinResponseModelImplCopyWith(
          _$SetAgentMpinResponseModelImpl value,
          $Res Function(_$SetAgentMpinResponseModelImpl) then) =
      __$$SetAgentMpinResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SetAgentMpinData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SetAgentMpinDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SetAgentMpinResponseModelImplCopyWithImpl<$Res>
    extends _$SetAgentMpinResponseModelCopyWithImpl<$Res,
        _$SetAgentMpinResponseModelImpl>
    implements _$$SetAgentMpinResponseModelImplCopyWith<$Res> {
  __$$SetAgentMpinResponseModelImplCopyWithImpl(
      _$SetAgentMpinResponseModelImpl _value,
      $Res Function(_$SetAgentMpinResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SetAgentMpinResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SetAgentMpinData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAgentMpinResponseModelImpl implements _SetAgentMpinResponseModel {
  const _$SetAgentMpinResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SetAgentMpinResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAgentMpinResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SetAgentMpinData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SetAgentMpinResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAgentMpinResponseModelImpl &&
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
  _$$SetAgentMpinResponseModelImplCopyWith<_$SetAgentMpinResponseModelImpl>
      get copyWith => __$$SetAgentMpinResponseModelImplCopyWithImpl<
          _$SetAgentMpinResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAgentMpinResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SetAgentMpinResponseModel implements SetAgentMpinResponseModel {
  const factory _SetAgentMpinResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SetAgentMpinData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SetAgentMpinResponseModelImpl;

  factory _SetAgentMpinResponseModel.fromJson(Map<String, dynamic> json) =
      _$SetAgentMpinResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SetAgentMpinData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SetAgentMpinResponseModelImplCopyWith<_$SetAgentMpinResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SetAgentMpinData _$SetAgentMpinDataFromJson(Map<String, dynamic> json) {
  return _SetAgentMpinData.fromJson(json);
}

/// @nodoc
mixin _$SetAgentMpinData {
  @JsonKey(name: "rb")
  AgentLoginDetailsResponseModel? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAgentMpinDataCopyWith<SetAgentMpinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAgentMpinDataCopyWith<$Res> {
  factory $SetAgentMpinDataCopyWith(
          SetAgentMpinData value, $Res Function(SetAgentMpinData) then) =
      _$SetAgentMpinDataCopyWithImpl<$Res, SetAgentMpinData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentLoginDetailsResponseModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SetAgentMpinDataCopyWithImpl<$Res, $Val extends SetAgentMpinData>
    implements $SetAgentMpinDataCopyWith<$Res> {
  _$SetAgentMpinDataCopyWithImpl(this._value, this._then);

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
              as AgentLoginDetailsResponseModel?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentLoginDetailsResponseModelCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $AgentLoginDetailsResponseModelCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetAgentMpinDataImplCopyWith<$Res>
    implements $SetAgentMpinDataCopyWith<$Res> {
  factory _$$SetAgentMpinDataImplCopyWith(_$SetAgentMpinDataImpl value,
          $Res Function(_$SetAgentMpinDataImpl) then) =
      __$$SetAgentMpinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentLoginDetailsResponseModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SetAgentMpinDataImplCopyWithImpl<$Res>
    extends _$SetAgentMpinDataCopyWithImpl<$Res, _$SetAgentMpinDataImpl>
    implements _$$SetAgentMpinDataImplCopyWith<$Res> {
  __$$SetAgentMpinDataImplCopyWithImpl(_$SetAgentMpinDataImpl _value,
      $Res Function(_$SetAgentMpinDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SetAgentMpinDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as AgentLoginDetailsResponseModel?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAgentMpinDataImpl implements _SetAgentMpinData {
  const _$SetAgentMpinDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SetAgentMpinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAgentMpinDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentLoginDetailsResponseModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SetAgentMpinData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAgentMpinDataImpl &&
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
  _$$SetAgentMpinDataImplCopyWith<_$SetAgentMpinDataImpl> get copyWith =>
      __$$SetAgentMpinDataImplCopyWithImpl<_$SetAgentMpinDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAgentMpinDataImplToJson(
      this,
    );
  }
}

abstract class _SetAgentMpinData implements SetAgentMpinData {
  const factory _SetAgentMpinData(
      {@JsonKey(name: "rb") final AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum")
      final String? checkSum}) = _$SetAgentMpinDataImpl;

  factory _SetAgentMpinData.fromJson(Map<String, dynamic> json) =
      _$SetAgentMpinDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentLoginDetailsResponseModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SetAgentMpinDataImplCopyWith<_$SetAgentMpinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
