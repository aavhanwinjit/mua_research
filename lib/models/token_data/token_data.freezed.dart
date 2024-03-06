// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenData _$TokenDataFromJson(Map<String, dynamic> json) {
  return _TokenData.fromJson(json);
}

/// @nodoc
mixin _$TokenData {
  @JsonKey(name: "token")
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: "sessionId")
  String? get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: "expiry")
  int? get expiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenDataCopyWith<TokenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenDataCopyWith<$Res> {
  factory $TokenDataCopyWith(TokenData value, $Res Function(TokenData) then) =
      _$TokenDataCopyWithImpl<$Res, TokenData>;
  @useResult
  $Res call(
      {@JsonKey(name: "token") String? token,
      @JsonKey(name: "sessionId") String? sessionId,
      @JsonKey(name: "expiry") int? expiry});
}

/// @nodoc
class _$TokenDataCopyWithImpl<$Res, $Val extends TokenData>
    implements $TokenDataCopyWith<$Res> {
  _$TokenDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? sessionId = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenDataImplCopyWith<$Res>
    implements $TokenDataCopyWith<$Res> {
  factory _$$TokenDataImplCopyWith(
          _$TokenDataImpl value, $Res Function(_$TokenDataImpl) then) =
      __$$TokenDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "token") String? token,
      @JsonKey(name: "sessionId") String? sessionId,
      @JsonKey(name: "expiry") int? expiry});
}

/// @nodoc
class __$$TokenDataImplCopyWithImpl<$Res>
    extends _$TokenDataCopyWithImpl<$Res, _$TokenDataImpl>
    implements _$$TokenDataImplCopyWith<$Res> {
  __$$TokenDataImplCopyWithImpl(
      _$TokenDataImpl _value, $Res Function(_$TokenDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? sessionId = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_$TokenDataImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiry: freezed == expiry
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenDataImpl implements _TokenData {
  const _$TokenDataImpl(
      {@JsonKey(name: "token") this.token,
      @JsonKey(name: "sessionId") this.sessionId,
      @JsonKey(name: "expiry") this.expiry});

  factory _$TokenDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenDataImplFromJson(json);

  @override
  @JsonKey(name: "token")
  final String? token;
  @override
  @JsonKey(name: "sessionId")
  final String? sessionId;
  @override
  @JsonKey(name: "expiry")
  final int? expiry;

  @override
  String toString() {
    return 'TokenData(token: $token, sessionId: $sessionId, expiry: $expiry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenDataImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.expiry, expiry) || other.expiry == expiry));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, sessionId, expiry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenDataImplCopyWith<_$TokenDataImpl> get copyWith =>
      __$$TokenDataImplCopyWithImpl<_$TokenDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenDataImplToJson(
      this,
    );
  }
}

abstract class _TokenData implements TokenData {
  const factory _TokenData(
      {@JsonKey(name: "token") final String? token,
      @JsonKey(name: "sessionId") final String? sessionId,
      @JsonKey(name: "expiry") final int? expiry}) = _$TokenDataImpl;

  factory _TokenData.fromJson(Map<String, dynamic> json) =
      _$TokenDataImpl.fromJson;

  @override
  @JsonKey(name: "token")
  String? get token;
  @override
  @JsonKey(name: "sessionId")
  String? get sessionId;
  @override
  @JsonKey(name: "expiry")
  int? get expiry;
  @override
  @JsonKey(ignore: true)
  _$$TokenDataImplCopyWith<_$TokenDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
