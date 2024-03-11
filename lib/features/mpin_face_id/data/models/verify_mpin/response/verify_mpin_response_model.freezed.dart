// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_mpin_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerifyMPINResponseModel _$VerifyMPINResponseModelFromJson(
    Map<String, dynamic> json) {
  return _VerifyMPINResponseModel.fromJson(json);
}

/// @nodoc
mixin _$VerifyMPINResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  VerifyMPINData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMPINResponseModelCopyWith<VerifyMPINResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMPINResponseModelCopyWith<$Res> {
  factory $VerifyMPINResponseModelCopyWith(VerifyMPINResponseModel value,
          $Res Function(VerifyMPINResponseModel) then) =
      _$VerifyMPINResponseModelCopyWithImpl<$Res, VerifyMPINResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") VerifyMPINData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $VerifyMPINDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$VerifyMPINResponseModelCopyWithImpl<$Res,
        $Val extends VerifyMPINResponseModel>
    implements $VerifyMPINResponseModelCopyWith<$Res> {
  _$VerifyMPINResponseModelCopyWithImpl(this._value, this._then);

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
              as VerifyMPINData?,
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
  $VerifyMPINDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $VerifyMPINDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$VerifyMPINResponseModelImplCopyWith<$Res>
    implements $VerifyMPINResponseModelCopyWith<$Res> {
  factory _$$VerifyMPINResponseModelImplCopyWith(
          _$VerifyMPINResponseModelImpl value,
          $Res Function(_$VerifyMPINResponseModelImpl) then) =
      __$$VerifyMPINResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") VerifyMPINData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $VerifyMPINDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$VerifyMPINResponseModelImplCopyWithImpl<$Res>
    extends _$VerifyMPINResponseModelCopyWithImpl<$Res,
        _$VerifyMPINResponseModelImpl>
    implements _$$VerifyMPINResponseModelImplCopyWith<$Res> {
  __$$VerifyMPINResponseModelImplCopyWithImpl(
      _$VerifyMPINResponseModelImpl _value,
      $Res Function(_$VerifyMPINResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$VerifyMPINResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as VerifyMPINData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyMPINResponseModelImpl implements _VerifyMPINResponseModel {
  const _$VerifyMPINResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$VerifyMPINResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyMPINResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final VerifyMPINData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'VerifyMPINResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMPINResponseModelImpl &&
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
  _$$VerifyMPINResponseModelImplCopyWith<_$VerifyMPINResponseModelImpl>
      get copyWith => __$$VerifyMPINResponseModelImplCopyWithImpl<
          _$VerifyMPINResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMPINResponseModelImplToJson(
      this,
    );
  }
}

abstract class _VerifyMPINResponseModel implements VerifyMPINResponseModel {
  const factory _VerifyMPINResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final VerifyMPINData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$VerifyMPINResponseModelImpl;

  factory _VerifyMPINResponseModel.fromJson(Map<String, dynamic> json) =
      _$VerifyMPINResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  VerifyMPINData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$VerifyMPINResponseModelImplCopyWith<_$VerifyMPINResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

VerifyMPINData _$VerifyMPINDataFromJson(Map<String, dynamic> json) {
  return _VerifyMPINData.fromJson(json);
}

/// @nodoc
mixin _$VerifyMPINData {
  @JsonKey(name: "rb")
  VerifyMPINResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMPINDataCopyWith<VerifyMPINData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMPINDataCopyWith<$Res> {
  factory $VerifyMPINDataCopyWith(
          VerifyMPINData value, $Res Function(VerifyMPINData) then) =
      _$VerifyMPINDataCopyWithImpl<$Res, VerifyMPINData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") VerifyMPINResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $VerifyMPINResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$VerifyMPINDataCopyWithImpl<$Res, $Val extends VerifyMPINData>
    implements $VerifyMPINDataCopyWith<$Res> {
  _$VerifyMPINDataCopyWithImpl(this._value, this._then);

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
              as VerifyMPINResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyMPINResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $VerifyMPINResponseBodyCopyWith<$Res>(_value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VerifyMPINDataImplCopyWith<$Res>
    implements $VerifyMPINDataCopyWith<$Res> {
  factory _$$VerifyMPINDataImplCopyWith(_$VerifyMPINDataImpl value,
          $Res Function(_$VerifyMPINDataImpl) then) =
      __$$VerifyMPINDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") VerifyMPINResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $VerifyMPINResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$VerifyMPINDataImplCopyWithImpl<$Res>
    extends _$VerifyMPINDataCopyWithImpl<$Res, _$VerifyMPINDataImpl>
    implements _$$VerifyMPINDataImplCopyWith<$Res> {
  __$$VerifyMPINDataImplCopyWithImpl(
      _$VerifyMPINDataImpl _value, $Res Function(_$VerifyMPINDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$VerifyMPINDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as VerifyMPINResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerifyMPINDataImpl implements _VerifyMPINData {
  const _$VerifyMPINDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$VerifyMPINDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyMPINDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final VerifyMPINResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'VerifyMPINData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMPINDataImpl &&
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
  _$$VerifyMPINDataImplCopyWith<_$VerifyMPINDataImpl> get copyWith =>
      __$$VerifyMPINDataImplCopyWithImpl<_$VerifyMPINDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMPINDataImplToJson(
      this,
    );
  }
}

abstract class _VerifyMPINData implements VerifyMPINData {
  const factory _VerifyMPINData(
          {@JsonKey(name: "rb") final VerifyMPINResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$VerifyMPINDataImpl;

  factory _VerifyMPINData.fromJson(Map<String, dynamic> json) =
      _$VerifyMPINDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  VerifyMPINResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$VerifyMPINDataImplCopyWith<_$VerifyMPINDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyMPINResponseBody _$VerifyMPINResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _VerifyMPINResponseBody.fromJson(json);
}

/// @nodoc
mixin _$VerifyMPINResponseBody {
  @JsonKey(name: "refCode")
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenData")
  TokenData? get tokenData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyMPINResponseBodyCopyWith<VerifyMPINResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyMPINResponseBodyCopyWith<$Res> {
  factory $VerifyMPINResponseBodyCopyWith(VerifyMPINResponseBody value,
          $Res Function(VerifyMPINResponseBody) then) =
      _$VerifyMPINResponseBodyCopyWithImpl<$Res, VerifyMPINResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$VerifyMPINResponseBodyCopyWithImpl<$Res,
        $Val extends VerifyMPINResponseBody>
    implements $VerifyMPINResponseBodyCopyWith<$Res> {
  _$VerifyMPINResponseBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$VerifyMPINResponseBodyImplCopyWith<$Res>
    implements $VerifyMPINResponseBodyCopyWith<$Res> {
  factory _$$VerifyMPINResponseBodyImplCopyWith(
          _$VerifyMPINResponseBodyImpl value,
          $Res Function(_$VerifyMPINResponseBodyImpl) then) =
      __$$VerifyMPINResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  @override
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$$VerifyMPINResponseBodyImplCopyWithImpl<$Res>
    extends _$VerifyMPINResponseBodyCopyWithImpl<$Res,
        _$VerifyMPINResponseBodyImpl>
    implements _$$VerifyMPINResponseBodyImplCopyWith<$Res> {
  __$$VerifyMPINResponseBodyImplCopyWithImpl(
      _$VerifyMPINResponseBodyImpl _value,
      $Res Function(_$VerifyMPINResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCode = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_$VerifyMPINResponseBodyImpl(
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
class _$VerifyMPINResponseBodyImpl implements _VerifyMPINResponseBody {
  const _$VerifyMPINResponseBodyImpl(
      {@JsonKey(name: "refCode") this.refCode,
      @JsonKey(name: "tokenData") this.tokenData});

  factory _$VerifyMPINResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifyMPINResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "refCode")
  final String? refCode;
  @override
  @JsonKey(name: "tokenData")
  final TokenData? tokenData;

  @override
  String toString() {
    return 'VerifyMPINResponseBody(refCode: $refCode, tokenData: $tokenData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyMPINResponseBodyImpl &&
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
  _$$VerifyMPINResponseBodyImplCopyWith<_$VerifyMPINResponseBodyImpl>
      get copyWith => __$$VerifyMPINResponseBodyImplCopyWithImpl<
          _$VerifyMPINResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifyMPINResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _VerifyMPINResponseBody implements VerifyMPINResponseBody {
  const factory _VerifyMPINResponseBody(
          {@JsonKey(name: "refCode") final String? refCode,
          @JsonKey(name: "tokenData") final TokenData? tokenData}) =
      _$VerifyMPINResponseBodyImpl;

  factory _VerifyMPINResponseBody.fromJson(Map<String, dynamic> json) =
      _$VerifyMPINResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "refCode")
  String? get refCode;
  @override
  @JsonKey(name: "tokenData")
  TokenData? get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$VerifyMPINResponseBodyImplCopyWith<_$VerifyMPINResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
