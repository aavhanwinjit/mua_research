// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_fingerprint_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SetFingerprintResponseModel _$SetFingerprintResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SetFingerprintResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SetFingerprintResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SetFingerprintBody? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetFingerprintResponseModelCopyWith<SetFingerprintResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetFingerprintResponseModelCopyWith<$Res> {
  factory $SetFingerprintResponseModelCopyWith(
          SetFingerprintResponseModel value,
          $Res Function(SetFingerprintResponseModel) then) =
      _$SetFingerprintResponseModelCopyWithImpl<$Res,
          SetFingerprintResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SetFingerprintBody? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SetFingerprintBodyCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$SetFingerprintResponseModelCopyWithImpl<$Res,
        $Val extends SetFingerprintResponseModel>
    implements $SetFingerprintResponseModelCopyWith<$Res> {
  _$SetFingerprintResponseModelCopyWithImpl(this._value, this._then);

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
              as SetFingerprintBody?,
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
  $SetFingerprintBodyCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SetFingerprintBodyCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$SetFingerprintResponseModelImplCopyWith<$Res>
    implements $SetFingerprintResponseModelCopyWith<$Res> {
  factory _$$SetFingerprintResponseModelImplCopyWith(
          _$SetFingerprintResponseModelImpl value,
          $Res Function(_$SetFingerprintResponseModelImpl) then) =
      __$$SetFingerprintResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SetFingerprintBody? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SetFingerprintBodyCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SetFingerprintResponseModelImplCopyWithImpl<$Res>
    extends _$SetFingerprintResponseModelCopyWithImpl<$Res,
        _$SetFingerprintResponseModelImpl>
    implements _$$SetFingerprintResponseModelImplCopyWith<$Res> {
  __$$SetFingerprintResponseModelImplCopyWithImpl(
      _$SetFingerprintResponseModelImpl _value,
      $Res Function(_$SetFingerprintResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SetFingerprintResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SetFingerprintBody?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetFingerprintResponseModelImpl
    implements _SetFingerprintResponseModel {
  const _$SetFingerprintResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SetFingerprintResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SetFingerprintResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SetFingerprintBody? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SetFingerprintResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFingerprintResponseModelImpl &&
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
  _$$SetFingerprintResponseModelImplCopyWith<_$SetFingerprintResponseModelImpl>
      get copyWith => __$$SetFingerprintResponseModelImplCopyWithImpl<
          _$SetFingerprintResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetFingerprintResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SetFingerprintResponseModel
    implements SetFingerprintResponseModel {
  const factory _SetFingerprintResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SetFingerprintBody? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SetFingerprintResponseModelImpl;

  factory _SetFingerprintResponseModel.fromJson(Map<String, dynamic> json) =
      _$SetFingerprintResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SetFingerprintBody? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SetFingerprintResponseModelImplCopyWith<_$SetFingerprintResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SetFingerprintBody _$SetFingerprintBodyFromJson(Map<String, dynamic> json) {
  return _SetFingerprintBody.fromJson(json);
}

/// @nodoc
mixin _$SetFingerprintBody {
  @JsonKey(name: "rb")
  SetFingerprintResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetFingerprintBodyCopyWith<SetFingerprintBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetFingerprintBodyCopyWith<$Res> {
  factory $SetFingerprintBodyCopyWith(
          SetFingerprintBody value, $Res Function(SetFingerprintBody) then) =
      _$SetFingerprintBodyCopyWithImpl<$Res, SetFingerprintBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") SetFingerprintResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $SetFingerprintResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SetFingerprintBodyCopyWithImpl<$Res, $Val extends SetFingerprintBody>
    implements $SetFingerprintBodyCopyWith<$Res> {
  _$SetFingerprintBodyCopyWithImpl(this._value, this._then);

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
              as SetFingerprintResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SetFingerprintResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $SetFingerprintResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetFingerprintBodyImplCopyWith<$Res>
    implements $SetFingerprintBodyCopyWith<$Res> {
  factory _$$SetFingerprintBodyImplCopyWith(_$SetFingerprintBodyImpl value,
          $Res Function(_$SetFingerprintBodyImpl) then) =
      __$$SetFingerprintBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") SetFingerprintResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $SetFingerprintResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SetFingerprintBodyImplCopyWithImpl<$Res>
    extends _$SetFingerprintBodyCopyWithImpl<$Res, _$SetFingerprintBodyImpl>
    implements _$$SetFingerprintBodyImplCopyWith<$Res> {
  __$$SetFingerprintBodyImplCopyWithImpl(_$SetFingerprintBodyImpl _value,
      $Res Function(_$SetFingerprintBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SetFingerprintBodyImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as SetFingerprintResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetFingerprintBodyImpl implements _SetFingerprintBody {
  const _$SetFingerprintBodyImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SetFingerprintBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetFingerprintBodyImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final SetFingerprintResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SetFingerprintBody(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFingerprintBodyImpl &&
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
  _$$SetFingerprintBodyImplCopyWith<_$SetFingerprintBodyImpl> get copyWith =>
      __$$SetFingerprintBodyImplCopyWithImpl<_$SetFingerprintBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetFingerprintBodyImplToJson(
      this,
    );
  }
}

abstract class _SetFingerprintBody implements SetFingerprintBody {
  const factory _SetFingerprintBody(
          {@JsonKey(name: "rb") final SetFingerprintResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$SetFingerprintBodyImpl;

  factory _SetFingerprintBody.fromJson(Map<String, dynamic> json) =
      _$SetFingerprintBodyImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  SetFingerprintResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SetFingerprintBodyImplCopyWith<_$SetFingerprintBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetFingerprintResponseBody _$SetFingerprintResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _SetFingerprintResponseBody.fromJson(json);
}

/// @nodoc
mixin _$SetFingerprintResponseBody {
  @JsonKey(name: "data")
  SetFingerprintData? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenData")
  TokenData? get tokenData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetFingerprintResponseBodyCopyWith<SetFingerprintResponseBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetFingerprintResponseBodyCopyWith<$Res> {
  factory $SetFingerprintResponseBodyCopyWith(SetFingerprintResponseBody value,
          $Res Function(SetFingerprintResponseBody) then) =
      _$SetFingerprintResponseBodyCopyWithImpl<$Res,
          SetFingerprintResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "data") SetFingerprintData? data,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  $SetFingerprintDataCopyWith<$Res>? get data;
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$SetFingerprintResponseBodyCopyWithImpl<$Res,
        $Val extends SetFingerprintResponseBody>
    implements $SetFingerprintResponseBodyCopyWith<$Res> {
  _$SetFingerprintResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SetFingerprintData?,
      tokenData: freezed == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as TokenData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SetFingerprintDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SetFingerprintDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
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
abstract class _$$SetFingerprintResponseBodyImplCopyWith<$Res>
    implements $SetFingerprintResponseBodyCopyWith<$Res> {
  factory _$$SetFingerprintResponseBodyImplCopyWith(
          _$SetFingerprintResponseBodyImpl value,
          $Res Function(_$SetFingerprintResponseBodyImpl) then) =
      __$$SetFingerprintResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "data") SetFingerprintData? data,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  @override
  $SetFingerprintDataCopyWith<$Res>? get data;
  @override
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$$SetFingerprintResponseBodyImplCopyWithImpl<$Res>
    extends _$SetFingerprintResponseBodyCopyWithImpl<$Res,
        _$SetFingerprintResponseBodyImpl>
    implements _$$SetFingerprintResponseBodyImplCopyWith<$Res> {
  __$$SetFingerprintResponseBodyImplCopyWithImpl(
      _$SetFingerprintResponseBodyImpl _value,
      $Res Function(_$SetFingerprintResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_$SetFingerprintResponseBodyImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SetFingerprintData?,
      tokenData: freezed == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as TokenData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetFingerprintResponseBodyImpl implements _SetFingerprintResponseBody {
  const _$SetFingerprintResponseBodyImpl(
      {@JsonKey(name: "data") this.data,
      @JsonKey(name: "tokenData") this.tokenData});

  factory _$SetFingerprintResponseBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SetFingerprintResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "data")
  final SetFingerprintData? data;
  @override
  @JsonKey(name: "tokenData")
  final TokenData? tokenData;

  @override
  String toString() {
    return 'SetFingerprintResponseBody(data: $data, tokenData: $tokenData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFingerprintResponseBodyImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.tokenData, tokenData) ||
                other.tokenData == tokenData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, tokenData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFingerprintResponseBodyImplCopyWith<_$SetFingerprintResponseBodyImpl>
      get copyWith => __$$SetFingerprintResponseBodyImplCopyWithImpl<
          _$SetFingerprintResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetFingerprintResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _SetFingerprintResponseBody
    implements SetFingerprintResponseBody {
  const factory _SetFingerprintResponseBody(
          {@JsonKey(name: "data") final SetFingerprintData? data,
          @JsonKey(name: "tokenData") final TokenData? tokenData}) =
      _$SetFingerprintResponseBodyImpl;

  factory _SetFingerprintResponseBody.fromJson(Map<String, dynamic> json) =
      _$SetFingerprintResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "data")
  SetFingerprintData? get data;
  @override
  @JsonKey(name: "tokenData")
  TokenData? get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$SetFingerprintResponseBodyImplCopyWith<_$SetFingerprintResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SetFingerprintData _$SetFingerprintDataFromJson(Map<String, dynamic> json) {
  return _SetFingerprintData.fromJson(json);
}

/// @nodoc
mixin _$SetFingerprintData {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetFingerprintDataCopyWith<SetFingerprintData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetFingerprintDataCopyWith<$Res> {
  factory $SetFingerprintDataCopyWith(
          SetFingerprintData value, $Res Function(SetFingerprintData) then) =
      _$SetFingerprintDataCopyWithImpl<$Res, SetFingerprintData>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataData? data});

  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SetFingerprintDataCopyWithImpl<$Res, $Val extends SetFingerprintData>
    implements $SetFingerprintDataCopyWith<$Res> {
  _$SetFingerprintDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetFingerprintDataImplCopyWith<$Res>
    implements $SetFingerprintDataCopyWith<$Res> {
  factory _$$SetFingerprintDataImplCopyWith(_$SetFingerprintDataImpl value,
          $Res Function(_$SetFingerprintDataImpl) then) =
      __$$SetFingerprintDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataData? data});

  @override
  $DataDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SetFingerprintDataImplCopyWithImpl<$Res>
    extends _$SetFingerprintDataCopyWithImpl<$Res, _$SetFingerprintDataImpl>
    implements _$$SetFingerprintDataImplCopyWith<$Res> {
  __$$SetFingerprintDataImplCopyWithImpl(_$SetFingerprintDataImpl _value,
      $Res Function(_$SetFingerprintDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SetFingerprintDataImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetFingerprintDataImpl implements _SetFingerprintData {
  const _$SetFingerprintDataImpl(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$SetFingerprintDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetFingerprintDataImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final DataData? data;

  @override
  String toString() {
    return 'SetFingerprintData(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetFingerprintDataImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetFingerprintDataImplCopyWith<_$SetFingerprintDataImpl> get copyWith =>
      __$$SetFingerprintDataImplCopyWithImpl<_$SetFingerprintDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetFingerprintDataImplToJson(
      this,
    );
  }
}

abstract class _SetFingerprintData implements SetFingerprintData {
  const factory _SetFingerprintData(
      {@JsonKey(name: "message") final String? message,
      @JsonKey(name: "data") final DataData? data}) = _$SetFingerprintDataImpl;

  factory _SetFingerprintData.fromJson(Map<String, dynamic> json) =
      _$SetFingerprintDataImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  DataData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SetFingerprintDataImplCopyWith<_$SetFingerprintDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataData _$DataDataFromJson(Map<String, dynamic> json) {
  return _DataData.fromJson(json);
}

/// @nodoc
mixin _$DataData {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  String? get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataDataCopyWith<DataData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDataCopyWith<$Res> {
  factory $DataDataCopyWith(DataData value, $Res Function(DataData) then) =
      _$DataDataCopyWithImpl<$Res, DataData>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "deviceToken") String? deviceToken});
}

/// @nodoc
class _$DataDataCopyWithImpl<$Res, $Val extends DataData>
    implements $DataDataCopyWith<$Res> {
  _$DataDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDataImplCopyWith<$Res>
    implements $DataDataCopyWith<$Res> {
  factory _$$DataDataImplCopyWith(
          _$DataDataImpl value, $Res Function(_$DataDataImpl) then) =
      __$$DataDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "deviceToken") String? deviceToken});
}

/// @nodoc
class __$$DataDataImplCopyWithImpl<$Res>
    extends _$DataDataCopyWithImpl<$Res, _$DataDataImpl>
    implements _$$DataDataImplCopyWith<$Res> {
  __$$DataDataImplCopyWithImpl(
      _$DataDataImpl _value, $Res Function(_$DataDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_$DataDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDataImpl implements _DataData {
  const _$DataDataImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "deviceToken") this.deviceToken});

  factory _$DataDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDataImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "deviceToken")
  final String? deviceToken;

  @override
  String toString() {
    return 'DataData(id: $id, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, deviceToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      __$$DataDataImplCopyWithImpl<_$DataDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDataImplToJson(
      this,
    );
  }
}

abstract class _DataData implements DataData {
  const factory _DataData(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "deviceToken") final String? deviceToken}) =
      _$DataDataImpl;

  factory _DataData.fromJson(Map<String, dynamic> json) =
      _$DataDataImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "deviceToken")
  String? get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$$DataDataImplCopyWith<_$DataDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
