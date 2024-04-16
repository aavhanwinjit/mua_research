// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_motor_insurance_documents_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveMotorInsuranceDocumentsResponseModel
    _$SaveMotorInsuranceDocumentsResponseModelFromJson(
        Map<String, dynamic> json) {
  return _SaveMotorInsuranceDocumentsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SaveMotorInsuranceDocumentsResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SaveMotorInsuranceDocumentsData? get body =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveMotorInsuranceDocumentsResponseModelCopyWith<
          SaveMotorInsuranceDocumentsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveMotorInsuranceDocumentsResponseModelCopyWith<$Res> {
  factory $SaveMotorInsuranceDocumentsResponseModelCopyWith(
          SaveMotorInsuranceDocumentsResponseModel value,
          $Res Function(SaveMotorInsuranceDocumentsResponseModel) then) =
      _$SaveMotorInsuranceDocumentsResponseModelCopyWithImpl<$Res,
          SaveMotorInsuranceDocumentsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SaveMotorInsuranceDocumentsData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SaveMotorInsuranceDocumentsDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$SaveMotorInsuranceDocumentsResponseModelCopyWithImpl<$Res,
        $Val extends SaveMotorInsuranceDocumentsResponseModel>
    implements $SaveMotorInsuranceDocumentsResponseModelCopyWith<$Res> {
  _$SaveMotorInsuranceDocumentsResponseModelCopyWithImpl(
      this._value, this._then);

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
              as SaveMotorInsuranceDocumentsData?,
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
  $SaveMotorInsuranceDocumentsDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SaveMotorInsuranceDocumentsDataCopyWith<$Res>(_value.body!,
        (value) {
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
abstract class _$$SaveMotorInsuranceDocumentsResponseModelImplCopyWith<$Res>
    implements $SaveMotorInsuranceDocumentsResponseModelCopyWith<$Res> {
  factory _$$SaveMotorInsuranceDocumentsResponseModelImplCopyWith(
          _$SaveMotorInsuranceDocumentsResponseModelImpl value,
          $Res Function(_$SaveMotorInsuranceDocumentsResponseModelImpl) then) =
      __$$SaveMotorInsuranceDocumentsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SaveMotorInsuranceDocumentsData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SaveMotorInsuranceDocumentsDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SaveMotorInsuranceDocumentsResponseModelImplCopyWithImpl<$Res>
    extends _$SaveMotorInsuranceDocumentsResponseModelCopyWithImpl<$Res,
        _$SaveMotorInsuranceDocumentsResponseModelImpl>
    implements _$$SaveMotorInsuranceDocumentsResponseModelImplCopyWith<$Res> {
  __$$SaveMotorInsuranceDocumentsResponseModelImplCopyWithImpl(
      _$SaveMotorInsuranceDocumentsResponseModelImpl _value,
      $Res Function(_$SaveMotorInsuranceDocumentsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SaveMotorInsuranceDocumentsResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SaveMotorInsuranceDocumentsData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveMotorInsuranceDocumentsResponseModelImpl
    implements _SaveMotorInsuranceDocumentsResponseModel {
  const _$SaveMotorInsuranceDocumentsResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SaveMotorInsuranceDocumentsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveMotorInsuranceDocumentsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SaveMotorInsuranceDocumentsData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SaveMotorInsuranceDocumentsResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveMotorInsuranceDocumentsResponseModelImpl &&
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
  _$$SaveMotorInsuranceDocumentsResponseModelImplCopyWith<
          _$SaveMotorInsuranceDocumentsResponseModelImpl>
      get copyWith =>
          __$$SaveMotorInsuranceDocumentsResponseModelImplCopyWithImpl<
              _$SaveMotorInsuranceDocumentsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveMotorInsuranceDocumentsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SaveMotorInsuranceDocumentsResponseModel
    implements SaveMotorInsuranceDocumentsResponseModel {
  const factory _SaveMotorInsuranceDocumentsResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SaveMotorInsuranceDocumentsData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SaveMotorInsuranceDocumentsResponseModelImpl;

  factory _SaveMotorInsuranceDocumentsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$SaveMotorInsuranceDocumentsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SaveMotorInsuranceDocumentsData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SaveMotorInsuranceDocumentsResponseModelImplCopyWith<
          _$SaveMotorInsuranceDocumentsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SaveMotorInsuranceDocumentsData _$SaveMotorInsuranceDocumentsDataFromJson(
    Map<String, dynamic> json) {
  return _SaveMotorInsuranceDocumentsData.fromJson(json);
}

/// @nodoc
mixin _$SaveMotorInsuranceDocumentsData {
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveMotorInsuranceDocumentsDataCopyWith<SaveMotorInsuranceDocumentsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveMotorInsuranceDocumentsDataCopyWith<$Res> {
  factory $SaveMotorInsuranceDocumentsDataCopyWith(
          SaveMotorInsuranceDocumentsData value,
          $Res Function(SaveMotorInsuranceDocumentsData) then) =
      _$SaveMotorInsuranceDocumentsDataCopyWithImpl<$Res,
          SaveMotorInsuranceDocumentsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SaveMotorInsuranceDocumentsDataCopyWithImpl<$Res,
        $Val extends SaveMotorInsuranceDocumentsData>
    implements $SaveMotorInsuranceDocumentsDataCopyWith<$Res> {
  _$SaveMotorInsuranceDocumentsDataCopyWithImpl(this._value, this._then);

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
abstract class _$$SaveMotorInsuranceDocumentsDataImplCopyWith<$Res>
    implements $SaveMotorInsuranceDocumentsDataCopyWith<$Res> {
  factory _$$SaveMotorInsuranceDocumentsDataImplCopyWith(
          _$SaveMotorInsuranceDocumentsDataImpl value,
          $Res Function(_$SaveMotorInsuranceDocumentsDataImpl) then) =
      __$$SaveMotorInsuranceDocumentsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SaveMotorInsuranceDocumentsDataImplCopyWithImpl<$Res>
    extends _$SaveMotorInsuranceDocumentsDataCopyWithImpl<$Res,
        _$SaveMotorInsuranceDocumentsDataImpl>
    implements _$$SaveMotorInsuranceDocumentsDataImplCopyWith<$Res> {
  __$$SaveMotorInsuranceDocumentsDataImplCopyWithImpl(
      _$SaveMotorInsuranceDocumentsDataImpl _value,
      $Res Function(_$SaveMotorInsuranceDocumentsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SaveMotorInsuranceDocumentsDataImpl(
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
class _$SaveMotorInsuranceDocumentsDataImpl
    implements _SaveMotorInsuranceDocumentsData {
  const _$SaveMotorInsuranceDocumentsDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SaveMotorInsuranceDocumentsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveMotorInsuranceDocumentsDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentApplicationModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SaveMotorInsuranceDocumentsData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveMotorInsuranceDocumentsDataImpl &&
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
  _$$SaveMotorInsuranceDocumentsDataImplCopyWith<
          _$SaveMotorInsuranceDocumentsDataImpl>
      get copyWith => __$$SaveMotorInsuranceDocumentsDataImplCopyWithImpl<
          _$SaveMotorInsuranceDocumentsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveMotorInsuranceDocumentsDataImplToJson(
      this,
    );
  }
}

abstract class _SaveMotorInsuranceDocumentsData
    implements SaveMotorInsuranceDocumentsData {
  const factory _SaveMotorInsuranceDocumentsData(
          {@JsonKey(name: "rb") final AgentApplicationModel? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$SaveMotorInsuranceDocumentsDataImpl;

  factory _SaveMotorInsuranceDocumentsData.fromJson(Map<String, dynamic> json) =
      _$SaveMotorInsuranceDocumentsDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SaveMotorInsuranceDocumentsDataImplCopyWith<
          _$SaveMotorInsuranceDocumentsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
