// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'launch_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaunchDetailsResponse _$LaunchDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _LaunchDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$LaunchDetailsResponse {
  @JsonKey(name: "h")
  HeaderModel? get header => throw _privateConstructorUsedError;
  @JsonKey(name: "b")
  LaunchDetailsData? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "s")
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchDetailsResponseCopyWith<LaunchDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchDetailsResponseCopyWith<$Res> {
  factory $LaunchDetailsResponseCopyWith(LaunchDetailsResponse value,
          $Res Function(LaunchDetailsResponse) then) =
      _$LaunchDetailsResponseCopyWithImpl<$Res, LaunchDetailsResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LaunchDetailsData? body,
      @JsonKey(name: "s") StatusModel? status});

  $HeaderModelCopyWith<$Res>? get header;
  $LaunchDetailsDataCopyWith<$Res>? get body;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$LaunchDetailsResponseCopyWithImpl<$Res,
        $Val extends LaunchDetailsResponse>
    implements $LaunchDetailsResponseCopyWith<$Res> {
  _$LaunchDetailsResponseCopyWithImpl(this._value, this._then);

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
              as LaunchDetailsData?,
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
  $LaunchDetailsDataCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $LaunchDetailsDataCopyWith<$Res>(_value.body!, (value) {
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
abstract class _$$LaunchDetailsResponseImplCopyWith<$Res>
    implements $LaunchDetailsResponseCopyWith<$Res> {
  factory _$$LaunchDetailsResponseImplCopyWith(
          _$LaunchDetailsResponseImpl value,
          $Res Function(_$LaunchDetailsResponseImpl) then) =
      __$$LaunchDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "h") HeaderModel? header,
      @JsonKey(name: "b") LaunchDetailsData? body,
      @JsonKey(name: "s") StatusModel? status});

  @override
  $HeaderModelCopyWith<$Res>? get header;
  @override
  $LaunchDetailsDataCopyWith<$Res>? get body;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$LaunchDetailsResponseImplCopyWithImpl<$Res>
    extends _$LaunchDetailsResponseCopyWithImpl<$Res,
        _$LaunchDetailsResponseImpl>
    implements _$$LaunchDetailsResponseImplCopyWith<$Res> {
  __$$LaunchDetailsResponseImplCopyWithImpl(_$LaunchDetailsResponseImpl _value,
      $Res Function(_$LaunchDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
    Object? body = freezed,
    Object? status = freezed,
  }) {
    return _then(_$LaunchDetailsResponseImpl(
      header: freezed == header
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as HeaderModel?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as LaunchDetailsData?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaunchDetailsResponseImpl implements _LaunchDetailsResponse {
  const _$LaunchDetailsResponseImpl(
      {@JsonKey(name: "h") this.header,
      @JsonKey(name: "b") this.body,
      @JsonKey(name: "s") this.status});

  factory _$LaunchDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchDetailsResponseImplFromJson(json);

  @override
  @JsonKey(name: "h")
  final HeaderModel? header;
  @override
  @JsonKey(name: "b")
  final LaunchDetailsData? body;
  @override
  @JsonKey(name: "s")
  final StatusModel? status;

  @override
  String toString() {
    return 'LaunchDetailsResponse(header: $header, body: $body, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchDetailsResponseImpl &&
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
  _$$LaunchDetailsResponseImplCopyWith<_$LaunchDetailsResponseImpl>
      get copyWith => __$$LaunchDetailsResponseImplCopyWithImpl<
          _$LaunchDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _LaunchDetailsResponse implements LaunchDetailsResponse {
  const factory _LaunchDetailsResponse(
          {@JsonKey(name: "h") final HeaderModel? header,
          @JsonKey(name: "b") final LaunchDetailsData? body,
          @JsonKey(name: "s") final StatusModel? status}) =
      _$LaunchDetailsResponseImpl;

  factory _LaunchDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$LaunchDetailsResponseImpl.fromJson;

  @override
  @JsonKey(name: "h")
  HeaderModel? get header;
  @override
  @JsonKey(name: "b")
  LaunchDetailsData? get body;
  @override
  @JsonKey(name: "s")
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$LaunchDetailsResponseImplCopyWith<_$LaunchDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

LaunchDetailsData _$LaunchDetailsDataFromJson(Map<String, dynamic> json) {
  return _LaunchDetailsData.fromJson(json);
}

/// @nodoc
mixin _$LaunchDetailsData {
  @JsonKey(name: "rb")
  LaunchDetailsResponseBody? get responseBody =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "checkSum")
  String? get checkSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchDetailsDataCopyWith<LaunchDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchDetailsDataCopyWith<$Res> {
  factory $LaunchDetailsDataCopyWith(
          LaunchDetailsData value, $Res Function(LaunchDetailsData) then) =
      _$LaunchDetailsDataCopyWithImpl<$Res, LaunchDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "rb") LaunchDetailsResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  $LaunchDetailsResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class _$LaunchDetailsDataCopyWithImpl<$Res, $Val extends LaunchDetailsData>
    implements $LaunchDetailsDataCopyWith<$Res> {
  _$LaunchDetailsDataCopyWithImpl(this._value, this._then);

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
              as LaunchDetailsResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LaunchDetailsResponseBodyCopyWith<$Res>? get responseBody {
    if (_value.responseBody == null) {
      return null;
    }

    return $LaunchDetailsResponseBodyCopyWith<$Res>(_value.responseBody!,
        (value) {
      return _then(_value.copyWith(responseBody: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LaunchDetailsDataImplCopyWith<$Res>
    implements $LaunchDetailsDataCopyWith<$Res> {
  factory _$$LaunchDetailsDataImplCopyWith(_$LaunchDetailsDataImpl value,
          $Res Function(_$LaunchDetailsDataImpl) then) =
      __$$LaunchDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "rb") LaunchDetailsResponseBody? responseBody,
      @JsonKey(name: "checkSum") String? checkSum});

  @override
  $LaunchDetailsResponseBodyCopyWith<$Res>? get responseBody;
}

/// @nodoc
class __$$LaunchDetailsDataImplCopyWithImpl<$Res>
    extends _$LaunchDetailsDataCopyWithImpl<$Res, _$LaunchDetailsDataImpl>
    implements _$$LaunchDetailsDataImplCopyWith<$Res> {
  __$$LaunchDetailsDataImplCopyWithImpl(_$LaunchDetailsDataImpl _value,
      $Res Function(_$LaunchDetailsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseBody = freezed,
    Object? checkSum = freezed,
  }) {
    return _then(_$LaunchDetailsDataImpl(
      responseBody: freezed == responseBody
          ? _value.responseBody
          : responseBody // ignore: cast_nullable_to_non_nullable
              as LaunchDetailsResponseBody?,
      checkSum: freezed == checkSum
          ? _value.checkSum
          : checkSum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaunchDetailsDataImpl implements _LaunchDetailsData {
  const _$LaunchDetailsDataImpl(
      {@JsonKey(name: "rb") this.responseBody,
      @JsonKey(name: "checkSum") this.checkSum});

  factory _$LaunchDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: "rb")
  final LaunchDetailsResponseBody? responseBody;
  @override
  @JsonKey(name: "checkSum")
  final String? checkSum;

  @override
  String toString() {
    return 'LaunchDetailsData(responseBody: $responseBody, checkSum: $checkSum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchDetailsDataImpl &&
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
  _$$LaunchDetailsDataImplCopyWith<_$LaunchDetailsDataImpl> get copyWith =>
      __$$LaunchDetailsDataImplCopyWithImpl<_$LaunchDetailsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _LaunchDetailsData implements LaunchDetailsData {
  const factory _LaunchDetailsData(
          {@JsonKey(name: "rb") final LaunchDetailsResponseBody? responseBody,
          @JsonKey(name: "checkSum") final String? checkSum}) =
      _$LaunchDetailsDataImpl;

  factory _LaunchDetailsData.fromJson(Map<String, dynamic> json) =
      _$LaunchDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: "rb")
  LaunchDetailsResponseBody? get responseBody;
  @override
  @JsonKey(name: "checkSum")
  String? get checkSum;
  @override
  @JsonKey(ignore: true)
  _$$LaunchDetailsDataImplCopyWith<_$LaunchDetailsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LaunchDetailsResponseBody _$LaunchDetailsResponseBodyFromJson(
    Map<String, dynamic> json) {
  return _LaunchDetailsResponseBody.fromJson(json);
}

/// @nodoc
mixin _$LaunchDetailsResponseBody {
  @JsonKey(name: "appStart")
  AppStart? get appStart => throw _privateConstructorUsedError;
  @JsonKey(name: "agentData")
  AgentData? get agentData => throw _privateConstructorUsedError;
  @JsonKey(name: "appSettingsData")
  AppSettingsData? get appSettingsData => throw _privateConstructorUsedError;
  @JsonKey(name: "languages")
  List<Language>? get languages => throw _privateConstructorUsedError;
  @JsonKey(name: "tokenData")
  TokenData? get tokenData => throw _privateConstructorUsedError;
  @JsonKey(name: "unreadPushMessageCount")
  int? get unreadPushMessageCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaunchDetailsResponseBodyCopyWith<LaunchDetailsResponseBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaunchDetailsResponseBodyCopyWith<$Res> {
  factory $LaunchDetailsResponseBodyCopyWith(LaunchDetailsResponseBody value,
          $Res Function(LaunchDetailsResponseBody) then) =
      _$LaunchDetailsResponseBodyCopyWithImpl<$Res, LaunchDetailsResponseBody>;
  @useResult
  $Res call(
      {@JsonKey(name: "appStart") AppStart? appStart,
      @JsonKey(name: "agentData") AgentData? agentData,
      @JsonKey(name: "appSettingsData") AppSettingsData? appSettingsData,
      @JsonKey(name: "languages") List<Language>? languages,
      @JsonKey(name: "tokenData") TokenData? tokenData,
      @JsonKey(name: "unreadPushMessageCount") int? unreadPushMessageCount});

  $AppStartCopyWith<$Res>? get appStart;
  $AgentDataCopyWith<$Res>? get agentData;
  $AppSettingsDataCopyWith<$Res>? get appSettingsData;
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class _$LaunchDetailsResponseBodyCopyWithImpl<$Res,
        $Val extends LaunchDetailsResponseBody>
    implements $LaunchDetailsResponseBodyCopyWith<$Res> {
  _$LaunchDetailsResponseBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStart = freezed,
    Object? agentData = freezed,
    Object? appSettingsData = freezed,
    Object? languages = freezed,
    Object? tokenData = freezed,
    Object? unreadPushMessageCount = freezed,
  }) {
    return _then(_value.copyWith(
      appStart: freezed == appStart
          ? _value.appStart
          : appStart // ignore: cast_nullable_to_non_nullable
              as AppStart?,
      agentData: freezed == agentData
          ? _value.agentData
          : agentData // ignore: cast_nullable_to_non_nullable
              as AgentData?,
      appSettingsData: freezed == appSettingsData
          ? _value.appSettingsData
          : appSettingsData // ignore: cast_nullable_to_non_nullable
              as AppSettingsData?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
      tokenData: freezed == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as TokenData?,
      unreadPushMessageCount: freezed == unreadPushMessageCount
          ? _value.unreadPushMessageCount
          : unreadPushMessageCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppStartCopyWith<$Res>? get appStart {
    if (_value.appStart == null) {
      return null;
    }

    return $AppStartCopyWith<$Res>(_value.appStart!, (value) {
      return _then(_value.copyWith(appStart: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AgentDataCopyWith<$Res>? get agentData {
    if (_value.agentData == null) {
      return null;
    }

    return $AgentDataCopyWith<$Res>(_value.agentData!, (value) {
      return _then(_value.copyWith(agentData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppSettingsDataCopyWith<$Res>? get appSettingsData {
    if (_value.appSettingsData == null) {
      return null;
    }

    return $AppSettingsDataCopyWith<$Res>(_value.appSettingsData!, (value) {
      return _then(_value.copyWith(appSettingsData: value) as $Val);
    });
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
abstract class _$$LaunchDetailsResponseBodyImplCopyWith<$Res>
    implements $LaunchDetailsResponseBodyCopyWith<$Res> {
  factory _$$LaunchDetailsResponseBodyImplCopyWith(
          _$LaunchDetailsResponseBodyImpl value,
          $Res Function(_$LaunchDetailsResponseBodyImpl) then) =
      __$$LaunchDetailsResponseBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "appStart") AppStart? appStart,
      @JsonKey(name: "agentData") AgentData? agentData,
      @JsonKey(name: "appSettingsData") AppSettingsData? appSettingsData,
      @JsonKey(name: "languages") List<Language>? languages,
      @JsonKey(name: "tokenData") TokenData? tokenData,
      @JsonKey(name: "unreadPushMessageCount") int? unreadPushMessageCount});

  @override
  $AppStartCopyWith<$Res>? get appStart;
  @override
  $AgentDataCopyWith<$Res>? get agentData;
  @override
  $AppSettingsDataCopyWith<$Res>? get appSettingsData;
  @override
  $TokenDataCopyWith<$Res>? get tokenData;
}

/// @nodoc
class __$$LaunchDetailsResponseBodyImplCopyWithImpl<$Res>
    extends _$LaunchDetailsResponseBodyCopyWithImpl<$Res,
        _$LaunchDetailsResponseBodyImpl>
    implements _$$LaunchDetailsResponseBodyImplCopyWith<$Res> {
  __$$LaunchDetailsResponseBodyImplCopyWithImpl(
      _$LaunchDetailsResponseBodyImpl _value,
      $Res Function(_$LaunchDetailsResponseBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appStart = freezed,
    Object? agentData = freezed,
    Object? appSettingsData = freezed,
    Object? languages = freezed,
    Object? tokenData = freezed,
    Object? unreadPushMessageCount = freezed,
  }) {
    return _then(_$LaunchDetailsResponseBodyImpl(
      appStart: freezed == appStart
          ? _value.appStart
          : appStart // ignore: cast_nullable_to_non_nullable
              as AppStart?,
      agentData: freezed == agentData
          ? _value.agentData
          : agentData // ignore: cast_nullable_to_non_nullable
              as AgentData?,
      appSettingsData: freezed == appSettingsData
          ? _value.appSettingsData
          : appSettingsData // ignore: cast_nullable_to_non_nullable
              as AppSettingsData?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<Language>?,
      tokenData: freezed == tokenData
          ? _value.tokenData
          : tokenData // ignore: cast_nullable_to_non_nullable
              as TokenData?,
      unreadPushMessageCount: freezed == unreadPushMessageCount
          ? _value.unreadPushMessageCount
          : unreadPushMessageCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaunchDetailsResponseBodyImpl implements _LaunchDetailsResponseBody {
  const _$LaunchDetailsResponseBodyImpl(
      {@JsonKey(name: "appStart") this.appStart,
      @JsonKey(name: "agentData") this.agentData,
      @JsonKey(name: "appSettingsData") this.appSettingsData,
      @JsonKey(name: "languages") final List<Language>? languages,
      @JsonKey(name: "tokenData") this.tokenData,
      @JsonKey(name: "unreadPushMessageCount") this.unreadPushMessageCount})
      : _languages = languages;

  factory _$LaunchDetailsResponseBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaunchDetailsResponseBodyImplFromJson(json);

  @override
  @JsonKey(name: "appStart")
  final AppStart? appStart;
  @override
  @JsonKey(name: "agentData")
  final AgentData? agentData;
  @override
  @JsonKey(name: "appSettingsData")
  final AppSettingsData? appSettingsData;
  final List<Language>? _languages;
  @override
  @JsonKey(name: "languages")
  List<Language>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "tokenData")
  final TokenData? tokenData;
  @override
  @JsonKey(name: "unreadPushMessageCount")
  final int? unreadPushMessageCount;

  @override
  String toString() {
    return 'LaunchDetailsResponseBody(appStart: $appStart, agentData: $agentData, appSettingsData: $appSettingsData, languages: $languages, tokenData: $tokenData, unreadPushMessageCount: $unreadPushMessageCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaunchDetailsResponseBodyImpl &&
            (identical(other.appStart, appStart) ||
                other.appStart == appStart) &&
            (identical(other.agentData, agentData) ||
                other.agentData == agentData) &&
            (identical(other.appSettingsData, appSettingsData) ||
                other.appSettingsData == appSettingsData) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.tokenData, tokenData) ||
                other.tokenData == tokenData) &&
            (identical(other.unreadPushMessageCount, unreadPushMessageCount) ||
                other.unreadPushMessageCount == unreadPushMessageCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      appStart,
      agentData,
      appSettingsData,
      const DeepCollectionEquality().hash(_languages),
      tokenData,
      unreadPushMessageCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaunchDetailsResponseBodyImplCopyWith<_$LaunchDetailsResponseBodyImpl>
      get copyWith => __$$LaunchDetailsResponseBodyImplCopyWithImpl<
          _$LaunchDetailsResponseBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaunchDetailsResponseBodyImplToJson(
      this,
    );
  }
}

abstract class _LaunchDetailsResponseBody implements LaunchDetailsResponseBody {
  const factory _LaunchDetailsResponseBody(
      {@JsonKey(name: "appStart") final AppStart? appStart,
      @JsonKey(name: "agentData") final AgentData? agentData,
      @JsonKey(name: "appSettingsData") final AppSettingsData? appSettingsData,
      @JsonKey(name: "languages") final List<Language>? languages,
      @JsonKey(name: "tokenData") final TokenData? tokenData,
      @JsonKey(name: "unreadPushMessageCount")
      final int? unreadPushMessageCount}) = _$LaunchDetailsResponseBodyImpl;

  factory _LaunchDetailsResponseBody.fromJson(Map<String, dynamic> json) =
      _$LaunchDetailsResponseBodyImpl.fromJson;

  @override
  @JsonKey(name: "appStart")
  AppStart? get appStart;
  @override
  @JsonKey(name: "agentData")
  AgentData? get agentData;
  @override
  @JsonKey(name: "appSettingsData")
  AppSettingsData? get appSettingsData;
  @override
  @JsonKey(name: "languages")
  List<Language>? get languages;
  @override
  @JsonKey(name: "tokenData")
  TokenData? get tokenData;
  @override
  @JsonKey(name: "unreadPushMessageCount")
  int? get unreadPushMessageCount;
  @override
  @JsonKey(ignore: true)
  _$$LaunchDetailsResponseBodyImplCopyWith<_$LaunchDetailsResponseBodyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AgentData _$AgentDataFromJson(Map<String, dynamic> json) {
  return _AgentData.fromJson(json);
}

/// @nodoc
mixin _$AgentData {
  @JsonKey(name: "isValidDeviceToken")
  bool? get isValidDeviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "isBlocked")
  bool? get isBlocked => throw _privateConstructorUsedError;
  @JsonKey(name: "blockedTill")
  DateTime? get blockedTill => throw _privateConstructorUsedError;
  @JsonKey(name: "loginData")
  LoginData? get loginData => throw _privateConstructorUsedError;
  @JsonKey(name: "agentId")
  int? get agentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AgentDataCopyWith<AgentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgentDataCopyWith<$Res> {
  factory $AgentDataCopyWith(AgentData value, $Res Function(AgentData) then) =
      _$AgentDataCopyWithImpl<$Res, AgentData>;
  @useResult
  $Res call(
      {@JsonKey(name: "isValidDeviceToken") bool? isValidDeviceToken,
      @JsonKey(name: "isBlocked") bool? isBlocked,
      @JsonKey(name: "blockedTill") DateTime? blockedTill,
      @JsonKey(name: "loginData") LoginData? loginData,
      @JsonKey(name: "agentId") int? agentId});

  $LoginDataCopyWith<$Res>? get loginData;
}

/// @nodoc
class _$AgentDataCopyWithImpl<$Res, $Val extends AgentData>
    implements $AgentDataCopyWith<$Res> {
  _$AgentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidDeviceToken = freezed,
    Object? isBlocked = freezed,
    Object? blockedTill = freezed,
    Object? loginData = freezed,
    Object? agentId = freezed,
  }) {
    return _then(_value.copyWith(
      isValidDeviceToken: freezed == isValidDeviceToken
          ? _value.isValidDeviceToken
          : isValidDeviceToken // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockedTill: freezed == blockedTill
          ? _value.blockedTill
          : blockedTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loginData: freezed == loginData
          ? _value.loginData
          : loginData // ignore: cast_nullable_to_non_nullable
              as LoginData?,
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginDataCopyWith<$Res>? get loginData {
    if (_value.loginData == null) {
      return null;
    }

    return $LoginDataCopyWith<$Res>(_value.loginData!, (value) {
      return _then(_value.copyWith(loginData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgentDataImplCopyWith<$Res>
    implements $AgentDataCopyWith<$Res> {
  factory _$$AgentDataImplCopyWith(
          _$AgentDataImpl value, $Res Function(_$AgentDataImpl) then) =
      __$$AgentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isValidDeviceToken") bool? isValidDeviceToken,
      @JsonKey(name: "isBlocked") bool? isBlocked,
      @JsonKey(name: "blockedTill") DateTime? blockedTill,
      @JsonKey(name: "loginData") LoginData? loginData,
      @JsonKey(name: "agentId") int? agentId});

  @override
  $LoginDataCopyWith<$Res>? get loginData;
}

/// @nodoc
class __$$AgentDataImplCopyWithImpl<$Res>
    extends _$AgentDataCopyWithImpl<$Res, _$AgentDataImpl>
    implements _$$AgentDataImplCopyWith<$Res> {
  __$$AgentDataImplCopyWithImpl(
      _$AgentDataImpl _value, $Res Function(_$AgentDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidDeviceToken = freezed,
    Object? isBlocked = freezed,
    Object? blockedTill = freezed,
    Object? loginData = freezed,
    Object? agentId = freezed,
  }) {
    return _then(_$AgentDataImpl(
      isValidDeviceToken: freezed == isValidDeviceToken
          ? _value.isValidDeviceToken
          : isValidDeviceToken // ignore: cast_nullable_to_non_nullable
              as bool?,
      isBlocked: freezed == isBlocked
          ? _value.isBlocked
          : isBlocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockedTill: freezed == blockedTill
          ? _value.blockedTill
          : blockedTill // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      loginData: freezed == loginData
          ? _value.loginData
          : loginData // ignore: cast_nullable_to_non_nullable
              as LoginData?,
      agentId: freezed == agentId
          ? _value.agentId
          : agentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AgentDataImpl implements _AgentData {
  const _$AgentDataImpl(
      {@JsonKey(name: "isValidDeviceToken") this.isValidDeviceToken,
      @JsonKey(name: "isBlocked") this.isBlocked,
      @JsonKey(name: "blockedTill") this.blockedTill,
      @JsonKey(name: "loginData") this.loginData,
      @JsonKey(name: "agentId") this.agentId});

  factory _$AgentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgentDataImplFromJson(json);

  @override
  @JsonKey(name: "isValidDeviceToken")
  final bool? isValidDeviceToken;
  @override
  @JsonKey(name: "isBlocked")
  final bool? isBlocked;
  @override
  @JsonKey(name: "blockedTill")
  final DateTime? blockedTill;
  @override
  @JsonKey(name: "loginData")
  final LoginData? loginData;
  @override
  @JsonKey(name: "agentId")
  final int? agentId;

  @override
  String toString() {
    return 'AgentData(isValidDeviceToken: $isValidDeviceToken, isBlocked: $isBlocked, blockedTill: $blockedTill, loginData: $loginData, agentId: $agentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgentDataImpl &&
            (identical(other.isValidDeviceToken, isValidDeviceToken) ||
                other.isValidDeviceToken == isValidDeviceToken) &&
            (identical(other.isBlocked, isBlocked) ||
                other.isBlocked == isBlocked) &&
            (identical(other.blockedTill, blockedTill) ||
                other.blockedTill == blockedTill) &&
            (identical(other.loginData, loginData) ||
                other.loginData == loginData) &&
            (identical(other.agentId, agentId) || other.agentId == agentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isValidDeviceToken, isBlocked,
      blockedTill, loginData, agentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgentDataImplCopyWith<_$AgentDataImpl> get copyWith =>
      __$$AgentDataImplCopyWithImpl<_$AgentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgentDataImplToJson(
      this,
    );
  }
}

abstract class _AgentData implements AgentData {
  const factory _AgentData(
      {@JsonKey(name: "isValidDeviceToken") final bool? isValidDeviceToken,
      @JsonKey(name: "isBlocked") final bool? isBlocked,
      @JsonKey(name: "blockedTill") final DateTime? blockedTill,
      @JsonKey(name: "loginData") final LoginData? loginData,
      @JsonKey(name: "agentId") final int? agentId}) = _$AgentDataImpl;

  factory _AgentData.fromJson(Map<String, dynamic> json) =
      _$AgentDataImpl.fromJson;

  @override
  @JsonKey(name: "isValidDeviceToken")
  bool? get isValidDeviceToken;
  @override
  @JsonKey(name: "isBlocked")
  bool? get isBlocked;
  @override
  @JsonKey(name: "blockedTill")
  DateTime? get blockedTill;
  @override
  @JsonKey(name: "loginData")
  LoginData? get loginData;
  @override
  @JsonKey(name: "agentId")
  int? get agentId;
  @override
  @JsonKey(ignore: true)
  _$$AgentDataImplCopyWith<_$AgentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return _LoginData.fromJson(json);
}

/// @nodoc
mixin _$LoginData {
  @JsonKey(name: "isFPLogin")
  bool? get isFpLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "mobileNo")
  String? get mobileNo => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "deviceToken")
  String? get deviceToken => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImagePath")
  String? get profileImagePath => throw _privateConstructorUsedError;
  @JsonKey(name: "isMPINExpired")
  bool? get isMpinExpired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res, LoginData>;
  @useResult
  $Res call(
      {@JsonKey(name: "isFPLogin") bool? isFpLogin,
      @JsonKey(name: "mobileNo") String? mobileNo,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "profileImagePath") String? profileImagePath,
      @JsonKey(name: "isMPINExpired") bool? isMpinExpired});
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res, $Val extends LoginData>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFpLogin = freezed,
    Object? mobileNo = freezed,
    Object? name = freezed,
    Object? deviceToken = freezed,
    Object? profileImagePath = freezed,
    Object? isMpinExpired = freezed,
  }) {
    return _then(_value.copyWith(
      isFpLogin: freezed == isFpLogin
          ? _value.isFpLogin
          : isFpLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImagePath: freezed == profileImagePath
          ? _value.profileImagePath
          : profileImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isMpinExpired: freezed == isMpinExpired
          ? _value.isMpinExpired
          : isMpinExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDataImplCopyWith<$Res>
    implements $LoginDataCopyWith<$Res> {
  factory _$$LoginDataImplCopyWith(
          _$LoginDataImpl value, $Res Function(_$LoginDataImpl) then) =
      __$$LoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isFPLogin") bool? isFpLogin,
      @JsonKey(name: "mobileNo") String? mobileNo,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "deviceToken") String? deviceToken,
      @JsonKey(name: "profileImagePath") String? profileImagePath,
      @JsonKey(name: "isMPINExpired") bool? isMpinExpired});
}

/// @nodoc
class __$$LoginDataImplCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$LoginDataImpl>
    implements _$$LoginDataImplCopyWith<$Res> {
  __$$LoginDataImplCopyWithImpl(
      _$LoginDataImpl _value, $Res Function(_$LoginDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFpLogin = freezed,
    Object? mobileNo = freezed,
    Object? name = freezed,
    Object? deviceToken = freezed,
    Object? profileImagePath = freezed,
    Object? isMpinExpired = freezed,
  }) {
    return _then(_$LoginDataImpl(
      isFpLogin: freezed == isFpLogin
          ? _value.isFpLogin
          : isFpLogin // ignore: cast_nullable_to_non_nullable
              as bool?,
      mobileNo: freezed == mobileNo
          ? _value.mobileNo
          : mobileNo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceToken: freezed == deviceToken
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImagePath: freezed == profileImagePath
          ? _value.profileImagePath
          : profileImagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isMpinExpired: freezed == isMpinExpired
          ? _value.isMpinExpired
          : isMpinExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataImpl implements _LoginData {
  const _$LoginDataImpl(
      {@JsonKey(name: "isFPLogin") this.isFpLogin,
      @JsonKey(name: "mobileNo") this.mobileNo,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "deviceToken") this.deviceToken,
      @JsonKey(name: "profileImagePath") this.profileImagePath,
      @JsonKey(name: "isMPINExpired") this.isMpinExpired});

  factory _$LoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataImplFromJson(json);

  @override
  @JsonKey(name: "isFPLogin")
  final bool? isFpLogin;
  @override
  @JsonKey(name: "mobileNo")
  final String? mobileNo;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "deviceToken")
  final String? deviceToken;
  @override
  @JsonKey(name: "profileImagePath")
  final String? profileImagePath;
  @override
  @JsonKey(name: "isMPINExpired")
  final bool? isMpinExpired;

  @override
  String toString() {
    return 'LoginData(isFpLogin: $isFpLogin, mobileNo: $mobileNo, name: $name, deviceToken: $deviceToken, profileImagePath: $profileImagePath, isMpinExpired: $isMpinExpired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataImpl &&
            (identical(other.isFpLogin, isFpLogin) ||
                other.isFpLogin == isFpLogin) &&
            (identical(other.mobileNo, mobileNo) ||
                other.mobileNo == mobileNo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.deviceToken, deviceToken) ||
                other.deviceToken == deviceToken) &&
            (identical(other.profileImagePath, profileImagePath) ||
                other.profileImagePath == profileImagePath) &&
            (identical(other.isMpinExpired, isMpinExpired) ||
                other.isMpinExpired == isMpinExpired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isFpLogin, mobileNo, name,
      deviceToken, profileImagePath, isMpinExpired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      __$$LoginDataImplCopyWithImpl<_$LoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataImplToJson(
      this,
    );
  }
}

abstract class _LoginData implements LoginData {
  const factory _LoginData(
          {@JsonKey(name: "isFPLogin") final bool? isFpLogin,
          @JsonKey(name: "mobileNo") final String? mobileNo,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "deviceToken") final String? deviceToken,
          @JsonKey(name: "profileImagePath") final String? profileImagePath,
          @JsonKey(name: "isMPINExpired") final bool? isMpinExpired}) =
      _$LoginDataImpl;

  factory _LoginData.fromJson(Map<String, dynamic> json) =
      _$LoginDataImpl.fromJson;

  @override
  @JsonKey(name: "isFPLogin")
  bool? get isFpLogin;
  @override
  @JsonKey(name: "mobileNo")
  String? get mobileNo;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "deviceToken")
  String? get deviceToken;
  @override
  @JsonKey(name: "profileImagePath")
  String? get profileImagePath;
  @override
  @JsonKey(name: "isMPINExpired")
  bool? get isMpinExpired;
  @override
  @JsonKey(ignore: true)
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppSettingsData _$AppSettingsDataFromJson(Map<String, dynamic> json) {
  return _AppSettingsData.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsData {
  @JsonKey(name: "currentServerDate")
  String? get currentServerDate => throw _privateConstructorUsedError;
  @JsonKey(name: "enableSSLPinning")
  bool? get enableSslPinning => throw _privateConstructorUsedError;
  @JsonKey(name: "keys")
  String? get keys => throw _privateConstructorUsedError;
  @JsonKey(name: "appShareLink")
  String? get appShareLink => throw _privateConstructorUsedError;
  @JsonKey(name: "fcmToken")
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: "languageId")
  int? get languageId => throw _privateConstructorUsedError;
  @JsonKey(name: "dmsLink")
  String? get dmsLink => throw _privateConstructorUsedError;
  @JsonKey(name: "tempDMSLink")
  String? get tempDmsLink => throw _privateConstructorUsedError;
  @JsonKey(name: "callUsNumber")
  String? get callUsNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "appDemoLink")
  String? get appDemoLink => throw _privateConstructorUsedError;
  @JsonKey(name: "tncurl")
  String? get tncurl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppSettingsDataCopyWith<AppSettingsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsDataCopyWith<$Res> {
  factory $AppSettingsDataCopyWith(
          AppSettingsData value, $Res Function(AppSettingsData) then) =
      _$AppSettingsDataCopyWithImpl<$Res, AppSettingsData>;
  @useResult
  $Res call(
      {@JsonKey(name: "currentServerDate") String? currentServerDate,
      @JsonKey(name: "enableSSLPinning") bool? enableSslPinning,
      @JsonKey(name: "keys") String? keys,
      @JsonKey(name: "appShareLink") String? appShareLink,
      @JsonKey(name: "fcmToken") String? fcmToken,
      @JsonKey(name: "languageId") int? languageId,
      @JsonKey(name: "dmsLink") String? dmsLink,
      @JsonKey(name: "tempDMSLink") String? tempDmsLink,
      @JsonKey(name: "callUsNumber") String? callUsNumber,
      @JsonKey(name: "appDemoLink") String? appDemoLink,
      @JsonKey(name: "tncurl") String? tncurl});
}

/// @nodoc
class _$AppSettingsDataCopyWithImpl<$Res, $Val extends AppSettingsData>
    implements $AppSettingsDataCopyWith<$Res> {
  _$AppSettingsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentServerDate = freezed,
    Object? enableSslPinning = freezed,
    Object? keys = freezed,
    Object? appShareLink = freezed,
    Object? fcmToken = freezed,
    Object? languageId = freezed,
    Object? dmsLink = freezed,
    Object? tempDmsLink = freezed,
    Object? callUsNumber = freezed,
    Object? appDemoLink = freezed,
    Object? tncurl = freezed,
  }) {
    return _then(_value.copyWith(
      currentServerDate: freezed == currentServerDate
          ? _value.currentServerDate
          : currentServerDate // ignore: cast_nullable_to_non_nullable
              as String?,
      enableSslPinning: freezed == enableSslPinning
          ? _value.enableSslPinning
          : enableSslPinning // ignore: cast_nullable_to_non_nullable
              as bool?,
      keys: freezed == keys
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as String?,
      appShareLink: freezed == appShareLink
          ? _value.appShareLink
          : appShareLink // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      dmsLink: freezed == dmsLink
          ? _value.dmsLink
          : dmsLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tempDmsLink: freezed == tempDmsLink
          ? _value.tempDmsLink
          : tempDmsLink // ignore: cast_nullable_to_non_nullable
              as String?,
      callUsNumber: freezed == callUsNumber
          ? _value.callUsNumber
          : callUsNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      appDemoLink: freezed == appDemoLink
          ? _value.appDemoLink
          : appDemoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tncurl: freezed == tncurl
          ? _value.tncurl
          : tncurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsDataImplCopyWith<$Res>
    implements $AppSettingsDataCopyWith<$Res> {
  factory _$$AppSettingsDataImplCopyWith(_$AppSettingsDataImpl value,
          $Res Function(_$AppSettingsDataImpl) then) =
      __$$AppSettingsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "currentServerDate") String? currentServerDate,
      @JsonKey(name: "enableSSLPinning") bool? enableSslPinning,
      @JsonKey(name: "keys") String? keys,
      @JsonKey(name: "appShareLink") String? appShareLink,
      @JsonKey(name: "fcmToken") String? fcmToken,
      @JsonKey(name: "languageId") int? languageId,
      @JsonKey(name: "dmsLink") String? dmsLink,
      @JsonKey(name: "tempDMSLink") String? tempDmsLink,
      @JsonKey(name: "callUsNumber") String? callUsNumber,
      @JsonKey(name: "appDemoLink") String? appDemoLink,
      @JsonKey(name: "tncurl") String? tncurl});
}

/// @nodoc
class __$$AppSettingsDataImplCopyWithImpl<$Res>
    extends _$AppSettingsDataCopyWithImpl<$Res, _$AppSettingsDataImpl>
    implements _$$AppSettingsDataImplCopyWith<$Res> {
  __$$AppSettingsDataImplCopyWithImpl(
      _$AppSettingsDataImpl _value, $Res Function(_$AppSettingsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentServerDate = freezed,
    Object? enableSslPinning = freezed,
    Object? keys = freezed,
    Object? appShareLink = freezed,
    Object? fcmToken = freezed,
    Object? languageId = freezed,
    Object? dmsLink = freezed,
    Object? tempDmsLink = freezed,
    Object? callUsNumber = freezed,
    Object? appDemoLink = freezed,
    Object? tncurl = freezed,
  }) {
    return _then(_$AppSettingsDataImpl(
      currentServerDate: freezed == currentServerDate
          ? _value.currentServerDate
          : currentServerDate // ignore: cast_nullable_to_non_nullable
              as String?,
      enableSslPinning: freezed == enableSslPinning
          ? _value.enableSslPinning
          : enableSslPinning // ignore: cast_nullable_to_non_nullable
              as bool?,
      keys: freezed == keys
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as String?,
      appShareLink: freezed == appShareLink
          ? _value.appShareLink
          : appShareLink // ignore: cast_nullable_to_non_nullable
              as String?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      dmsLink: freezed == dmsLink
          ? _value.dmsLink
          : dmsLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tempDmsLink: freezed == tempDmsLink
          ? _value.tempDmsLink
          : tempDmsLink // ignore: cast_nullable_to_non_nullable
              as String?,
      callUsNumber: freezed == callUsNumber
          ? _value.callUsNumber
          : callUsNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      appDemoLink: freezed == appDemoLink
          ? _value.appDemoLink
          : appDemoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tncurl: freezed == tncurl
          ? _value.tncurl
          : tncurl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsDataImpl implements _AppSettingsData {
  const _$AppSettingsDataImpl(
      {@JsonKey(name: "currentServerDate") this.currentServerDate,
      @JsonKey(name: "enableSSLPinning") this.enableSslPinning,
      @JsonKey(name: "keys") this.keys,
      @JsonKey(name: "appShareLink") this.appShareLink,
      @JsonKey(name: "fcmToken") this.fcmToken,
      @JsonKey(name: "languageId") this.languageId,
      @JsonKey(name: "dmsLink") this.dmsLink,
      @JsonKey(name: "tempDMSLink") this.tempDmsLink,
      @JsonKey(name: "callUsNumber") this.callUsNumber,
      @JsonKey(name: "appDemoLink") this.appDemoLink,
      @JsonKey(name: "tncurl") this.tncurl});

  factory _$AppSettingsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsDataImplFromJson(json);

  @override
  @JsonKey(name: "currentServerDate")
  final String? currentServerDate;
  @override
  @JsonKey(name: "enableSSLPinning")
  final bool? enableSslPinning;
  @override
  @JsonKey(name: "keys")
  final String? keys;
  @override
  @JsonKey(name: "appShareLink")
  final String? appShareLink;
  @override
  @JsonKey(name: "fcmToken")
  final String? fcmToken;
  @override
  @JsonKey(name: "languageId")
  final int? languageId;
  @override
  @JsonKey(name: "dmsLink")
  final String? dmsLink;
  @override
  @JsonKey(name: "tempDMSLink")
  final String? tempDmsLink;
  @override
  @JsonKey(name: "callUsNumber")
  final String? callUsNumber;
  @override
  @JsonKey(name: "appDemoLink")
  final String? appDemoLink;
  @override
  @JsonKey(name: "tncurl")
  final String? tncurl;

  @override
  String toString() {
    return 'AppSettingsData(currentServerDate: $currentServerDate, enableSslPinning: $enableSslPinning, keys: $keys, appShareLink: $appShareLink, fcmToken: $fcmToken, languageId: $languageId, dmsLink: $dmsLink, tempDmsLink: $tempDmsLink, callUsNumber: $callUsNumber, appDemoLink: $appDemoLink, tncurl: $tncurl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsDataImpl &&
            (identical(other.currentServerDate, currentServerDate) ||
                other.currentServerDate == currentServerDate) &&
            (identical(other.enableSslPinning, enableSslPinning) ||
                other.enableSslPinning == enableSslPinning) &&
            (identical(other.keys, keys) || other.keys == keys) &&
            (identical(other.appShareLink, appShareLink) ||
                other.appShareLink == appShareLink) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.dmsLink, dmsLink) || other.dmsLink == dmsLink) &&
            (identical(other.tempDmsLink, tempDmsLink) ||
                other.tempDmsLink == tempDmsLink) &&
            (identical(other.callUsNumber, callUsNumber) ||
                other.callUsNumber == callUsNumber) &&
            (identical(other.appDemoLink, appDemoLink) ||
                other.appDemoLink == appDemoLink) &&
            (identical(other.tncurl, tncurl) || other.tncurl == tncurl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentServerDate,
      enableSslPinning,
      keys,
      appShareLink,
      fcmToken,
      languageId,
      dmsLink,
      tempDmsLink,
      callUsNumber,
      appDemoLink,
      tncurl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsDataImplCopyWith<_$AppSettingsDataImpl> get copyWith =>
      __$$AppSettingsDataImplCopyWithImpl<_$AppSettingsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsDataImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsData implements AppSettingsData {
  const factory _AppSettingsData(
      {@JsonKey(name: "currentServerDate") final String? currentServerDate,
      @JsonKey(name: "enableSSLPinning") final bool? enableSslPinning,
      @JsonKey(name: "keys") final String? keys,
      @JsonKey(name: "appShareLink") final String? appShareLink,
      @JsonKey(name: "fcmToken") final String? fcmToken,
      @JsonKey(name: "languageId") final int? languageId,
      @JsonKey(name: "dmsLink") final String? dmsLink,
      @JsonKey(name: "tempDMSLink") final String? tempDmsLink,
      @JsonKey(name: "callUsNumber") final String? callUsNumber,
      @JsonKey(name: "appDemoLink") final String? appDemoLink,
      @JsonKey(name: "tncurl") final String? tncurl}) = _$AppSettingsDataImpl;

  factory _AppSettingsData.fromJson(Map<String, dynamic> json) =
      _$AppSettingsDataImpl.fromJson;

  @override
  @JsonKey(name: "currentServerDate")
  String? get currentServerDate;
  @override
  @JsonKey(name: "enableSSLPinning")
  bool? get enableSslPinning;
  @override
  @JsonKey(name: "keys")
  String? get keys;
  @override
  @JsonKey(name: "appShareLink")
  String? get appShareLink;
  @override
  @JsonKey(name: "fcmToken")
  String? get fcmToken;
  @override
  @JsonKey(name: "languageId")
  int? get languageId;
  @override
  @JsonKey(name: "dmsLink")
  String? get dmsLink;
  @override
  @JsonKey(name: "tempDMSLink")
  String? get tempDmsLink;
  @override
  @JsonKey(name: "callUsNumber")
  String? get callUsNumber;
  @override
  @JsonKey(name: "appDemoLink")
  String? get appDemoLink;
  @override
  @JsonKey(name: "tncurl")
  String? get tncurl;
  @override
  @JsonKey(ignore: true)
  _$$AppSettingsDataImplCopyWith<_$AppSettingsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppStart _$AppStartFromJson(Map<String, dynamic> json) {
  return _AppStart.fromJson(json);
}

/// @nodoc
mixin _$AppStart {
  @JsonKey(name: "isDisabled")
  bool? get isDisabled => throw _privateConstructorUsedError;
  @JsonKey(name: "crd")
  DateTime? get crd => throw _privateConstructorUsedError;
  @JsonKey(name: "crdBy")
  int? get crdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "lmd")
  DateTime? get lmd => throw _privateConstructorUsedError;
  @JsonKey(name: "lmdBy")
  int? get lmdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "appStartId")
  int? get appStartId => throw _privateConstructorUsedError;
  @JsonKey(name: "platform")
  String? get platform => throw _privateConstructorUsedError;
  @JsonKey(name: "storeVersion")
  String? get storeVersion => throw _privateConstructorUsedError;
  @JsonKey(name: "apiVer")
  String? get apiVer => throw _privateConstructorUsedError;
  @JsonKey(name: "isForceUpdate")
  bool? get isForceUpdate => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "releaseDate")
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "isActive")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "channelId")
  String? get channelId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppStartCopyWith<AppStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStartCopyWith<$Res> {
  factory $AppStartCopyWith(AppStart value, $Res Function(AppStart) then) =
      _$AppStartCopyWithImpl<$Res, AppStart>;
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "appStartId") int? appStartId,
      @JsonKey(name: "platform") String? platform,
      @JsonKey(name: "storeVersion") String? storeVersion,
      @JsonKey(name: "apiVer") String? apiVer,
      @JsonKey(name: "isForceUpdate") bool? isForceUpdate,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "releaseDate") DateTime? releaseDate,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "channelId") String? channelId});
}

/// @nodoc
class _$AppStartCopyWithImpl<$Res, $Val extends AppStart>
    implements $AppStartCopyWith<$Res> {
  _$AppStartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? appStartId = freezed,
    Object? platform = freezed,
    Object? storeVersion = freezed,
    Object? apiVer = freezed,
    Object? isForceUpdate = freezed,
    Object? description = freezed,
    Object? releaseDate = freezed,
    Object? isActive = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_value.copyWith(
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      crd: freezed == crd
          ? _value.crd
          : crd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      crdBy: freezed == crdBy
          ? _value.crdBy
          : crdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lmd: freezed == lmd
          ? _value.lmd
          : lmd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lmdBy: freezed == lmdBy
          ? _value.lmdBy
          : lmdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      appStartId: freezed == appStartId
          ? _value.appStartId
          : appStartId // ignore: cast_nullable_to_non_nullable
              as int?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      storeVersion: freezed == storeVersion
          ? _value.storeVersion
          : storeVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      apiVer: freezed == apiVer
          ? _value.apiVer
          : apiVer // ignore: cast_nullable_to_non_nullable
              as String?,
      isForceUpdate: freezed == isForceUpdate
          ? _value.isForceUpdate
          : isForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStartImplCopyWith<$Res>
    implements $AppStartCopyWith<$Res> {
  factory _$$AppStartImplCopyWith(
          _$AppStartImpl value, $Res Function(_$AppStartImpl) then) =
      __$$AppStartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "isDisabled") bool? isDisabled,
      @JsonKey(name: "crd") DateTime? crd,
      @JsonKey(name: "crdBy") int? crdBy,
      @JsonKey(name: "lmd") DateTime? lmd,
      @JsonKey(name: "lmdBy") int? lmdBy,
      @JsonKey(name: "appStartId") int? appStartId,
      @JsonKey(name: "platform") String? platform,
      @JsonKey(name: "storeVersion") String? storeVersion,
      @JsonKey(name: "apiVer") String? apiVer,
      @JsonKey(name: "isForceUpdate") bool? isForceUpdate,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "releaseDate") DateTime? releaseDate,
      @JsonKey(name: "isActive") bool? isActive,
      @JsonKey(name: "channelId") String? channelId});
}

/// @nodoc
class __$$AppStartImplCopyWithImpl<$Res>
    extends _$AppStartCopyWithImpl<$Res, _$AppStartImpl>
    implements _$$AppStartImplCopyWith<$Res> {
  __$$AppStartImplCopyWithImpl(
      _$AppStartImpl _value, $Res Function(_$AppStartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisabled = freezed,
    Object? crd = freezed,
    Object? crdBy = freezed,
    Object? lmd = freezed,
    Object? lmdBy = freezed,
    Object? appStartId = freezed,
    Object? platform = freezed,
    Object? storeVersion = freezed,
    Object? apiVer = freezed,
    Object? isForceUpdate = freezed,
    Object? description = freezed,
    Object? releaseDate = freezed,
    Object? isActive = freezed,
    Object? channelId = freezed,
  }) {
    return _then(_$AppStartImpl(
      isDisabled: freezed == isDisabled
          ? _value.isDisabled
          : isDisabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      crd: freezed == crd
          ? _value.crd
          : crd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      crdBy: freezed == crdBy
          ? _value.crdBy
          : crdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      lmd: freezed == lmd
          ? _value.lmd
          : lmd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lmdBy: freezed == lmdBy
          ? _value.lmdBy
          : lmdBy // ignore: cast_nullable_to_non_nullable
              as int?,
      appStartId: freezed == appStartId
          ? _value.appStartId
          : appStartId // ignore: cast_nullable_to_non_nullable
              as int?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      storeVersion: freezed == storeVersion
          ? _value.storeVersion
          : storeVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      apiVer: freezed == apiVer
          ? _value.apiVer
          : apiVer // ignore: cast_nullable_to_non_nullable
              as String?,
      isForceUpdate: freezed == isForceUpdate
          ? _value.isForceUpdate
          : isForceUpdate // ignore: cast_nullable_to_non_nullable
              as bool?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelId: freezed == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppStartImpl implements _AppStart {
  const _$AppStartImpl(
      {@JsonKey(name: "isDisabled") this.isDisabled,
      @JsonKey(name: "crd") this.crd,
      @JsonKey(name: "crdBy") this.crdBy,
      @JsonKey(name: "lmd") this.lmd,
      @JsonKey(name: "lmdBy") this.lmdBy,
      @JsonKey(name: "appStartId") this.appStartId,
      @JsonKey(name: "platform") this.platform,
      @JsonKey(name: "storeVersion") this.storeVersion,
      @JsonKey(name: "apiVer") this.apiVer,
      @JsonKey(name: "isForceUpdate") this.isForceUpdate,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "releaseDate") this.releaseDate,
      @JsonKey(name: "isActive") this.isActive,
      @JsonKey(name: "channelId") this.channelId});

  factory _$AppStartImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppStartImplFromJson(json);

  @override
  @JsonKey(name: "isDisabled")
  final bool? isDisabled;
  @override
  @JsonKey(name: "crd")
  final DateTime? crd;
  @override
  @JsonKey(name: "crdBy")
  final int? crdBy;
  @override
  @JsonKey(name: "lmd")
  final DateTime? lmd;
  @override
  @JsonKey(name: "lmdBy")
  final int? lmdBy;
  @override
  @JsonKey(name: "appStartId")
  final int? appStartId;
  @override
  @JsonKey(name: "platform")
  final String? platform;
  @override
  @JsonKey(name: "storeVersion")
  final String? storeVersion;
  @override
  @JsonKey(name: "apiVer")
  final String? apiVer;
  @override
  @JsonKey(name: "isForceUpdate")
  final bool? isForceUpdate;
  @override
  @JsonKey(name: "description")
  final String? description;
  @override
  @JsonKey(name: "releaseDate")
  final DateTime? releaseDate;
  @override
  @JsonKey(name: "isActive")
  final bool? isActive;
  @override
  @JsonKey(name: "channelId")
  final String? channelId;

  @override
  String toString() {
    return 'AppStart(isDisabled: $isDisabled, crd: $crd, crdBy: $crdBy, lmd: $lmd, lmdBy: $lmdBy, appStartId: $appStartId, platform: $platform, storeVersion: $storeVersion, apiVer: $apiVer, isForceUpdate: $isForceUpdate, description: $description, releaseDate: $releaseDate, isActive: $isActive, channelId: $channelId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStartImpl &&
            (identical(other.isDisabled, isDisabled) ||
                other.isDisabled == isDisabled) &&
            (identical(other.crd, crd) || other.crd == crd) &&
            (identical(other.crdBy, crdBy) || other.crdBy == crdBy) &&
            (identical(other.lmd, lmd) || other.lmd == lmd) &&
            (identical(other.lmdBy, lmdBy) || other.lmdBy == lmdBy) &&
            (identical(other.appStartId, appStartId) ||
                other.appStartId == appStartId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.storeVersion, storeVersion) ||
                other.storeVersion == storeVersion) &&
            (identical(other.apiVer, apiVer) || other.apiVer == apiVer) &&
            (identical(other.isForceUpdate, isForceUpdate) ||
                other.isForceUpdate == isForceUpdate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDisabled,
      crd,
      crdBy,
      lmd,
      lmdBy,
      appStartId,
      platform,
      storeVersion,
      apiVer,
      isForceUpdate,
      description,
      releaseDate,
      isActive,
      channelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStartImplCopyWith<_$AppStartImpl> get copyWith =>
      __$$AppStartImplCopyWithImpl<_$AppStartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppStartImplToJson(
      this,
    );
  }
}

abstract class _AppStart implements AppStart {
  const factory _AppStart(
      {@JsonKey(name: "isDisabled") final bool? isDisabled,
      @JsonKey(name: "crd") final DateTime? crd,
      @JsonKey(name: "crdBy") final int? crdBy,
      @JsonKey(name: "lmd") final DateTime? lmd,
      @JsonKey(name: "lmdBy") final int? lmdBy,
      @JsonKey(name: "appStartId") final int? appStartId,
      @JsonKey(name: "platform") final String? platform,
      @JsonKey(name: "storeVersion") final String? storeVersion,
      @JsonKey(name: "apiVer") final String? apiVer,
      @JsonKey(name: "isForceUpdate") final bool? isForceUpdate,
      @JsonKey(name: "description") final String? description,
      @JsonKey(name: "releaseDate") final DateTime? releaseDate,
      @JsonKey(name: "isActive") final bool? isActive,
      @JsonKey(name: "channelId") final String? channelId}) = _$AppStartImpl;

  factory _AppStart.fromJson(Map<String, dynamic> json) =
      _$AppStartImpl.fromJson;

  @override
  @JsonKey(name: "isDisabled")
  bool? get isDisabled;
  @override
  @JsonKey(name: "crd")
  DateTime? get crd;
  @override
  @JsonKey(name: "crdBy")
  int? get crdBy;
  @override
  @JsonKey(name: "lmd")
  DateTime? get lmd;
  @override
  @JsonKey(name: "lmdBy")
  int? get lmdBy;
  @override
  @JsonKey(name: "appStartId")
  int? get appStartId;
  @override
  @JsonKey(name: "platform")
  String? get platform;
  @override
  @JsonKey(name: "storeVersion")
  String? get storeVersion;
  @override
  @JsonKey(name: "apiVer")
  String? get apiVer;
  @override
  @JsonKey(name: "isForceUpdate")
  bool? get isForceUpdate;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "releaseDate")
  DateTime? get releaseDate;
  @override
  @JsonKey(name: "isActive")
  bool? get isActive;
  @override
  @JsonKey(name: "channelId")
  String? get channelId;
  @override
  @JsonKey(ignore: true)
  _$$AppStartImplCopyWith<_$AppStartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Language _$LanguageFromJson(Map<String, dynamic> json) {
  return _Language.fromJson(json);
}

/// @nodoc
mixin _$Language {
  @JsonKey(name: "languageId")
  int? get languageId => throw _privateConstructorUsedError;
  @JsonKey(name: "languageCode")
  String? get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: "languageName")
  String? get languageName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageCopyWith<Language> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageCopyWith<$Res> {
  factory $LanguageCopyWith(Language value, $Res Function(Language) then) =
      _$LanguageCopyWithImpl<$Res, Language>;
  @useResult
  $Res call(
      {@JsonKey(name: "languageId") int? languageId,
      @JsonKey(name: "languageCode") String? languageCode,
      @JsonKey(name: "languageName") String? languageName});
}

/// @nodoc
class _$LanguageCopyWithImpl<$Res, $Val extends Language>
    implements $LanguageCopyWith<$Res> {
  _$LanguageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageId = freezed,
    Object? languageCode = freezed,
    Object? languageName = freezed,
  }) {
    return _then(_value.copyWith(
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      languageName: freezed == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageImplCopyWith<$Res>
    implements $LanguageCopyWith<$Res> {
  factory _$$LanguageImplCopyWith(
          _$LanguageImpl value, $Res Function(_$LanguageImpl) then) =
      __$$LanguageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "languageId") int? languageId,
      @JsonKey(name: "languageCode") String? languageCode,
      @JsonKey(name: "languageName") String? languageName});
}

/// @nodoc
class __$$LanguageImplCopyWithImpl<$Res>
    extends _$LanguageCopyWithImpl<$Res, _$LanguageImpl>
    implements _$$LanguageImplCopyWith<$Res> {
  __$$LanguageImplCopyWithImpl(
      _$LanguageImpl _value, $Res Function(_$LanguageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageId = freezed,
    Object? languageCode = freezed,
    Object? languageName = freezed,
  }) {
    return _then(_$LanguageImpl(
      languageId: freezed == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int?,
      languageCode: freezed == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String?,
      languageName: freezed == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageImpl implements _Language {
  const _$LanguageImpl(
      {@JsonKey(name: "languageId") this.languageId,
      @JsonKey(name: "languageCode") this.languageCode,
      @JsonKey(name: "languageName") this.languageName});

  factory _$LanguageImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageImplFromJson(json);

  @override
  @JsonKey(name: "languageId")
  final int? languageId;
  @override
  @JsonKey(name: "languageCode")
  final String? languageCode;
  @override
  @JsonKey(name: "languageName")
  final String? languageName;

  @override
  String toString() {
    return 'Language(languageId: $languageId, languageCode: $languageCode, languageName: $languageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageImpl &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, languageId, languageCode, languageName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      __$$LanguageImplCopyWithImpl<_$LanguageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageImplToJson(
      this,
    );
  }
}

abstract class _Language implements Language {
  const factory _Language(
          {@JsonKey(name: "languageId") final int? languageId,
          @JsonKey(name: "languageCode") final String? languageCode,
          @JsonKey(name: "languageName") final String? languageName}) =
      _$LanguageImpl;

  factory _Language.fromJson(Map<String, dynamic> json) =
      _$LanguageImpl.fromJson;

  @override
  @JsonKey(name: "languageId")
  int? get languageId;
  @override
  @JsonKey(name: "languageCode")
  String? get languageCode;
  @override
  @JsonKey(name: "languageName")
  String? get languageName;
  @override
  @JsonKey(ignore: true)
  _$$LanguageImplCopyWith<_$LanguageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
