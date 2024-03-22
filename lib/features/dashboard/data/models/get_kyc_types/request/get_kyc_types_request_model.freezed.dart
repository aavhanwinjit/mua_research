// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_kyc_types_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetKycTypesRequestModel _$GetKycTypesRequestModelFromJson(
    Map<String, dynamic> json) {
  return _GetKycTypesRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GetKycTypesRequestModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetKycTypesRequestModelCopyWith<GetKycTypesRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetKycTypesRequestModelCopyWith<$Res> {
  factory $GetKycTypesRequestModelCopyWith(GetKycTypesRequestModel value,
          $Res Function(GetKycTypesRequestModel) then) =
      _$GetKycTypesRequestModelCopyWithImpl<$Res, GetKycTypesRequestModel>;
  @useResult
  $Res call({@JsonKey(name: "id") String? id});
}

/// @nodoc
class _$GetKycTypesRequestModelCopyWithImpl<$Res,
        $Val extends GetKycTypesRequestModel>
    implements $GetKycTypesRequestModelCopyWith<$Res> {
  _$GetKycTypesRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetKycTypesRequestModelImplCopyWith<$Res>
    implements $GetKycTypesRequestModelCopyWith<$Res> {
  factory _$$GetKycTypesRequestModelImplCopyWith(
          _$GetKycTypesRequestModelImpl value,
          $Res Function(_$GetKycTypesRequestModelImpl) then) =
      __$$GetKycTypesRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "id") String? id});
}

/// @nodoc
class __$$GetKycTypesRequestModelImplCopyWithImpl<$Res>
    extends _$GetKycTypesRequestModelCopyWithImpl<$Res,
        _$GetKycTypesRequestModelImpl>
    implements _$$GetKycTypesRequestModelImplCopyWith<$Res> {
  __$$GetKycTypesRequestModelImplCopyWithImpl(
      _$GetKycTypesRequestModelImpl _value,
      $Res Function(_$GetKycTypesRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$GetKycTypesRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetKycTypesRequestModelImpl implements _GetKycTypesRequestModel {
  const _$GetKycTypesRequestModelImpl({@JsonKey(name: "id") this.id});

  factory _$GetKycTypesRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetKycTypesRequestModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;

  @override
  String toString() {
    return 'GetKycTypesRequestModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetKycTypesRequestModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetKycTypesRequestModelImplCopyWith<_$GetKycTypesRequestModelImpl>
      get copyWith => __$$GetKycTypesRequestModelImplCopyWithImpl<
          _$GetKycTypesRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetKycTypesRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GetKycTypesRequestModel implements GetKycTypesRequestModel {
  const factory _GetKycTypesRequestModel(
      {@JsonKey(name: "id") final String? id}) = _$GetKycTypesRequestModelImpl;

  factory _GetKycTypesRequestModel.fromJson(Map<String, dynamic> json) =
      _$GetKycTypesRequestModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GetKycTypesRequestModelImplCopyWith<_$GetKycTypesRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
