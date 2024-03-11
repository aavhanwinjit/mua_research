// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_mobile_number_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyMobileNumberResponseModel _$VerifyMobileNumberResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyMobileNumberResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyMobileNumberResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  VerifyMobileNumberData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMobileNumberResponseModelCopyWith<VerifyMobileNumberResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMobileNumberResponseModelCopyWith<$Res> {
  factory $VerifyMobileNumberResponseModelCopyWith(
          VerifyMobileNumberResponseModel value,
          $Res Function(VerifyMobileNumberResponseModel) then) =
      _$VerifyMobileNumberResponseModelCopyWithImpl<$Res,
          VerifyMobileNumberResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") VerifyMobileNumberData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $VerifyMobileNumberDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$VerifyMobileNumberResponseModelCopyWithImpl<$Res,
        $Val extends VerifyMobileNumberResponseModel>
    implements $VerifyMobileNumberResponseModelCopyWith<$Res> {
  _$VerifyMobileNumberResponseModelCopyWithImpl(this._value, this._then);

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
              as VerifyMobileNumberData?,
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
  $VerifyMobileNumberDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $VerifyMobileNumberDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$VerifyMobileNumberResponseModelImplCopyWith<$Res>
    implements $VerifyMobileNumberResponseModelCopyWith<$Res> {
  factory _$$VerifyMobileNumberResponseModelImplCopyWith(
          _$VerifyMobileNumberResponseModelImpl value,
          $Res Function(_$VerifyMobileNumberResponseModelImpl) then) =
      __$$VerifyMobileNumberResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") VerifyMobileNumberData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $VerifyMobileNumberDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$VerifyMobileNumberResponseModelImplCopyWithImpl<$Res>
    extends _$VerifyMobileNumberResponseModelCopyWithImpl<$Res,
        _$VerifyMobileNumberResponseModelImpl>
    implements _$$VerifyMobileNumberResponseModelImplCopyWith<$Res> {
  __$$VerifyMobileNumberResponseModelImplCopyWithImpl(
      _$VerifyMobileNumberResponseModelImpl _value,
      $Res Function(_$VerifyMobileNumberResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$VerifyMobileNumberResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as VerifyMobileNumberData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyMobileNumberResponseModelImpl
    implements _VerifyMobileNumberResponseModel {
  const _$VerifyMobileNumberResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$VerifyMobileNumberResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerifyMobileNumberResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final VerifyMobileNumberData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'VerifyMobileNumberResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMobileNumberResponseModelImpl &&
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
  _$$VerifyMobileNumberResponseModelImplCopyWith<
          _$VerifyMobileNumberResponseModelImpl>
      get copyWith => __$$VerifyMobileNumberResponseModelImplCopyWithImpl<
          _$VerifyMobileNumberResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMobileNumberResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyMobileNumberResponseModel
    implements VerifyMobileNumberResponseModel {
  const factory _VerifyMobileNumberResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final VerifyMobileNumberData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$VerifyMobileNumberResponseModelImpl;

  factory _VerifyMobileNumberResponseModel.fromJson(Map<String, dynamic> json) =
      _$VerifyMobileNumberResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  VerifyMobileNumberData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$VerifyMobileNumberResponseModelImplCopyWith<
          _$VerifyMobileNumberResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifyMobileNumberData _$VerifyMobileNumberDataFromJson(
    Map<String, dynamic> json) {
  return _VerifyMobileNumberData.fromJson(json);
}

/// @nodoc
mixin _$VerifyMobileNumberData {
  @JsonKey(name: "rb")
  VerifyMobileNumberResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMobileNumberDataCopyWith<VerifyMobileNumberData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMobileNumberDataCopyWith<$Res> {
  factory $VerifyMobileNumberDataCopyWith(VerifyMobileNumberData value,
          $Res Function(VerifyMobileNumberData) then) =
      _$VerifyMobileNumberDataCopyWithImpl<$Res, VerifyMobileNumberData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") VerifyMobileNumberResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $VerifyMobileNumberResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$VerifyMobileNumberDataCopyWithImpl<$Res,
        $Val extends VerifyMobileNumberData>
    implements $VerifyMobileNumberDataCopyWith<$Res> {
  _$VerifyMobileNumberDataCopyWithImpl(this._value, this._then);

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
              as VerifyMobileNumberResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyMobileNumberResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $VerifyMobileNumberResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyMobileNumberDataImplCopyWith<$Res>
    implements $VerifyMobileNumberDataCopyWith<$Res> {
  factory _$$VerifyMobileNumberDataImplCopyWith(
          _$VerifyMobileNumberDataImpl value,
          $Res Function(_$VerifyMobileNumberDataImpl) then) =
      __$$VerifyMobileNumberDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") VerifyMobileNumberResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $VerifyMobileNumberResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$VerifyMobileNumberDataImplCopyWithImpl<$Res>
    extends _$VerifyMobileNumberDataCopyWithImpl<$Res,
        _$VerifyMobileNumberDataImpl>
    implements _$$VerifyMobileNumberDataImplCopyWith<$Res> {
  __$$VerifyMobileNumberDataImplCopyWithImpl(
      _$VerifyMobileNumberDataImpl _value,
      $Res Function(_$VerifyMobileNumberDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$VerifyMobileNumberDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as VerifyMobileNumberResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyMobileNumberDataImpl implements _VerifyMobileNumberData {
  const _$VerifyMobileNumberDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$VerifyMobileNumberDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyMobileNumberDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final VerifyMobileNumberResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'VerifyMobileNumberData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMobileNumberDataImpl &&
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
  _$$VerifyMobileNumberDataImplCopyWith<_$VerifyMobileNumberDataImpl>
      get copyWith => __$$VerifyMobileNumberDataImplCopyWithImpl<
          _$VerifyMobileNumberDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMobileNumberDataImplToJson(
      this,
    );
  }
}

abstract class _VerifyMobileNumberData implements VerifyMobileNumberData {
  const factory _VerifyMobileNumberData(
      {@JsonKey(name: "rb") final VerifyMobileNumberResponseBody? responseBody,
      @JsonKey(name: "checkSum")
      final String? checkSum}) = _$VerifyMobileNumberDataImpl;

  factory _VerifyMobileNumberData.fromJson(Map<String, dynamic> json) =
      _$VerifyMobileNumberDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  VerifyMobileNumberResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$VerifyMobileNumberDataImplCopyWith<_$VerifyMobileNumberDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifyMobileNumberResponseBody _$VerifyMobileNumberResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _VerifyMobileNumberResponseBody.fromJson(json);
}

/// @nodoc
mixin _$VerifyMobileNumberResponseBody {
  @JsonKey(name: "refCode")
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenData")
  TokenData? get tokenData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMobileNumberResponseBodyCopyWith<VerifyMobileNumberResponseBody>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMobileNumberResponseBodyCopyWith<$Res> {
  factory $VerifyMobileNumberResponseBodyCopyWith(
          VerifyMobileNumberResponseBody value,
          $Res Function(VerifyMobileNumberResponseBody) then) =
      _$VerifyMobileNumberResponseBodyCopyWithImpl<$Res,
          VerifyMobileNumberResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$VerifyMobileNumberResponseBodyCopyWithImpl<$Res,
        $Val extends VerifyMobileNumberResponseBody>
    implements $VerifyMobileNumberResponseBodyCopyWith<$Res> {
  _$VerifyMobileNumberResponseBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$VerifyMobileNumberResponseBodyImplCopyWith<$Res>
    implements $VerifyMobileNumberResponseBodyCopyWith<$Res> {
  factory _$$VerifyMobileNumberResponseBodyImplCopyWith(
          _$VerifyMobileNumberResponseBodyImpl value,
          $Res Function(_$VerifyMobileNumberResponseBodyImpl) then) =
      __$$VerifyMobileNumberResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  @override
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$$VerifyMobileNumberResponseBodyImplCopyWithImpl<$Res>
    extends _$VerifyMobileNumberResponseBodyCopyWithImpl<$Res,
        _$VerifyMobileNumberResponseBodyImpl>
    implements _$$VerifyMobileNumberResponseBodyImplCopyWith<$Res> {
  __$$VerifyMobileNumberResponseBodyImplCopyWithImpl(
      _$VerifyMobileNumberResponseBodyImpl _value,
      $Res Function(_$VerifyMobileNumberResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCode = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_$VerifyMobileNumberResponseBodyImpl(
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
class _$VerifyMobileNumberResponseBodyImpl
    implements _VerifyMobileNumberResponseBody {
  const _$VerifyMobileNumberResponseBodyImpl(
      {@JsonKey(name: "refCode") this.refCode,
      @JsonKey(name: "tokenData") this.tokenData});

  factory _$VerifyMobileNumberResponseBodyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VerifyMobileNumberResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "refCode")
  final String? refCode;
  @override
  @JsonKey(name: "tokenData")
  final TokenData? tokenData;

  @override
  String toString() {
    return 'VerifyMobileNumberResponseBody(refCode: $refCode, tokenData: $tokenData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMobileNumberResponseBodyImpl &&
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
  _$$VerifyMobileNumberResponseBodyImplCopyWith<
          _$VerifyMobileNumberResponseBodyImpl>
      get copyWith => __$$VerifyMobileNumberResponseBodyImplCopyWithImpl<
          _$VerifyMobileNumberResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMobileNumberResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _VerifyMobileNumberResponseBody
    implements VerifyMobileNumberResponseBody {
  const factory _VerifyMobileNumberResponseBody(
          {@JsonKey(name: "refCode") final String? refCode,
          @JsonKey(name: "tokenData") final TokenData? tokenData}) =
      _$VerifyMobileNumberResponseBodyImpl;

  factory _VerifyMobileNumberResponseBody.fromJson(Map<String, dynamic> json) =
      _$VerifyMobileNumberResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "refCode")
  String? get refCode;
  @override
  @JsonKey(name: "tokenData")
  TokenData? get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$VerifyMobileNumberResponseBodyImplCopyWith<
          _$VerifyMobileNumberResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
