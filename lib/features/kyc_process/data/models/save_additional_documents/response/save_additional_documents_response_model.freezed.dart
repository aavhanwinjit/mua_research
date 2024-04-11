// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_additional_documents_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveAdditionalDocumentsResponseModel
    _$SaveAdditionalDocumentsResponseModelFromJson(Map<String, dynamic> json) {
  return _SaveAdditionalDocumentsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SaveAdditionalDocumentsResponseModel {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  SaveAdditionalDocumentsData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveAdditionalDocumentsResponseModelCopyWith<
          SaveAdditionalDocumentsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveAdditionalDocumentsResponseModelCopyWith<$Res> {
  factory $SaveAdditionalDocumentsResponseModelCopyWith(
          SaveAdditionalDocumentsResponseModel value,
          $Res Function(SaveAdditionalDocumentsResponseModel) then) =
      _$SaveAdditionalDocumentsResponseModelCopyWithImpl<$Res,
          SaveAdditionalDocumentsResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SaveAdditionalDocumentsData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $SaveAdditionalDocumentsDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$SaveAdditionalDocumentsResponseModelCopyWithImpl<$Res,
        $Val extends SaveAdditionalDocumentsResponseModel>
    implements $SaveAdditionalDocumentsResponseModelCopyWith<$Res> {
  _$SaveAdditionalDocumentsResponseModelCopyWithImpl(this._value, this._then);

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
              as SaveAdditionalDocumentsData?,
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
  $SaveAdditionalDocumentsDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $SaveAdditionalDocumentsDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$SaveAdditionalDocumentsResponseModelImplCopyWith<$Res>
    implements $SaveAdditionalDocumentsResponseModelCopyWith<$Res> {
  factory _$$SaveAdditionalDocumentsResponseModelImplCopyWith(
          _$SaveAdditionalDocumentsResponseModelImpl value,
          $Res Function(_$SaveAdditionalDocumentsResponseModelImpl) then) =
      __$$SaveAdditionalDocumentsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") SaveAdditionalDocumentsData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $SaveAdditionalDocumentsDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$SaveAdditionalDocumentsResponseModelImplCopyWithImpl<$Res>
    extends _$SaveAdditionalDocumentsResponseModelCopyWithImpl<$Res,
        _$SaveAdditionalDocumentsResponseModelImpl>
    implements _$$SaveAdditionalDocumentsResponseModelImplCopyWith<$Res> {
  __$$SaveAdditionalDocumentsResponseModelImplCopyWithImpl(
      _$SaveAdditionalDocumentsResponseModelImpl _value,
      $Res Function(_$SaveAdditionalDocumentsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$SaveAdditionalDocumentsResponseModelImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as SaveAdditionalDocumentsData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveAdditionalDocumentsResponseModelImpl
    implements _SaveAdditionalDocumentsResponseModel {
  const _$SaveAdditionalDocumentsResponseModelImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$SaveAdditionalDocumentsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveAdditionalDocumentsResponseModelImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final SaveAdditionalDocumentsData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'SaveAdditionalDocumentsResponseModel(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAdditionalDocumentsResponseModelImpl &&
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
  _$$SaveAdditionalDocumentsResponseModelImplCopyWith<
          _$SaveAdditionalDocumentsResponseModelImpl>
      get copyWith => __$$SaveAdditionalDocumentsResponseModelImplCopyWithImpl<
          _$SaveAdditionalDocumentsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveAdditionalDocumentsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SaveAdditionalDocumentsResponseModel
    implements SaveAdditionalDocumentsResponseModel {
  const factory _SaveAdditionalDocumentsResponseModel(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final SaveAdditionalDocumentsData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$SaveAdditionalDocumentsResponseModelImpl;

  factory _SaveAdditionalDocumentsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$SaveAdditionalDocumentsResponseModelImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  SaveAdditionalDocumentsData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$SaveAdditionalDocumentsResponseModelImplCopyWith<
          _$SaveAdditionalDocumentsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SaveAdditionalDocumentsData _$SaveAdditionalDocumentsDataFromJson(
    Map<String, dynamic> json) {
  return _SaveAdditionalDocumentsData.fromJson(json);
}

/// @nodoc
mixin _$SaveAdditionalDocumentsData {
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody => throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveAdditionalDocumentsDataCopyWith<SaveAdditionalDocumentsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveAdditionalDocumentsDataCopyWith<$Res> {
  factory $SaveAdditionalDocumentsDataCopyWith(
          SaveAdditionalDocumentsData value,
          $Res Function(SaveAdditionalDocumentsData) then) =
      _$SaveAdditionalDocumentsDataCopyWithImpl<$Res,
          SaveAdditionalDocumentsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$SaveAdditionalDocumentsDataCopyWithImpl<$Res,
        $Val extends SaveAdditionalDocumentsData>
    implements $SaveAdditionalDocumentsDataCopyWith<$Res> {
  _$SaveAdditionalDocumentsDataCopyWithImpl(this._value, this._then);

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
abstract class _$$SaveAdditionalDocumentsDataImplCopyWith<$Res>
    implements $SaveAdditionalDocumentsDataCopyWith<$Res> {
  factory _$$SaveAdditionalDocumentsDataImplCopyWith(
          _$SaveAdditionalDocumentsDataImpl value,
          $Res Function(_$SaveAdditionalDocumentsDataImpl) then) =
      __$$SaveAdditionalDocumentsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") AgentApplicationModel? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $AgentApplicationModelCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$SaveAdditionalDocumentsDataImplCopyWithImpl<$Res>
    extends _$SaveAdditionalDocumentsDataCopyWithImpl<$Res,
        _$SaveAdditionalDocumentsDataImpl>
    implements _$$SaveAdditionalDocumentsDataImplCopyWith<$Res> {
  __$$SaveAdditionalDocumentsDataImplCopyWithImpl(
      _$SaveAdditionalDocumentsDataImpl _value,
      $Res Function(_$SaveAdditionalDocumentsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$SaveAdditionalDocumentsDataImpl(
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
class _$SaveAdditionalDocumentsDataImpl
    implements _SaveAdditionalDocumentsData {
  const _$SaveAdditionalDocumentsDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$SaveAdditionalDocumentsDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveAdditionalDocumentsDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final AgentApplicationModel? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'SaveAdditionalDocumentsData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveAdditionalDocumentsDataImpl &&
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
  _$$SaveAdditionalDocumentsDataImplCopyWith<_$SaveAdditionalDocumentsDataImpl>
      get copyWith => __$$SaveAdditionalDocumentsDataImplCopyWithImpl<
          _$SaveAdditionalDocumentsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveAdditionalDocumentsDataImplToJson(
      this,
    );
  }
}

abstract class _SaveAdditionalDocumentsData
    implements SaveAdditionalDocumentsData {
  const factory _SaveAdditionalDocumentsData(
          {@JsonKey(name: "rb") final AgentApplicationModel? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$SaveAdditionalDocumentsDataImpl;

  factory _SaveAdditionalDocumentsData.fromJson(Map<String, dynamic> json) =
      _$SaveAdditionalDocumentsDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  AgentApplicationModel? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$SaveAdditionalDocumentsDataImplCopyWith<_$SaveAdditionalDocumentsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
