// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_otp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResendOtpResponseModel _$ResendOtpResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ResendOtpResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ResendOtpResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  ResendOtpData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendOtpResponseModelCopyWith<ResendOtpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendOtpResponseModelCopyWith<$Res> {
  factory $ResendOtpResponseModelCopyWith(ResendOtpResponseModel value,
          $Res Function(ResendOtpResponseModel) then) =
      _$ResendOtpResponseModelCopyWithImpl<$Res, ResendOtpResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ResendOtpData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $ResendOtpDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$ResendOtpResponseModelCopyWithImpl<$Res,
        $Val extends ResendOtpResponseModel>
    implements $ResendOtpResponseModelCopyWith<$Res> {
  _$ResendOtpResponseModelCopyWithImpl(this._value, this._then);

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
              as ResendOtpData?,
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
  $ResendOtpDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $ResendOtpDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$ResendOtpResponseModelImplCopyWith<$Res>
    implements $ResendOtpResponseModelCopyWith<$Res> {
  factory _$$ResendOtpResponseModelImplCopyWith(
          _$ResendOtpResponseModelImpl value,
          $Res Function(_$ResendOtpResponseModelImpl) then) =
      __$$ResendOtpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ResendOtpData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $ResendOtpDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$ResendOtpResponseModelImplCopyWithImpl<$Res>
    extends _$ResendOtpResponseModelCopyWithImpl<$Res,
        _$ResendOtpResponseModelImpl>
    implements _$$ResendOtpResponseModelImplCopyWith<$Res> {
  __$$ResendOtpResponseModelImplCopyWithImpl(
      _$ResendOtpResponseModelImpl _value,
      $Res Function(_$ResendOtpResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ResendOtpResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ResendOtpData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendOtpResponseModelImpl implements _ResendOtpResponseModel {
  const _$ResendOtpResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$ResendOtpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendOtpResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final ResendOtpData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'ResendOtpResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpResponseModelImpl &&
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
  _$$ResendOtpResponseModelImplCopyWith<_$ResendOtpResponseModelImpl>
      get copyWith => __$$ResendOtpResponseModelImplCopyWithImpl<
          _$ResendOtpResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendOtpResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ResendOtpResponseModel implements ResendOtpResponseModel {
  const factory _ResendOtpResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final ResendOtpData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$ResendOtpResponseModelImpl;

  factory _ResendOtpResponseModel.fromJson(Map<String, dynamic> json) =
      _$ResendOtpResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  ResendOtpData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$ResendOtpResponseModelImplCopyWith<_$ResendOtpResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ResendOtpData _$ResendOtpDataFromJson(Map<String, dynamic> json) {
  return _ResendOtpData.fromJson(json);
}

/// @nodoc
mixin _$ResendOtpData {
  @JsonKey(name: "rb")
  ResendOtpResponseBody? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendOtpDataCopyWith<ResendOtpData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendOtpDataCopyWith<$Res> {
  factory $ResendOtpDataCopyWith(
          ResendOtpData value, $Res Function(ResendOtpData) then) =
      _$ResendOtpDataCopyWithImpl<$Res, ResendOtpData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ResendOtpResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $ResendOtpResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$ResendOtpDataCopyWithImpl<$Res, $Val extends ResendOtpData>
    implements $ResendOtpDataCopyWith<$Res> {
  _$ResendOtpDataCopyWithImpl(this._value, this._then);

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
              as ResendOtpResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResendOtpResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $ResendOtpResponseBodyCopyWith<$Res>(_value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResendOtpDataImplCopyWith<$Res>
    implements $ResendOtpDataCopyWith<$Res> {
  factory _$$ResendOtpDataImplCopyWith(
          _$ResendOtpDataImpl value, $Res Function(_$ResendOtpDataImpl) then) =
      __$$ResendOtpDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ResendOtpResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $ResendOtpResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$ResendOtpDataImplCopyWithImpl<$Res>
    extends _$ResendOtpDataCopyWithImpl<$Res, _$ResendOtpDataImpl>
    implements _$$ResendOtpDataImplCopyWith<$Res> {
  __$$ResendOtpDataImplCopyWithImpl(
      _$ResendOtpDataImpl _value, $Res Function(_$ResendOtpDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$ResendOtpDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as ResendOtpResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResendOtpDataImpl implements _ResendOtpData {
  const _$ResendOtpDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$ResendOtpDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendOtpDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final ResendOtpResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'ResendOtpData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpDataImpl &&
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
  _$$ResendOtpDataImplCopyWith<_$ResendOtpDataImpl> get copyWith =>
      __$$ResendOtpDataImplCopyWithImpl<_$ResendOtpDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendOtpDataImplToJson(
      this,
    );
  }
}

abstract class _ResendOtpData implements ResendOtpData {
  const factory _ResendOtpData(
      {@JsonKey(name: "rb") final ResendOtpResponseBody? responseBody,
      @JsonKey(name: "checkSum") final String? checkSum}) = _$ResendOtpDataImpl;

  factory _ResendOtpData.fromJson(Map<String, dynamic> json) =
      _$ResendOtpDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  ResendOtpResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$ResendOtpDataImplCopyWith<_$ResendOtpDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResendOtpResponseBody _$ResendOtpResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _ResendOtpResponseBody.fromJson(json);
}

/// @nodoc
mixin _$ResendOtpResponseBody {
  @JsonKey(name: "refCode")
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenData")
  TokenData? get tokenData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendOtpResponseBodyCopyWith<ResendOtpResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendOtpResponseBodyCopyWith<$Res> {
  factory $ResendOtpResponseBodyCopyWith(ResendOtpResponseBody value,
          $Res Function(ResendOtpResponseBody) then) =
      _$ResendOtpResponseBodyCopyWithImpl<$Res, ResendOtpResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$ResendOtpResponseBodyCopyWithImpl<$Res,
        $Val extends ResendOtpResponseBody>
    implements $ResendOtpResponseBodyCopyWith<$Res> {
  _$ResendOtpResponseBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$ResendOtpResponseBodyImplCopyWith<$Res>
    implements $ResendOtpResponseBodyCopyWith<$Res> {
  factory _$$ResendOtpResponseBodyImplCopyWith(
          _$ResendOtpResponseBodyImpl value,
          $Res Function(_$ResendOtpResponseBodyImpl) then) =
      __$$ResendOtpResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  @override
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$$ResendOtpResponseBodyImplCopyWithImpl<$Res>
    extends _$ResendOtpResponseBodyCopyWithImpl<$Res,
        _$ResendOtpResponseBodyImpl>
    implements _$$ResendOtpResponseBodyImplCopyWith<$Res> {
  __$$ResendOtpResponseBodyImplCopyWithImpl(_$ResendOtpResponseBodyImpl _value,
      $Res Function(_$ResendOtpResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCode = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_$ResendOtpResponseBodyImpl(
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
class _$ResendOtpResponseBodyImpl implements _ResendOtpResponseBody {
  const _$ResendOtpResponseBodyImpl(
      {@JsonKey(name: "refCode") this.refCode,
      @JsonKey(name: "tokenData") this.tokenData});

  factory _$ResendOtpResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResendOtpResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "refCode")
  final String? refCode;
  @override
  @JsonKey(name: "tokenData")
  final TokenData? tokenData;

  @override
  String toString() {
    return 'ResendOtpResponseBody(refCode: $refCode, tokenData: $tokenData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpResponseBodyImpl &&
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
  _$$ResendOtpResponseBodyImplCopyWith<_$ResendOtpResponseBodyImpl>
      get copyWith => __$$ResendOtpResponseBodyImplCopyWithImpl<
          _$ResendOtpResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResendOtpResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _ResendOtpResponseBody implements ResendOtpResponseBody {
  const factory _ResendOtpResponseBody(
          {@JsonKey(name: "refCode") final String? refCode,
          @JsonKey(name: "tokenData") final TokenData? tokenData}) =
      _$ResendOtpResponseBodyImpl;

  factory _ResendOtpResponseBody.fromJson(Map<String, dynamic> json) =
      _$ResendOtpResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "refCode")
  String? get refCode;
  @override
  @JsonKey(name: "tokenData")
  TokenData? get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$ResendOtpResponseBodyImplCopyWith<_$ResendOtpResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
