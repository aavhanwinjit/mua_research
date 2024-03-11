// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_mpin_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangeMPINResponseModel _$ChangeMPINResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ChangeMPINResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ChangeMPINResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  ChangeMPINData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeMPINResponseModelCopyWith<ChangeMPINResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeMPINResponseModelCopyWith<$Res> {
  factory $ChangeMPINResponseModelCopyWith(ChangeMPINResponseModel value,
          $Res Function(ChangeMPINResponseModel) then) =
      _$ChangeMPINResponseModelCopyWithImpl<$Res, ChangeMPINResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ChangeMPINData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $ChangeMPINDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$ChangeMPINResponseModelCopyWithImpl<$Res,
        $Val extends ChangeMPINResponseModel>
    implements $ChangeMPINResponseModelCopyWith<$Res> {
  _$ChangeMPINResponseModelCopyWithImpl(this._value, this._then);

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
              as ChangeMPINData?,
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
  $ChangeMPINDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $ChangeMPINDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$ChangeMPINResponseModelImplCopyWith<$Res>
    implements $ChangeMPINResponseModelCopyWith<$Res> {
  factory _$$ChangeMPINResponseModelImplCopyWith(
          _$ChangeMPINResponseModelImpl value,
          $Res Function(_$ChangeMPINResponseModelImpl) then) =
      __$$ChangeMPINResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ChangeMPINData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $ChangeMPINDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$ChangeMPINResponseModelImplCopyWithImpl<$Res>
    extends _$ChangeMPINResponseModelCopyWithImpl<$Res,
        _$ChangeMPINResponseModelImpl>
    implements _$$ChangeMPINResponseModelImplCopyWith<$Res> {
  __$$ChangeMPINResponseModelImplCopyWithImpl(
      _$ChangeMPINResponseModelImpl _value,
      $Res Function(_$ChangeMPINResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ChangeMPINResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ChangeMPINData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeMPINResponseModelImpl implements _ChangeMPINResponseModel {
  const _$ChangeMPINResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$ChangeMPINResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeMPINResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final ChangeMPINData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'ChangeMPINResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMPINResponseModelImpl &&
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
  _$$ChangeMPINResponseModelImplCopyWith<_$ChangeMPINResponseModelImpl>
      get copyWith => __$$ChangeMPINResponseModelImplCopyWithImpl<
          _$ChangeMPINResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeMPINResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ChangeMPINResponseModel implements ChangeMPINResponseModel {
  const factory _ChangeMPINResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final ChangeMPINData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$ChangeMPINResponseModelImpl;

  factory _ChangeMPINResponseModel.fromJson(Map<String, dynamic> json) =
      _$ChangeMPINResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  ChangeMPINData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$ChangeMPINResponseModelImplCopyWith<_$ChangeMPINResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChangeMPINData _$ChangeMPINDataFromJson(Map<String, dynamic> json) {
  return _ChangeMPINData.fromJson(json);
}

/// @nodoc
mixin _$ChangeMPINData {
  @JsonKey(name: "rb")
  ChangeMPINResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeMPINDataCopyWith<ChangeMPINData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeMPINDataCopyWith<$Res> {
  factory $ChangeMPINDataCopyWith(
          ChangeMPINData value, $Res Function(ChangeMPINData) then) =
      _$ChangeMPINDataCopyWithImpl<$Res, ChangeMPINData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ChangeMPINResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $ChangeMPINResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$ChangeMPINDataCopyWithImpl<$Res, $Val extends ChangeMPINData>
    implements $ChangeMPINDataCopyWith<$Res> {
  _$ChangeMPINDataCopyWithImpl(this._value, this._then);

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
              as ChangeMPINResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChangeMPINResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $ChangeMPINResponseBodyCopyWith<$Res>(_value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeMPINDataImplCopyWith<$Res>
    implements $ChangeMPINDataCopyWith<$Res> {
  factory _$$ChangeMPINDataImplCopyWith(_$ChangeMPINDataImpl value,
          $Res Function(_$ChangeMPINDataImpl) then) =
      __$$ChangeMPINDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") ChangeMPINResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $ChangeMPINResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$ChangeMPINDataImplCopyWithImpl<$Res>
    extends _$ChangeMPINDataCopyWithImpl<$Res, _$ChangeMPINDataImpl>
    implements _$$ChangeMPINDataImplCopyWith<$Res> {
  __$$ChangeMPINDataImplCopyWithImpl(
      _$ChangeMPINDataImpl _value, $Res Function(_$ChangeMPINDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$ChangeMPINDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as ChangeMPINResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangeMPINDataImpl implements _ChangeMPINData {
  const _$ChangeMPINDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$ChangeMPINDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeMPINDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final ChangeMPINResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'ChangeMPINData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMPINDataImpl &&
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
  _$$ChangeMPINDataImplCopyWith<_$ChangeMPINDataImpl> get copyWith =>
      __$$ChangeMPINDataImplCopyWithImpl<_$ChangeMPINDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeMPINDataImplToJson(
      this,
    );
  }
}

abstract class _ChangeMPINData implements ChangeMPINData {
  const factory _ChangeMPINData(
          {@JsonKey(name: "rb") final ChangeMPINResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$ChangeMPINDataImpl;

  factory _ChangeMPINData.fromJson(Map<String, dynamic> json) =
      _$ChangeMPINDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  ChangeMPINResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$ChangeMPINDataImplCopyWith<_$ChangeMPINDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChangeMPINResponseBody _$ChangeMPINResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _ChangeMPINResponseBody.fromJson(json);
}

/// @nodoc
mixin _$ChangeMPINResponseBody {
  @JsonKey(name: "refCode")
  String? get refCode => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenData")
  TokenData? get tokenData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangeMPINResponseBodyCopyWith<ChangeMPINResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeMPINResponseBodyCopyWith<$Res> {
  factory $ChangeMPINResponseBodyCopyWith(ChangeMPINResponseBody value,
          $Res Function(ChangeMPINResponseBody) then) =
      _$ChangeMPINResponseBodyCopyWithImpl<$Res, ChangeMPINResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$ChangeMPINResponseBodyCopyWithImpl<$Res,
        $Val extends ChangeMPINResponseBody>
    implements $ChangeMPINResponseBodyCopyWith<$Res> {
  _$ChangeMPINResponseBodyCopyWithImpl(this._value, this._then);

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
abstract class _$$ChangeMPINResponseBodyImplCopyWith<$Res>
    implements $ChangeMPINResponseBodyCopyWith<$Res> {
  factory _$$ChangeMPINResponseBodyImplCopyWith(
          _$ChangeMPINResponseBodyImpl value,
          $Res Function(_$ChangeMPINResponseBodyImpl) then) =
      __$$ChangeMPINResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "refCode") String? refCode,
      @JsonKey(name: "tokenData") TokenData? tokenData});

  @override
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$$ChangeMPINResponseBodyImplCopyWithImpl<$Res>
    extends _$ChangeMPINResponseBodyCopyWithImpl<$Res,
        _$ChangeMPINResponseBodyImpl>
    implements _$$ChangeMPINResponseBodyImplCopyWith<$Res> {
  __$$ChangeMPINResponseBodyImplCopyWithImpl(
      _$ChangeMPINResponseBodyImpl _value,
      $Res Function(_$ChangeMPINResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refCode = freezed,
    Object? tokenData = freezed,
  }) {
    return _then(_$ChangeMPINResponseBodyImpl(
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
class _$ChangeMPINResponseBodyImpl implements _ChangeMPINResponseBody {
  const _$ChangeMPINResponseBodyImpl(
      {@JsonKey(name: "refCode") this.refCode,
      @JsonKey(name: "tokenData") this.tokenData});

  factory _$ChangeMPINResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangeMPINResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "refCode")
  final String? refCode;
  @override
  @JsonKey(name: "tokenData")
  final TokenData? tokenData;

  @override
  String toString() {
    return 'ChangeMPINResponseBody(refCode: $refCode, tokenData: $tokenData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeMPINResponseBodyImpl &&
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
  _$$ChangeMPINResponseBodyImplCopyWith<_$ChangeMPINResponseBodyImpl>
      get copyWith => __$$ChangeMPINResponseBodyImplCopyWithImpl<
          _$ChangeMPINResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangeMPINResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _ChangeMPINResponseBody implements ChangeMPINResponseBody {
  const factory _ChangeMPINResponseBody(
          {@JsonKey(name: "refCode") final String? refCode,
          @JsonKey(name: "tokenData") final TokenData? tokenData}) =
      _$ChangeMPINResponseBodyImpl;

  factory _ChangeMPINResponseBody.fromJson(Map<String, dynamic> json) =
      _$ChangeMPINResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "refCode")
  String? get refCode;
  @override
  @JsonKey(name: "tokenData")
  TokenData? get tokenData;
  @override
  @JsonKey(ignore: true)
  _$$ChangeMPINResponseBodyImplCopyWith<_$ChangeMPINResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
