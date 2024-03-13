// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'de_register_fingerprint_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeRegisterFingerprintResponseModel _$DeRegisterFingerprintResponseModelFromJson(
    Map<String, dynamic> json) {
  return _DeRegisterFingerprintResponseModel.fromJson(json);
}

/// @nodoc
mixin _$DeRegisterFingerprintResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  DeRegisterFingerPrintData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeRegisterFingerprintResponseModelCopyWith<
          DeRegisterFingerprintResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeRegisterFingerprintResponseModelCopyWith<$Res> {
  factory $DeRegisterFingerprintResponseModelCopyWith(
          DeRegisterFingerprintResponseModel value,
          $Res Function(DeRegisterFingerprintResponseModel) then) =
      _$DeRegisterFingerprintResponseModelCopyWithImpl<$Res,
          DeRegisterFingerprintResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") DeRegisterFingerPrintData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $DeRegisterFingerPrintDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$DeRegisterFingerprintResponseModelCopyWithImpl<$Res,
        $Val extends DeRegisterFingerprintResponseModel>
    implements $DeRegisterFingerprintResponseModelCopyWith<$Res> {
  _$DeRegisterFingerprintResponseModelCopyWithImpl(this._value, this._then);

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
              as DeRegisterFingerPrintData?,
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
  $DeRegisterFingerPrintDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $DeRegisterFingerPrintDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$DeRegisterFingerprintResponseModelImplCopyWith<$Res>
    implements $DeRegisterFingerprintResponseModelCopyWith<$Res> {
  factory _$$DeRegisterFingerprintResponseModelImplCopyWith(
          _$DeRegisterFingerprintResponseModelImpl value,
          $Res Function(_$DeRegisterFingerprintResponseModelImpl) then) =
      __$$DeRegisterFingerprintResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") DeRegisterFingerPrintData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $DeRegisterFingerPrintDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$DeRegisterFingerprintResponseModelImplCopyWithImpl<$Res>
    extends _$DeRegisterFingerprintResponseModelCopyWithImpl<$Res,
        _$DeRegisterFingerprintResponseModelImpl>
    implements _$$DeRegisterFingerprintResponseModelImplCopyWith<$Res> {
  __$$DeRegisterFingerprintResponseModelImplCopyWithImpl(
      _$DeRegisterFingerprintResponseModelImpl _value,
      $Res Function(_$DeRegisterFingerprintResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$DeRegisterFingerprintResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as DeRegisterFingerPrintData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeRegisterFingerprintResponseModelImpl
    implements _DeRegisterFingerprintResponseModel {
  const _$DeRegisterFingerprintResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$DeRegisterFingerprintResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeRegisterFingerprintResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final DeRegisterFingerPrintData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'DeRegisterFingerprintResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeRegisterFingerprintResponseModelImpl &&
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
  _$$DeRegisterFingerprintResponseModelImplCopyWith<
          _$DeRegisterFingerprintResponseModelImpl>
      get copyWith => __$$DeRegisterFingerprintResponseModelImplCopyWithImpl<
          _$DeRegisterFingerprintResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeRegisterFingerprintResponseModelImplToJson(
      this,
    );
  }
}

abstract class _DeRegisterFingerprintResponseModel
    implements DeRegisterFingerprintResponseModel {
  const factory _DeRegisterFingerprintResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final DeRegisterFingerPrintData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$DeRegisterFingerprintResponseModelImpl;

  factory _DeRegisterFingerprintResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$DeRegisterFingerprintResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  DeRegisterFingerPrintData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$DeRegisterFingerprintResponseModelImplCopyWith<
          _$DeRegisterFingerprintResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeRegisterFingerPrintData _$DeRegisterFingerPrintDataFromJson(
    Map<String, dynamic> json) {
  return _DeRegisterFingerPrintData.fromJson(json);
}

/// @nodoc
mixin _$DeRegisterFingerPrintData {
  @JsonKey(name: "rb")
  DeRegisterFingerprintResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeRegisterFingerPrintDataCopyWith<DeRegisterFingerPrintData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeRegisterFingerPrintDataCopyWith<$Res> {
  factory $DeRegisterFingerPrintDataCopyWith(DeRegisterFingerPrintData value,
          $Res Function(DeRegisterFingerPrintData) then) =
      _$DeRegisterFingerPrintDataCopyWithImpl<$Res, DeRegisterFingerPrintData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") DeRegisterFingerprintResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $DeRegisterFingerprintResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$DeRegisterFingerPrintDataCopyWithImpl<$Res,
        $Val extends DeRegisterFingerPrintData>
    implements $DeRegisterFingerPrintDataCopyWith<$Res> {
  _$DeRegisterFingerPrintDataCopyWithImpl(this._value, this._then);

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
              as DeRegisterFingerprintResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeRegisterFingerprintResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $DeRegisterFingerprintResponseBodyCopyWith<$Res>(
        _value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeRegisterFingerPrintDataImplCopyWith<$Res>
    implements $DeRegisterFingerPrintDataCopyWith<$Res> {
  factory _$$DeRegisterFingerPrintDataImplCopyWith(
          _$DeRegisterFingerPrintDataImpl value,
          $Res Function(_$DeRegisterFingerPrintDataImpl) then) =
      __$$DeRegisterFingerPrintDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") DeRegisterFingerprintResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $DeRegisterFingerprintResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$DeRegisterFingerPrintDataImplCopyWithImpl<$Res>
    extends _$DeRegisterFingerPrintDataCopyWithImpl<$Res,
        _$DeRegisterFingerPrintDataImpl>
    implements _$$DeRegisterFingerPrintDataImplCopyWith<$Res> {
  __$$DeRegisterFingerPrintDataImplCopyWithImpl(
      _$DeRegisterFingerPrintDataImpl _value,
      $Res Function(_$DeRegisterFingerPrintDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$DeRegisterFingerPrintDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as DeRegisterFingerprintResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeRegisterFingerPrintDataImpl implements _DeRegisterFingerPrintData {
  const _$DeRegisterFingerPrintDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$DeRegisterFingerPrintDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeRegisterFingerPrintDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final DeRegisterFingerprintResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'DeRegisterFingerPrintData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeRegisterFingerPrintDataImpl &&
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
  _$$DeRegisterFingerPrintDataImplCopyWith<_$DeRegisterFingerPrintDataImpl>
      get copyWith => __$$DeRegisterFingerPrintDataImplCopyWithImpl<
          _$DeRegisterFingerPrintDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeRegisterFingerPrintDataImplToJson(
      this,
    );
  }
}

abstract class _DeRegisterFingerPrintData implements DeRegisterFingerPrintData {
  const factory _DeRegisterFingerPrintData(
          {@JsonKey(name: "rb")
          final DeRegisterFingerprintResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$DeRegisterFingerPrintDataImpl;

  factory _DeRegisterFingerPrintData.fromJson(Map<String, dynamic> json) =
      _$DeRegisterFingerPrintDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  DeRegisterFingerprintResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$DeRegisterFingerPrintDataImplCopyWith<_$DeRegisterFingerPrintDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeRegisterFingerprintResponseBody _$DeRegisterFingerprintResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _DeRegisterFingerprintResponseBody.fromJson(json);
}

/// @nodoc
mixin _$DeRegisterFingerprintResponseBody {
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeRegisterFingerprintResponseBodyCopyWith<DeRegisterFingerprintResponseBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeRegisterFingerprintResponseBodyCopyWith<$Res> {
  factory $DeRegisterFingerprintResponseBodyCopyWith(
          DeRegisterFingerprintResponseBody value,
          $Res Function(DeRegisterFingerprintResponseBody) then) =
      _$DeRegisterFingerprintResponseBodyCopyWithImpl<$Res,
          DeRegisterFingerprintResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class _$DeRegisterFingerprintResponseBodyCopyWithImpl<$Res,
        $Val extends DeRegisterFingerprintResponseBody>
    implements $DeRegisterFingerprintResponseBodyCopyWith<$Res> {
  _$DeRegisterFingerprintResponseBodyCopyWithImpl(this._value, this._then);

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
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeRegisterFingerprintResponseBodyImplCopyWith<$Res>
    implements $DeRegisterFingerprintResponseBodyCopyWith<$Res> {
  factory _$$DeRegisterFingerprintResponseBodyImplCopyWith(
          _$DeRegisterFingerprintResponseBodyImpl value,
          $Res Function(_$DeRegisterFingerprintResponseBodyImpl) then) =
      __$$DeRegisterFingerprintResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "message") String? message,
      @JsonKey(name: "data") dynamic data});
}

/// @nodoc
class __$$DeRegisterFingerprintResponseBodyImplCopyWithImpl<$Res>
    extends _$DeRegisterFingerprintResponseBodyCopyWithImpl<$Res,
        _$DeRegisterFingerprintResponseBodyImpl>
    implements _$$DeRegisterFingerprintResponseBodyImplCopyWith<$Res> {
  __$$DeRegisterFingerprintResponseBodyImplCopyWithImpl(
      _$DeRegisterFingerprintResponseBodyImpl _value,
      $Res Function(_$DeRegisterFingerprintResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DeRegisterFingerprintResponseBodyImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeRegisterFingerprintResponseBodyImpl
    implements _DeRegisterFingerprintResponseBody {
  const _$DeRegisterFingerprintResponseBodyImpl(
      {@JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data});

  factory _$DeRegisterFingerprintResponseBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DeRegisterFingerprintResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final dynamic data;

  @override
  String toString() {
    return 'DeRegisterFingerprintResponseBody(message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeRegisterFingerprintResponseBodyImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeRegisterFingerprintResponseBodyImplCopyWith<
          _$DeRegisterFingerprintResponseBodyImpl>
      get copyWith => __$$DeRegisterFingerprintResponseBodyImplCopyWithImpl<
          _$DeRegisterFingerprintResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeRegisterFingerprintResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _DeRegisterFingerprintResponseBody
    implements DeRegisterFingerprintResponseBody {
  const factory _DeRegisterFingerprintResponseBody(
          {@JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final dynamic data}) =
      _$DeRegisterFingerprintResponseBodyImpl;

  factory _DeRegisterFingerprintResponseBody.fromJson(
          Map<String, dynamic> json) =
      _$DeRegisterFingerprintResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$DeRegisterFingerprintResponseBodyImplCopyWith<
          _$DeRegisterFingerprintResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
