// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'view_file_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ViewFileResponseModel _$ViewFileResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ViewFileResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ViewFileResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  ViewFileData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewFileResponseModelCopyWith<ViewFileResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewFileResponseModelCopyWith<$Res> {
  factory $ViewFileResponseModelCopyWith(ViewFileResponseModel value,
          $Res Function(ViewFileResponseModel) then) =
      _$ViewFileResponseModelCopyWithImpl<$Res, ViewFileResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ViewFileData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $ViewFileDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$ViewFileResponseModelCopyWithImpl<$Res,
        $Val extends ViewFileResponseModel>
    implements $ViewFileResponseModelCopyWith<$Res> {
  _$ViewFileResponseModelCopyWithImpl(this._value, this._then);

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
              as ViewFileData?,
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
  $ViewFileDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $ViewFileDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$ViewFileResponseModelImplCopyWith<$Res>
    implements $ViewFileResponseModelCopyWith<$Res> {
  factory _$$ViewFileResponseModelImplCopyWith(
          _$ViewFileResponseModelImpl value,
          $Res Function(_$ViewFileResponseModelImpl) then) =
      __$$ViewFileResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") ViewFileData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $ViewFileDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$ViewFileResponseModelImplCopyWithImpl<$Res>
    extends _$ViewFileResponseModelCopyWithImpl<$Res,
        _$ViewFileResponseModelImpl>
    implements _$$ViewFileResponseModelImplCopyWith<$Res> {
  __$$ViewFileResponseModelImplCopyWithImpl(_$ViewFileResponseModelImpl _value,
      $Res Function(_$ViewFileResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ViewFileResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as ViewFileData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewFileResponseModelImpl implements _ViewFileResponseModel {
  const _$ViewFileResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$ViewFileResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewFileResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final ViewFileData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'ViewFileResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewFileResponseModelImpl &&
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
  _$$ViewFileResponseModelImplCopyWith<_$ViewFileResponseModelImpl>
      get copyWith => __$$ViewFileResponseModelImplCopyWithImpl<
          _$ViewFileResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewFileResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ViewFileResponseModel implements ViewFileResponseModel {
  const factory _ViewFileResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final ViewFileData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$ViewFileResponseModelImpl;

  factory _ViewFileResponseModel.fromJson(Map<String, dynamic> json) =
      _$ViewFileResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  ViewFileData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$ViewFileResponseModelImplCopyWith<_$ViewFileResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ViewFileData _$ViewFileDataFromJson(Map<String, dynamic> json) {
  return _ViewFileData.fromJson(json);
}

/// @nodoc
mixin _$ViewFileData {
  @JsonKey(name: "rb")
  String? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViewFileDataCopyWith<ViewFileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewFileDataCopyWith<$Res> {
  factory $ViewFileDataCopyWith(
          ViewFileData value, $Res Function(ViewFileData) then) =
      _$ViewFileDataCopyWithImpl<$Res, ViewFileData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") String? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class _$ViewFileDataCopyWithImpl<$Res, $Val extends ViewFileData>
    implements $ViewFileDataCopyWith<$Res> {
  _$ViewFileDataCopyWithImpl(this._value, this._then);

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
abstract class _$$ViewFileDataImplCopyWith<$Res>
    implements $ViewFileDataCopyWith<$Res> {
  factory _$$ViewFileDataImplCopyWith(
          _$ViewFileDataImpl value, $Res Function(_$ViewFileDataImpl) then) =
      __$$ViewFileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") String? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});
}

/// @nodoc
class __$$ViewFileDataImplCopyWithImpl<$Res>
    extends _$ViewFileDataCopyWithImpl<$Res, _$ViewFileDataImpl>
    implements _$$ViewFileDataImplCopyWith<$Res> {
  __$$ViewFileDataImplCopyWithImpl(
      _$ViewFileDataImpl _value, $Res Function(_$ViewFileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$ViewFileDataImpl(
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
class _$ViewFileDataImpl implements _ViewFileData {
  const _$ViewFileDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$ViewFileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewFileDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final String? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'ViewFileData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewFileDataImpl &&
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
  _$$ViewFileDataImplCopyWith<_$ViewFileDataImpl> get copyWith =>
      __$$ViewFileDataImplCopyWithImpl<_$ViewFileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewFileDataImplToJson(
      this,
    );
  }
}

abstract class _ViewFileData implements ViewFileData {
  const factory _ViewFileData(
      {@JsonKey(name: "rb") final String? responseBody,
      @JsonKey(name: "checkSum") final String? checkSum}) = _$ViewFileDataImpl;

  factory _ViewFileData.fromJson(Map<String, dynamic> json) =
      _$ViewFileDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  String? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$ViewFileDataImplCopyWith<_$ViewFileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
