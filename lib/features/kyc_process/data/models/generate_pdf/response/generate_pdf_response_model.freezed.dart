// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_pdf_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeneratePdfResponseModel _$GeneratePdfResponseModelFromJson(
    Map<String, dynamic> json) {
  return _GeneratePdfResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GeneratePdfResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get headerModel => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  GeneratePdfData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratePdfResponseModelCopyWith<GeneratePdfResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratePdfResponseModelCopyWith<$Res> {
  factory $GeneratePdfResponseModelCopyWith(GeneratePdfResponseModel value,
          $Res Function(GeneratePdfResponseModel) then) =
      _$GeneratePdfResponseModelCopyWithImpl<$Res, GeneratePdfResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? headerModel,
      @JsonKey(name: "b") GeneratePdfData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get headerModel;
  $GeneratePdfDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$GeneratePdfResponseModelCopyWithImpl<$Res,
        $Val extends GeneratePdfResponseModel>
    implements $GeneratePdfResponseModelCopyWith<$Res> {
  _$GeneratePdfResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerModel = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      headerModel: freezed == headerModel
          ? _value.headerModel
          : headerModel // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GeneratePdfData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HeaderModelCopyWith<$Res>? get headerModel {
    if (_value.headerModel == null) {
      return null;
    }

    return $HeaderModelCopyWith<$Res>(_value.headerModel!, (value) {
      return _then(_value.copyWith(headerModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeneratePdfDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $GeneratePdfDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$GeneratePdfResponseModelImplCopyWith<$Res>
    implements $GeneratePdfResponseModelCopyWith<$Res> {
  factory _$$GeneratePdfResponseModelImplCopyWith(
          _$GeneratePdfResponseModelImpl value,
          $Res Function(_$GeneratePdfResponseModelImpl) then) =
      __$$GeneratePdfResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? headerModel,
      @JsonKey(name: "b") GeneratePdfData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get headerModel;
  @override
  $GeneratePdfDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$GeneratePdfResponseModelImplCopyWithImpl<$Res>
    extends _$GeneratePdfResponseModelCopyWithImpl<$Res,
        _$GeneratePdfResponseModelImpl>
    implements _$$GeneratePdfResponseModelImplCopyWith<$Res> {
  __$$GeneratePdfResponseModelImplCopyWithImpl(
      _$GeneratePdfResponseModelImpl _value,
      $Res Function(_$GeneratePdfResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerModel = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$GeneratePdfResponseModelImpl(
      headerModel: freezed == headerModel
          ? _value.headerModel
          : headerModel // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as GeneratePdfData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneratePdfResponseModelImpl implements _GeneratePdfResponseModel {
  const _$GeneratePdfResponseModelImpl(
      {@JsonKey(name: "h") this.headerModel,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$GeneratePdfResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneratePdfResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? headerModel;
  @override
  @JsonKey(name: "b")
  final GeneratePdfData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'GeneratePdfResponseModel(headerModel: $headerModel, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratePdfResponseModelImpl &&
            (identical(other.headerModel, headerModel) ||
                other.headerModel == headerModel) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, headerModel, body, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeneratePdfResponseModelImplCopyWith<_$GeneratePdfResponseModelImpl>
      get copyWith => __$$GeneratePdfResponseModelImplCopyWithImpl<
          _$GeneratePdfResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratePdfResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GeneratePdfResponseModel implements GeneratePdfResponseModel {
  const factory _GeneratePdfResponseModel(
          {@JsonKey(name: "h") final HeaderModel? headerModel,
          @JsonKey(name: "b") final GeneratePdfData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$GeneratePdfResponseModelImpl;

  factory _GeneratePdfResponseModel.fromJson(Map<String, dynamic> json) =
      _$GeneratePdfResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get headerModel;
  @override
  @JsonKey(name: "b")
  GeneratePdfData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$GeneratePdfResponseModelImplCopyWith<_$GeneratePdfResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GeneratePdfData _$GeneratePdfDataFromJson(Map<String, dynamic> json) {
  return _GeneratePdfData.fromJson(json);
}

/// @nodoc
mixin _$GeneratePdfData {
  @JsonKey(name: "rb")
  String? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneratePdfDataCopyWith<GeneratePdfData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneratePdfDataCopyWith<$Res> {
  factory $GeneratePdfDataCopyWith(
          GeneratePdfData value, $Res Function(GeneratePdfData) then) =
      _$GeneratePdfDataCopyWithImpl<$Res, GeneratePdfData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") String? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$GeneratePdfDataCopyWithImpl<$Res, $Val extends GeneratePdfData>
    implements $GeneratePdfDataCopyWith<$Res> {
  _$GeneratePdfDataCopyWithImpl(this._value, this._then);

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
              as String?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeneratePdfDataImplCopyWith<$Res>
    implements $GeneratePdfDataCopyWith<$Res> {
  factory _$$GeneratePdfDataImplCopyWith(_$GeneratePdfDataImpl value,
          $Res Function(_$GeneratePdfDataImpl) then) =
      __$$GeneratePdfDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") String? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$GeneratePdfDataImplCopyWithImpl<$Res>
    extends _$GeneratePdfDataCopyWithImpl<$Res, _$GeneratePdfDataImpl>
    implements _$$GeneratePdfDataImplCopyWith<$Res> {
  __$$GeneratePdfDataImplCopyWithImpl(
      _$GeneratePdfDataImpl _value, $Res Function(_$GeneratePdfDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$GeneratePdfDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as String?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeneratePdfDataImpl implements _GeneratePdfData {
  const _$GeneratePdfDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$GeneratePdfDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeneratePdfDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final String? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'GeneratePdfData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeneratePdfDataImpl &&
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
  _$$GeneratePdfDataImplCopyWith<_$GeneratePdfDataImpl> get copyWith =>
      __$$GeneratePdfDataImplCopyWithImpl<_$GeneratePdfDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeneratePdfDataImplToJson(
      this,
    );
  }
}

abstract class _GeneratePdfData implements GeneratePdfData {
  const factory _GeneratePdfData(
          {@JsonKey(name: "rb") final String? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$GeneratePdfDataImpl;

  factory _GeneratePdfData.fromJson(Map<String, dynamic> json) =
      _$GeneratePdfDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  String? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$GeneratePdfDataImplCopyWith<_$GeneratePdfDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
