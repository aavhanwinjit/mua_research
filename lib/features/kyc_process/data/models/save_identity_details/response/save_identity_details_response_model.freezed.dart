// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_identity_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveIdentityDetailsResponseModel _$SaveIdentityDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SaveIdentityDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SaveIdentityDetailsResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SaveIdentityDetailsData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveIdentityDetailsResponseModelCopyWith<SaveIdentityDetailsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveIdentityDetailsResponseModelCopyWith<$Res> {
  factory $SaveIdentityDetailsResponseModelCopyWith(
          SaveIdentityDetailsResponseModel value,
          $Res Function(SaveIdentityDetailsResponseModel) then) =
      _$SaveIdentityDetailsResponseModelCopyWithImpl<$Res,
          SaveIdentityDetailsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SaveIdentityDetailsData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SaveIdentityDetailsDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$SaveIdentityDetailsResponseModelCopyWithImpl<$Res,
        $Val extends SaveIdentityDetailsResponseModel>
    implements $SaveIdentityDetailsResponseModelCopyWith<$Res> {
  _$SaveIdentityDetailsResponseModelCopyWithImpl(this._value, this._then);

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
              as SaveIdentityDetailsData?,
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
  $SaveIdentityDetailsDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SaveIdentityDetailsDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$SaveIdentityDetailsResponseModelImplCopyWith<$Res>
    implements $SaveIdentityDetailsResponseModelCopyWith<$Res> {
  factory _$$SaveIdentityDetailsResponseModelImplCopyWith(
          _$SaveIdentityDetailsResponseModelImpl value,
          $Res Function(_$SaveIdentityDetailsResponseModelImpl) then) =
      __$$SaveIdentityDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SaveIdentityDetailsData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SaveIdentityDetailsDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SaveIdentityDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$SaveIdentityDetailsResponseModelCopyWithImpl<$Res,
        _$SaveIdentityDetailsResponseModelImpl>
    implements _$$SaveIdentityDetailsResponseModelImplCopyWith<$Res> {
  __$$SaveIdentityDetailsResponseModelImplCopyWithImpl(
      _$SaveIdentityDetailsResponseModelImpl _value,
      $Res Function(_$SaveIdentityDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SaveIdentityDetailsResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SaveIdentityDetailsData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveIdentityDetailsResponseModelImpl
    implements _SaveIdentityDetailsResponseModel {
  const _$SaveIdentityDetailsResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SaveIdentityDetailsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveIdentityDetailsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SaveIdentityDetailsData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SaveIdentityDetailsResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveIdentityDetailsResponseModelImpl &&
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
  _$$SaveIdentityDetailsResponseModelImplCopyWith<
          _$SaveIdentityDetailsResponseModelImpl>
      get copyWith => __$$SaveIdentityDetailsResponseModelImplCopyWithImpl<
          _$SaveIdentityDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveIdentityDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SaveIdentityDetailsResponseModel
    implements SaveIdentityDetailsResponseModel {
  const factory _SaveIdentityDetailsResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SaveIdentityDetailsData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SaveIdentityDetailsResponseModelImpl;

  factory _SaveIdentityDetailsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$SaveIdentityDetailsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SaveIdentityDetailsData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SaveIdentityDetailsResponseModelImplCopyWith<
          _$SaveIdentityDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SaveIdentityDetailsData _$SaveIdentityDetailsDataFromJson(
    Map<String, dynamic> json) {
  return _SaveIdentityDetailsData.fromJson(json);
}

/// @nodoc
mixin _$SaveIdentityDetailsData {
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveIdentityDetailsDataCopyWith<SaveIdentityDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveIdentityDetailsDataCopyWith<$Res> {
  factory $SaveIdentityDetailsDataCopyWith(SaveIdentityDetailsData value,
          $Res Function(SaveIdentityDetailsData) then) =
      _$SaveIdentityDetailsDataCopyWithImpl<$Res, SaveIdentityDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SaveIdentityDetailsDataCopyWithImpl<$Res,
        $Val extends SaveIdentityDetailsData>
    implements $SaveIdentityDetailsDataCopyWith<$Res> {
  _$SaveIdentityDetailsDataCopyWithImpl(this._value, this._then);

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
              as AgentApplicationModel?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentApplicationModelCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $AgentApplicationModelCopyWith<$Res>(_value.responseBody!, (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveIdentityDetailsDataImplCopyWith<$Res>
    implements $SaveIdentityDetailsDataCopyWith<$Res> {
  factory _$$SaveIdentityDetailsDataImplCopyWith(
          _$SaveIdentityDetailsDataImpl value,
          $Res Function(_$SaveIdentityDetailsDataImpl) then) =
      __$$SaveIdentityDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SaveIdentityDetailsDataImplCopyWithImpl<$Res>
    extends _$SaveIdentityDetailsDataCopyWithImpl<$Res,
        _$SaveIdentityDetailsDataImpl>
    implements _$$SaveIdentityDetailsDataImplCopyWith<$Res> {
  __$$SaveIdentityDetailsDataImplCopyWithImpl(
      _$SaveIdentityDetailsDataImpl _value,
      $Res Function(_$SaveIdentityDetailsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SaveIdentityDetailsDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as AgentApplicationModel?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveIdentityDetailsDataImpl implements _SaveIdentityDetailsData {
  const _$SaveIdentityDetailsDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SaveIdentityDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveIdentityDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentApplicationModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SaveIdentityDetailsData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveIdentityDetailsDataImpl &&
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
  _$$SaveIdentityDetailsDataImplCopyWith<_$SaveIdentityDetailsDataImpl>
      get copyWith => __$$SaveIdentityDetailsDataImplCopyWithImpl<
          _$SaveIdentityDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveIdentityDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _SaveIdentityDetailsData implements SaveIdentityDetailsData {
  const factory _SaveIdentityDetailsData(
          {@JsonKey(name: "rb") final AgentApplicationModel? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$SaveIdentityDetailsDataImpl;

  factory _SaveIdentityDetailsData.fromJson(Map<String, dynamic> json) =
      _$SaveIdentityDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SaveIdentityDetailsDataImplCopyWith<_$SaveIdentityDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
