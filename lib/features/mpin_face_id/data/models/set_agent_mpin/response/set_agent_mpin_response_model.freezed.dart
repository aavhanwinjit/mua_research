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
  SetAgentMpinResponseBody? get responseBody =>
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
      {@JsonKey(name: "rb") SetAgentMpinResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $SetAgentMpinResponseBodyCopyWith<$Res>? get responseBody;
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
              as SetAgentMpinResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SetAgentMpinResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $SetAgentMpinResponseBodyCopyWith<$Res>(_value.responseBody!,
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
      {@JsonKey(name: "rb") SetAgentMpinResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $SetAgentMpinResponseBodyCopyWith<$Res>? get responseBody;
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
              as SetAgentMpinResponseBody?,
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
  final SetAgentMpinResponseBody? responseBody;
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
          {@JsonKey(name: "rb") final SetAgentMpinResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$SetAgentMpinDataImpl;

  factory _SetAgentMpinData.fromJson(Map<String, dynamic> json) =
      _$SetAgentMpinDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  SetAgentMpinResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SetAgentMpinDataImplCopyWith<_$SetAgentMpinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetAgentMpinResponseBody _$SetAgentMpinResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _SetAgentMpinResponseBody.fromJson(json);
}

/// @nodoc
mixin _$SetAgentMpinResponseBody {
  @JsonKey(name: "refCode")
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenData")
  TokenData? get tokenData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetAgentMpinResponseBodyCopyWith<SetAgentMpinResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetAgentMpinResponseBodyCopyWith<$Res> {
  factory $SetAgentMpinResponseBodyCopyWith(SetAgentMpinResponseBody value,
          $Res Function(SetAgentMpinResponseBody) then) =
      _$SetAgentMpinResponseBodyCopyWithImpl<$Res, SetAgentMpinResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$SetAgentMpinResponseBodyCopyWithImpl<$Res,
        $Val extends SetAgentMpinResponseBody>
    implements $SetAgentMpinResponseBodyCopyWith<$Res> {
  _$SetAgentMpinResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCode = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_value.copyWith(
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$SetAgentMpinResponseBodyImplCopyWith<$Res>
    implements $SetAgentMpinResponseBodyCopyWith<$Res> {
  factory _$$SetAgentMpinResponseBodyImplCopyWith(
          _$SetAgentMpinResponseBodyImpl value,
          $Res Function(_$SetAgentMpinResponseBodyImpl) then) =
      __$$SetAgentMpinResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  @override
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$$SetAgentMpinResponseBodyImplCopyWithImpl<$Res>
    extends _$SetAgentMpinResponseBodyCopyWithImpl<$Res,
        _$SetAgentMpinResponseBodyImpl>
    implements _$$SetAgentMpinResponseBodyImplCopyWith<$Res> {
  __$$SetAgentMpinResponseBodyImplCopyWithImpl(
      _$SetAgentMpinResponseBodyImpl _value,
      $Res Function(_$SetAgentMpinResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCode = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_$SetAgentMpinResponseBodyImpl(
      refCode: freezed == refCode
          ? _value.refCode
          : refCode // ignore: cast_nullable_to_non_nullable
              as String?,
      tokenData: freezed == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as TokenData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetAgentMpinResponseBodyImpl implements _SetAgentMpinResponseBody {
  const _$SetAgentMpinResponseBodyImpl(
      {@JsonKey(name: "refCode") this.refCode,
      @JsonKey(name: "tokenData") this.tokenData});

  factory _$SetAgentMpinResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetAgentMpinResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "refCode")
  final String? refCode;
  @override
  @JsonKey(name: "tokenData")
  final TokenData? tokenData;

  @override
  String toString() {
    return 'SetAgentMpinResponseBody(refCode: $refCode, tokenData: $tokenData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAgentMpinResponseBodyImpl &&
            (identical(other.refCode, refCode) || other.refCode == refCode) &&
            (identical(other.tokenData, tokenData) ||
                other.tokenData == tokenData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, refCode, tokenData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAgentMpinResponseBodyImplCopyWith<_$SetAgentMpinResponseBodyImpl>
      get copyWith => __$$SetAgentMpinResponseBodyImplCopyWithImpl<
          _$SetAgentMpinResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetAgentMpinResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _SetAgentMpinResponseBody implements SetAgentMpinResponseBody {
  const factory _SetAgentMpinResponseBody(
          {@JsonKey(name: "refCode") final String? refCode,
          @JsonKey(name: "tokenData") final TokenData? tokenData}) =
      _$SetAgentMpinResponseBodyImpl;

  factory _SetAgentMpinResponseBody.fromJson(Map<String, dynamic> json) =
      _$SetAgentMpinResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "refCode")
  String? get refCode;
  @override
  @JsonKey(name: "tokenData")
  TokenData? get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$SetAgentMpinResponseBodyImplCopyWith<_$SetAgentMpinResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TokenData _$TokenDataFromJson(Map<String, dynamic> json) {
  return _TokenData.fromJson(json);
}

/// @nodoc
mixin _$TokenData {
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionId")
  String? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry")
  int? get expiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDataCopyWith<TokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDataCopyWith<$Res> {
  factory $TokenDataCopyWith(TokenData value, $Res Function(TokenData) then) =
      _$TokenDataCopyWithImpl<$Res, TokenData>;
  @useResult
  $Res call(
      {@JsonKey(name: "token") String? token,
      @JsonKey(name: "sessionId") String? sessionId,
      @JsonKey(name: "expiry") int? expiry});
}

/// @nodoc
class _$TokenDataCopyWithImpl<$Res, $Val extends TokenData>
    implements $TokenDataCopyWith<$Res> {
  _$TokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? sessionId = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDataImplCopyWith<$Res>
    implements $TokenDataCopyWith<$Res> {
  factory _$$TokenDataImplCopyWith(
          _$TokenDataImpl value, $Res Function(_$TokenDataImpl) then) =
      __$$TokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "token") String? token,
      @JsonKey(name: "sessionId") String? sessionId,
      @JsonKey(name: "expiry") int? expiry});
}

/// @nodoc
class __$$TokenDataImplCopyWithImpl<$Res>
    extends _$TokenDataCopyWithImpl<$Res, _$TokenDataImpl>
    implements _$$TokenDataImplCopyWith<$Res> {
  __$$TokenDataImplCopyWithImpl(
      _$TokenDataImpl _value, $Res Function(_$TokenDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? sessionId = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_$TokenDataImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDataImpl implements _TokenData {
  const _$TokenDataImpl(
      {@JsonKey(name: "token") this.token,
      @JsonKey(name: "sessionId") this.sessionId,
      @JsonKey(name: "expiry") this.expiry});

  factory _$TokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDataImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final String? token;
  @override
  @JsonKey(name: "sessionId")
  final String? sessionId;
  @override
  @JsonKey(name: "expiry")
  final int? expiry;

  @override
  String toString() {
    return 'TokenData(token: $token, sessionId: $sessionId, expiry: $expiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDataImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, sessionId, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDataImplCopyWith<_$TokenDataImpl> get copyWith =>
      __$$TokenDataImplCopyWithImpl<_$TokenDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDataImplToJson(
      this,
    );
  }
}

abstract class _TokenData implements TokenData {
  const factory _TokenData(
      {@JsonKey(name: "token") final String? token,
      @JsonKey(name: "sessionId") final String? sessionId,
      @JsonKey(name: "expiry") final int? expiry}) = _$TokenDataImpl;

  factory _TokenData.fromJson(Map<String, dynamic> json) =
      _$TokenDataImpl.fromJson;

  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "sessionId")
  String? get sessionId;
  @override
  @JsonKey(name: "expiry")
  int? get expiry;
  @override
  @JsonKey(ignore: true)
  _$$TokenDataImplCopyWith<_$TokenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
