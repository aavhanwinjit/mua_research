// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_by_mpin_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginbyMpinResponseModel _$LoginbyMpinResponseModelFromJson(
    Map<String, dynamic> json) {
  return _LoginbyMpinResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginbyMpinResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  LoginByMpinData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginbyMpinResponseModelCopyWith<LoginbyMpinResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginbyMpinResponseModelCopyWith<$Res> {
  factory $LoginbyMpinResponseModelCopyWith(LoginbyMpinResponseModel value,
          $Res Function(LoginbyMpinResponseModel) then) =
      _$LoginbyMpinResponseModelCopyWithImpl<$Res, LoginbyMpinResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LoginByMpinData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $LoginByMpinDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$LoginbyMpinResponseModelCopyWithImpl<$Res,
        $Val extends LoginbyMpinResponseModel>
    implements $LoginbyMpinResponseModelCopyWith<$Res> {
  _$LoginbyMpinResponseModelCopyWithImpl(this._value, this._then);

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
              as LoginByMpinData?,
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
  $LoginByMpinDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $LoginByMpinDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$LoginbyMpinResponseModelImplCopyWith<$Res>
    implements $LoginbyMpinResponseModelCopyWith<$Res> {
  factory _$$LoginbyMpinResponseModelImplCopyWith(
          _$LoginbyMpinResponseModelImpl value,
          $Res Function(_$LoginbyMpinResponseModelImpl) then) =
      __$$LoginbyMpinResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LoginByMpinData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $LoginByMpinDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$LoginbyMpinResponseModelImplCopyWithImpl<$Res>
    extends _$LoginbyMpinResponseModelCopyWithImpl<$Res,
        _$LoginbyMpinResponseModelImpl>
    implements _$$LoginbyMpinResponseModelImplCopyWith<$Res> {
  __$$LoginbyMpinResponseModelImplCopyWithImpl(
      _$LoginbyMpinResponseModelImpl _value,
      $Res Function(_$LoginbyMpinResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$LoginbyMpinResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as LoginByMpinData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginbyMpinResponseModelImpl implements _LoginbyMpinResponseModel {
  const _$LoginbyMpinResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$LoginbyMpinResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginbyMpinResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final LoginByMpinData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'LoginbyMpinResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginbyMpinResponseModelImpl &&
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
  _$$LoginbyMpinResponseModelImplCopyWith<_$LoginbyMpinResponseModelImpl>
      get copyWith => __$$LoginbyMpinResponseModelImplCopyWithImpl<
          _$LoginbyMpinResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginbyMpinResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginbyMpinResponseModel implements LoginbyMpinResponseModel {
  const factory _LoginbyMpinResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final LoginByMpinData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$LoginbyMpinResponseModelImpl;

  factory _LoginbyMpinResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginbyMpinResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  LoginByMpinData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$LoginbyMpinResponseModelImplCopyWith<_$LoginbyMpinResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoginByMpinData _$LoginByMpinDataFromJson(Map<String, dynamic> json) {
  return _LoginByMpinData.fromJson(json);
}

/// @nodoc
mixin _$LoginByMpinData {
  @JsonKey(name: "rb")
  AgentLoginDetailsResponseModel? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginByMpinDataCopyWith<LoginByMpinData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginByMpinDataCopyWith<$Res> {
  factory $LoginByMpinDataCopyWith(
          LoginByMpinData value, $Res Function(LoginByMpinData) then) =
      _$LoginByMpinDataCopyWithImpl<$Res, LoginByMpinData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentLoginDetailsResponseModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$LoginByMpinDataCopyWithImpl<$Res, $Val extends LoginByMpinData>
    implements $LoginByMpinDataCopyWith<$Res> {
  _$LoginByMpinDataCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginByMpinDataImplCopyWith<$Res>
    implements $LoginByMpinDataCopyWith<$Res> {
  factory _$$LoginByMpinDataImplCopyWith(_$LoginByMpinDataImpl value,
          $Res Function(_$LoginByMpinDataImpl) then) =
      __$$LoginByMpinDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentLoginDetailsResponseModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$LoginByMpinDataImplCopyWithImpl<$Res>
    extends _$LoginByMpinDataCopyWithImpl<$Res, _$LoginByMpinDataImpl>
    implements _$$LoginByMpinDataImplCopyWith<$Res> {
  __$$LoginByMpinDataImplCopyWithImpl(
      _$LoginByMpinDataImpl _value, $Res Function(_$LoginByMpinDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$LoginByMpinDataImpl(
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
class _$LoginByMpinDataImpl implements _LoginByMpinData {
  const _$LoginByMpinDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$LoginByMpinDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginByMpinDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentLoginDetailsResponseModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'LoginByMpinData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginByMpinDataImpl &&
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
  _$$LoginByMpinDataImplCopyWith<_$LoginByMpinDataImpl> get copyWith =>
      __$$LoginByMpinDataImplCopyWithImpl<_$LoginByMpinDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginByMpinDataImplToJson(
      this,
    );
  }
}

abstract class _LoginByMpinData implements LoginByMpinData {
  const factory _LoginByMpinData(
      {@JsonKey(name: "rb") final AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum")
      final String? checkSum}) = _$LoginByMpinDataImpl;

  factory _LoginByMpinData.fromJson(Map<String, dynamic> json) =
      _$LoginByMpinDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentLoginDetailsResponseModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$LoginByMpinDataImplCopyWith<_$LoginByMpinDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
