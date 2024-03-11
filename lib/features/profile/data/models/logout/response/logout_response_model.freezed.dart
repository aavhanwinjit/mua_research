// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogoutResponseModel _$LogoutResponseModelFromJson(Map<String, dynamic> json) {
  return _LogoutResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LogoutResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  LogoutData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutResponseModelCopyWith<LogoutResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutResponseModelCopyWith<$Res> {
  factory $LogoutResponseModelCopyWith(
          LogoutResponseModel value, $Res Function(LogoutResponseModel) then) =
      _$LogoutResponseModelCopyWithImpl<$Res, LogoutResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LogoutData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $LogoutDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$LogoutResponseModelCopyWithImpl<$Res, $Val extends LogoutResponseModel>
    implements $LogoutResponseModelCopyWith<$Res> {
  _$LogoutResponseModelCopyWithImpl(this._value, this._then);

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
              as LogoutData?,
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
  $LogoutDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $LogoutDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$LogoutResponseModelImplCopyWith<$Res>
    implements $LogoutResponseModelCopyWith<$Res> {
  factory _$$LogoutResponseModelImplCopyWith(_$LogoutResponseModelImpl value,
          $Res Function(_$LogoutResponseModelImpl) then) =
      __$$LogoutResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LogoutData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $LogoutDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$LogoutResponseModelImplCopyWithImpl<$Res>
    extends _$LogoutResponseModelCopyWithImpl<$Res, _$LogoutResponseModelImpl>
    implements _$$LogoutResponseModelImplCopyWith<$Res> {
  __$$LogoutResponseModelImplCopyWithImpl(_$LogoutResponseModelImpl _value,
      $Res Function(_$LogoutResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$LogoutResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as LogoutData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoutResponseModelImpl implements _LogoutResponseModel {
  const _$LogoutResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$LogoutResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final LogoutData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'LogoutResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutResponseModelImpl &&
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
  _$$LogoutResponseModelImplCopyWith<_$LogoutResponseModelImpl> get copyWith =>
      __$$LogoutResponseModelImplCopyWithImpl<_$LogoutResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LogoutResponseModel implements LogoutResponseModel {
  const factory _LogoutResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final LogoutData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$LogoutResponseModelImpl;

  factory _LogoutResponseModel.fromJson(Map<String, dynamic> json) =
      _$LogoutResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  LogoutData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$LogoutResponseModelImplCopyWith<_$LogoutResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LogoutData _$LogoutDataFromJson(Map<String, dynamic> json) {
  return _LogoutData.fromJson(json);
}

/// @nodoc
mixin _$LogoutData {
  @JsonKey(name: "rb")
  LogoutResponseBody? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogoutDataCopyWith<LogoutData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutDataCopyWith<$Res> {
  factory $LogoutDataCopyWith(
          LogoutData value, $Res Function(LogoutData) then) =
      _$LogoutDataCopyWithImpl<$Res, LogoutData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") LogoutResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $LogoutResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$LogoutDataCopyWithImpl<$Res, $Val extends LogoutData>
    implements $LogoutDataCopyWith<$Res> {
  _$LogoutDataCopyWithImpl(this._value, this._then);

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
              as LogoutResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LogoutResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $LogoutResponseBodyCopyWith<$Res>(_value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LogoutDataImplCopyWith<$Res>
    implements $LogoutDataCopyWith<$Res> {
  factory _$$LogoutDataImplCopyWith(
          _$LogoutDataImpl value, $Res Function(_$LogoutDataImpl) then) =
      __$$LogoutDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") LogoutResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $LogoutResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$LogoutDataImplCopyWithImpl<$Res>
    extends _$LogoutDataCopyWithImpl<$Res, _$LogoutDataImpl>
    implements _$$LogoutDataImplCopyWith<$Res> {
  __$$LogoutDataImplCopyWithImpl(
      _$LogoutDataImpl _value, $Res Function(_$LogoutDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$LogoutDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as LogoutResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoutDataImpl implements _LogoutData {
  const _$LogoutDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$LogoutDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final LogoutResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'LogoutData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutDataImpl &&
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
  _$$LogoutDataImplCopyWith<_$LogoutDataImpl> get copyWith =>
      __$$LogoutDataImplCopyWithImpl<_$LogoutDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutDataImplToJson(
      this,
    );
  }
}

abstract class _LogoutData implements LogoutData {
  const factory _LogoutData(
      {@JsonKey(name: "rb") final LogoutResponseBody? responseBody,
      @JsonKey(name: "checkSum") final String? checkSum}) = _$LogoutDataImpl;

  factory _LogoutData.fromJson(Map<String, dynamic> json) =
      _$LogoutDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  LogoutResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$LogoutDataImplCopyWith<_$LogoutDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LogoutResponseBody _$LogoutResponseBodyFromJson(Map<String, dynamic> json) {
  return _LogoutResponseBody.fromJson(json);
}

/// @nodoc
mixin _$LogoutResponseBody {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutResponseBodyCopyWith<$Res> {
  factory $LogoutResponseBodyCopyWith(
          LogoutResponseBody value, $Res Function(LogoutResponseBody) then) =
      _$LogoutResponseBodyCopyWithImpl<$Res, LogoutResponseBody>;
}

/// @nodoc
class _$LogoutResponseBodyCopyWithImpl<$Res, $Val extends LogoutResponseBody>
    implements $LogoutResponseBodyCopyWith<$Res> {
  _$LogoutResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogoutResponseBodyImplCopyWith<$Res> {
  factory _$$LogoutResponseBodyImplCopyWith(_$LogoutResponseBodyImpl value,
          $Res Function(_$LogoutResponseBodyImpl) then) =
      __$$LogoutResponseBodyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutResponseBodyImplCopyWithImpl<$Res>
    extends _$LogoutResponseBodyCopyWithImpl<$Res, _$LogoutResponseBodyImpl>
    implements _$$LogoutResponseBodyImplCopyWith<$Res> {
  __$$LogoutResponseBodyImplCopyWithImpl(_$LogoutResponseBodyImpl _value,
      $Res Function(_$LogoutResponseBodyImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LogoutResponseBodyImpl implements _LogoutResponseBody {
  const _$LogoutResponseBodyImpl();

  factory _$LogoutResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutResponseBodyImplFromJson(json);

  @override
  String toString() {
    return 'LogoutResponseBody()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutResponseBodyImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _LogoutResponseBody implements LogoutResponseBody {
  const factory _LogoutResponseBody() = _$LogoutResponseBodyImpl;

  factory _LogoutResponseBody.fromJson(Map<String, dynamic> json) =
      _$LogoutResponseBodyImpl.fromJson;
}
