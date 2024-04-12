// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_por_documents_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavePorDocumentsResponseModel _$SavePorDocumentsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SavePorDocumentsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SavePorDocumentsResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SavePORDocumentsData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePorDocumentsResponseModelCopyWith<SavePorDocumentsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePorDocumentsResponseModelCopyWith<$Res> {
  factory $SavePorDocumentsResponseModelCopyWith(
          SavePorDocumentsResponseModel value,
          $Res Function(SavePorDocumentsResponseModel) then) =
      _$SavePorDocumentsResponseModelCopyWithImpl<$Res,
          SavePorDocumentsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SavePORDocumentsData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SavePORDocumentsDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$SavePorDocumentsResponseModelCopyWithImpl<$Res,
        $Val extends SavePorDocumentsResponseModel>
    implements $SavePorDocumentsResponseModelCopyWith<$Res> {
  _$SavePorDocumentsResponseModelCopyWithImpl(this._value, this._then);

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
              as SavePORDocumentsData?,
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
  $SavePORDocumentsDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SavePORDocumentsDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$SavePorDocumentsResponseModelImplCopyWith<$Res>
    implements $SavePorDocumentsResponseModelCopyWith<$Res> {
  factory _$$SavePorDocumentsResponseModelImplCopyWith(
          _$SavePorDocumentsResponseModelImpl value,
          $Res Function(_$SavePorDocumentsResponseModelImpl) then) =
      __$$SavePorDocumentsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SavePORDocumentsData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SavePORDocumentsDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SavePorDocumentsResponseModelImplCopyWithImpl<$Res>
    extends _$SavePorDocumentsResponseModelCopyWithImpl<$Res,
        _$SavePorDocumentsResponseModelImpl>
    implements _$$SavePorDocumentsResponseModelImplCopyWith<$Res> {
  __$$SavePorDocumentsResponseModelImplCopyWithImpl(
      _$SavePorDocumentsResponseModelImpl _value,
      $Res Function(_$SavePorDocumentsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SavePorDocumentsResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SavePORDocumentsData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavePorDocumentsResponseModelImpl
    implements _SavePorDocumentsResponseModel {
  const _$SavePorDocumentsResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SavePorDocumentsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SavePorDocumentsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SavePORDocumentsData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SavePorDocumentsResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePorDocumentsResponseModelImpl &&
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
  _$$SavePorDocumentsResponseModelImplCopyWith<
          _$SavePorDocumentsResponseModelImpl>
      get copyWith => __$$SavePorDocumentsResponseModelImplCopyWithImpl<
          _$SavePorDocumentsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavePorDocumentsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SavePorDocumentsResponseModel
    implements SavePorDocumentsResponseModel {
  const factory _SavePorDocumentsResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SavePORDocumentsData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SavePorDocumentsResponseModelImpl;

  factory _SavePorDocumentsResponseModel.fromJson(Map<String, dynamic> json) =
      _$SavePorDocumentsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SavePORDocumentsData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SavePorDocumentsResponseModelImplCopyWith<
          _$SavePorDocumentsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SavePORDocumentsData _$SavePORDocumentsDataFromJson(Map<String, dynamic> json) {
  return _SavePORDocumentsData.fromJson(json);
}

/// @nodoc
mixin _$SavePORDocumentsData {
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePORDocumentsDataCopyWith<SavePORDocumentsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePORDocumentsDataCopyWith<$Res> {
  factory $SavePORDocumentsDataCopyWith(SavePORDocumentsData value,
          $Res Function(SavePORDocumentsData) then) =
      _$SavePORDocumentsDataCopyWithImpl<$Res, SavePORDocumentsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SavePORDocumentsDataCopyWithImpl<$Res,
        $Val extends SavePORDocumentsData>
    implements $SavePORDocumentsDataCopyWith<$Res> {
  _$SavePORDocumentsDataCopyWithImpl(this._value, this._then);

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
abstract class _$$SavePORDocumentsDataImplCopyWith<$Res>
    implements $SavePORDocumentsDataCopyWith<$Res> {
  factory _$$SavePORDocumentsDataImplCopyWith(_$SavePORDocumentsDataImpl value,
          $Res Function(_$SavePORDocumentsDataImpl) then) =
      __$$SavePORDocumentsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SavePORDocumentsDataImplCopyWithImpl<$Res>
    extends _$SavePORDocumentsDataCopyWithImpl<$Res, _$SavePORDocumentsDataImpl>
    implements _$$SavePORDocumentsDataImplCopyWith<$Res> {
  __$$SavePORDocumentsDataImplCopyWithImpl(_$SavePORDocumentsDataImpl _value,
      $Res Function(_$SavePORDocumentsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SavePORDocumentsDataImpl(
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
class _$SavePORDocumentsDataImpl implements _SavePORDocumentsData {
  const _$SavePORDocumentsDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SavePORDocumentsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavePORDocumentsDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentApplicationModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SavePORDocumentsData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePORDocumentsDataImpl &&
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
  _$$SavePORDocumentsDataImplCopyWith<_$SavePORDocumentsDataImpl>
      get copyWith =>
          __$$SavePORDocumentsDataImplCopyWithImpl<_$SavePORDocumentsDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavePORDocumentsDataImplToJson(
      this,
    );
  }
}

abstract class _SavePORDocumentsData implements SavePORDocumentsData {
  const factory _SavePORDocumentsData(
          {@JsonKey(name: "rb") final AgentApplicationModel? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$SavePORDocumentsDataImpl;

  factory _SavePORDocumentsData.fromJson(Map<String, dynamic> json) =
      _$SavePORDocumentsDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SavePORDocumentsDataImplCopyWith<_$SavePORDocumentsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
