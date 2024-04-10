// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_customer_information_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCustomerInformationResponseModel
    _$AddCustomerInformationResponseModelFromJson(Map<String, dynamic> json) {
  return _AddCustomerInformationResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddCustomerInformationResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  AddCustomerInformationData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCustomerInformationResponseModelCopyWith<
          AddCustomerInformationResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerInformationResponseModelCopyWith<$Res> {
  factory $AddCustomerInformationResponseModelCopyWith(
          AddCustomerInformationResponseModel value,
          $Res Function(AddCustomerInformationResponseModel) then) =
      _$AddCustomerInformationResponseModelCopyWithImpl<$Res,
          AddCustomerInformationResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") AddCustomerInformationData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $AddCustomerInformationDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$AddCustomerInformationResponseModelCopyWithImpl<$Res,
        $Val extends AddCustomerInformationResponseModel>
    implements $AddCustomerInformationResponseModelCopyWith<$Res> {
  _$AddCustomerInformationResponseModelCopyWithImpl(this._value, this._then);

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
              as AddCustomerInformationData?,
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
  $AddCustomerInformationDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $AddCustomerInformationDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$AddCustomerInformationResponseModelImplCopyWith<$Res>
    implements $AddCustomerInformationResponseModelCopyWith<$Res> {
  factory _$$AddCustomerInformationResponseModelImplCopyWith(
          _$AddCustomerInformationResponseModelImpl value,
          $Res Function(_$AddCustomerInformationResponseModelImpl) then) =
      __$$AddCustomerInformationResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") AddCustomerInformationData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $AddCustomerInformationDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$AddCustomerInformationResponseModelImplCopyWithImpl<$Res>
    extends _$AddCustomerInformationResponseModelCopyWithImpl<$Res,
        _$AddCustomerInformationResponseModelImpl>
    implements _$$AddCustomerInformationResponseModelImplCopyWith<$Res> {
  __$$AddCustomerInformationResponseModelImplCopyWithImpl(
      _$AddCustomerInformationResponseModelImpl _value,
      $Res Function(_$AddCustomerInformationResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$AddCustomerInformationResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AddCustomerInformationData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCustomerInformationResponseModelImpl
    implements _AddCustomerInformationResponseModel {
  const _$AddCustomerInformationResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$AddCustomerInformationResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddCustomerInformationResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final AddCustomerInformationData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'AddCustomerInformationResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCustomerInformationResponseModelImpl &&
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
  _$$AddCustomerInformationResponseModelImplCopyWith<
          _$AddCustomerInformationResponseModelImpl>
      get copyWith => __$$AddCustomerInformationResponseModelImplCopyWithImpl<
          _$AddCustomerInformationResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCustomerInformationResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddCustomerInformationResponseModel
    implements AddCustomerInformationResponseModel {
  const factory _AddCustomerInformationResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final AddCustomerInformationData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$AddCustomerInformationResponseModelImpl;

  factory _AddCustomerInformationResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$AddCustomerInformationResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  AddCustomerInformationData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$AddCustomerInformationResponseModelImplCopyWith<
          _$AddCustomerInformationResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AddCustomerInformationData _$AddCustomerInformationDataFromJson(
    Map<String, dynamic> json) {
  return _AddCustomerInformationData.fromJson(json);
}

/// @nodoc
mixin _$AddCustomerInformationData {
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddCustomerInformationDataCopyWith<AddCustomerInformationData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCustomerInformationDataCopyWith<$Res> {
  factory $AddCustomerInformationDataCopyWith(AddCustomerInformationData value,
          $Res Function(AddCustomerInformationData) then) =
      _$AddCustomerInformationDataCopyWithImpl<$Res,
          AddCustomerInformationData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$AddCustomerInformationDataCopyWithImpl<$Res,
        $Val extends AddCustomerInformationData>
    implements $AddCustomerInformationDataCopyWith<$Res> {
  _$AddCustomerInformationDataCopyWithImpl(this._value, this._then);

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
abstract class _$$AddCustomerInformationDataImplCopyWith<$Res>
    implements $AddCustomerInformationDataCopyWith<$Res> {
  factory _$$AddCustomerInformationDataImplCopyWith(
          _$AddCustomerInformationDataImpl value,
          $Res Function(_$AddCustomerInformationDataImpl) then) =
      __$$AddCustomerInformationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$AddCustomerInformationDataImplCopyWithImpl<$Res>
    extends _$AddCustomerInformationDataCopyWithImpl<$Res,
        _$AddCustomerInformationDataImpl>
    implements _$$AddCustomerInformationDataImplCopyWith<$Res> {
  __$$AddCustomerInformationDataImplCopyWithImpl(
      _$AddCustomerInformationDataImpl _value,
      $Res Function(_$AddCustomerInformationDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$AddCustomerInformationDataImpl(
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
class _$AddCustomerInformationDataImpl implements _AddCustomerInformationData {
  const _$AddCustomerInformationDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$AddCustomerInformationDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AddCustomerInformationDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentApplicationModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'AddCustomerInformationData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCustomerInformationDataImpl &&
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
  _$$AddCustomerInformationDataImplCopyWith<_$AddCustomerInformationDataImpl>
      get copyWith => __$$AddCustomerInformationDataImplCopyWithImpl<
          _$AddCustomerInformationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCustomerInformationDataImplToJson(
      this,
    );
  }
}

abstract class _AddCustomerInformationData
    implements AddCustomerInformationData {
  const factory _AddCustomerInformationData(
          {@JsonKey(name: "rb") final AgentApplicationModel? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$AddCustomerInformationDataImpl;

  factory _AddCustomerInformationData.fromJson(Map<String, dynamic> json) =
      _$AddCustomerInformationDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$AddCustomerInformationDataImplCopyWith<_$AddCustomerInformationDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
