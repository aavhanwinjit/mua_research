// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_by_fp_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginByFpResponseModel _$LoginByFpResponseModelFromJson(
    Map<String, dynamic> json) {
  return _LoginByFpResponseModel.fromJson(json);
}

/// @nodoc
mixin _$LoginByFpResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  LoginByFPData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginByFpResponseModelCopyWith<LoginByFpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginByFpResponseModelCopyWith<$Res> {
  factory $LoginByFpResponseModelCopyWith(LoginByFpResponseModel value,
          $Res Function(LoginByFpResponseModel) then) =
      _$LoginByFpResponseModelCopyWithImpl<$Res, LoginByFpResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LoginByFPData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $LoginByFPDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$LoginByFpResponseModelCopyWithImpl<$Res,
        $Val extends LoginByFpResponseModel>
    implements $LoginByFpResponseModelCopyWith<$Res> {
  _$LoginByFpResponseModelCopyWithImpl(this._value, this._then);

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
              as LoginByFPData?,
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
  $LoginByFPDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $LoginByFPDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$LoginByFpResponseModelImplCopyWith<$Res>
    implements $LoginByFpResponseModelCopyWith<$Res> {
  factory _$$LoginByFpResponseModelImplCopyWith(
          _$LoginByFpResponseModelImpl value,
          $Res Function(_$LoginByFpResponseModelImpl) then) =
      __$$LoginByFpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LoginByFPData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $LoginByFPDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$LoginByFpResponseModelImplCopyWithImpl<$Res>
    extends _$LoginByFpResponseModelCopyWithImpl<$Res,
        _$LoginByFpResponseModelImpl>
    implements _$$LoginByFpResponseModelImplCopyWith<$Res> {
  __$$LoginByFpResponseModelImplCopyWithImpl(
      _$LoginByFpResponseModelImpl _value,
      $Res Function(_$LoginByFpResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$LoginByFpResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as LoginByFPData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginByFpResponseModelImpl implements _LoginByFpResponseModel {
  const _$LoginByFpResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$LoginByFpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginByFpResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final LoginByFPData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'LoginByFpResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginByFpResponseModelImpl &&
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
  _$$LoginByFpResponseModelImplCopyWith<_$LoginByFpResponseModelImpl>
      get copyWith => __$$LoginByFpResponseModelImplCopyWithImpl<
          _$LoginByFpResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginByFpResponseModelImplToJson(
      this,
    );
  }
}

abstract class _LoginByFpResponseModel implements LoginByFpResponseModel {
  const factory _LoginByFpResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final LoginByFPData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$LoginByFpResponseModelImpl;

  factory _LoginByFpResponseModel.fromJson(Map<String, dynamic> json) =
      _$LoginByFpResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  LoginByFPData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$LoginByFpResponseModelImplCopyWith<_$LoginByFpResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LoginByFPData _$LoginByFPDataFromJson(Map<String, dynamic> json) {
  return _LoginByFPData.fromJson(json);
}

/// @nodoc
mixin _$LoginByFPData {
  @JsonKey(name: "rb")
  AgentLoginDetailsResponseModel? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginByFPDataCopyWith<LoginByFPData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginByFPDataCopyWith<$Res> {
  factory $LoginByFPDataCopyWith(
          LoginByFPData value, $Res Function(LoginByFPData) then) =
      _$LoginByFPDataCopyWithImpl<$Res, LoginByFPData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentLoginDetailsResponseModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$LoginByFPDataCopyWithImpl<$Res, $Val extends LoginByFPData>
    implements $LoginByFPDataCopyWith<$Res> {
  _$LoginByFPDataCopyWithImpl(this._value, this._then);

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
abstract class _$$LoginByFPDataImplCopyWith<$Res>
    implements $LoginByFPDataCopyWith<$Res> {
  factory _$$LoginByFPDataImplCopyWith(
          _$LoginByFPDataImpl value, $Res Function(_$LoginByFPDataImpl) then) =
      __$$LoginByFPDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentLoginDetailsResponseModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$LoginByFPDataImplCopyWithImpl<$Res>
    extends _$LoginByFPDataCopyWithImpl<$Res, _$LoginByFPDataImpl>
    implements _$$LoginByFPDataImplCopyWith<$Res> {
  __$$LoginByFPDataImplCopyWithImpl(
      _$LoginByFPDataImpl _value, $Res Function(_$LoginByFPDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$LoginByFPDataImpl(
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
class _$LoginByFPDataImpl implements _LoginByFPData {
  const _$LoginByFPDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$LoginByFPDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginByFPDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentLoginDetailsResponseModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'LoginByFPData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginByFPDataImpl &&
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
  _$$LoginByFPDataImplCopyWith<_$LoginByFPDataImpl> get copyWith =>
      __$$LoginByFPDataImplCopyWithImpl<_$LoginByFPDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginByFPDataImplToJson(
      this,
    );
  }
}

abstract class _LoginByFPData implements LoginByFPData {
  const factory _LoginByFPData(
      {@JsonKey(name: "rb") final AgentLoginDetailsResponseModel? responseBody,
      @JsonKey(name: "checkSum") final String? checkSum}) = _$LoginByFPDataImpl;

  factory _LoginByFPData.fromJson(Map<String, dynamic> json) =
      _$LoginByFPDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentLoginDetailsResponseModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$LoginByFPDataImplCopyWith<_$LoginByFPDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
