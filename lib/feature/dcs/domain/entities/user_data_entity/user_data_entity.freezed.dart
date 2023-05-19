// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDataEntity _$UserDataEntityFromJson(Map<String, dynamic> json) {
  return _UserDataEntity.fromJson(json);
}

/// @nodoc
mixin _$UserDataEntity {
  int get id => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  UserEntity? get userId => throw _privateConstructorUsedError;
  FieldEntity? get fieldId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataEntityCopyWith<UserDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataEntityCopyWith<$Res> {
  factory $UserDataEntityCopyWith(
          UserDataEntity value, $Res Function(UserDataEntity) then) =
      _$UserDataEntityCopyWithImpl<$Res, UserDataEntity>;
  @useResult
  $Res call({int id, String? value, UserEntity? userId, FieldEntity? fieldId});

  $UserEntityCopyWith<$Res>? get userId;
  $FieldEntityCopyWith<$Res>? get fieldId;
}

/// @nodoc
class _$UserDataEntityCopyWithImpl<$Res, $Val extends UserDataEntity>
    implements $UserDataEntityCopyWith<$Res> {
  _$UserDataEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
    Object? userId = freezed,
    Object? fieldId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as FieldEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res>? get userId {
    if (_value.userId == null) {
      return null;
    }

    return $UserEntityCopyWith<$Res>(_value.userId!, (value) {
      return _then(_value.copyWith(userId: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldEntityCopyWith<$Res>? get fieldId {
    if (_value.fieldId == null) {
      return null;
    }

    return $FieldEntityCopyWith<$Res>(_value.fieldId!, (value) {
      return _then(_value.copyWith(fieldId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserDataEntityCopyWith<$Res>
    implements $UserDataEntityCopyWith<$Res> {
  factory _$$_UserDataEntityCopyWith(
          _$_UserDataEntity value, $Res Function(_$_UserDataEntity) then) =
      __$$_UserDataEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? value, UserEntity? userId, FieldEntity? fieldId});

  @override
  $UserEntityCopyWith<$Res>? get userId;
  @override
  $FieldEntityCopyWith<$Res>? get fieldId;
}

/// @nodoc
class __$$_UserDataEntityCopyWithImpl<$Res>
    extends _$UserDataEntityCopyWithImpl<$Res, _$_UserDataEntity>
    implements _$$_UserDataEntityCopyWith<$Res> {
  __$$_UserDataEntityCopyWithImpl(
      _$_UserDataEntity _value, $Res Function(_$_UserDataEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = freezed,
    Object? userId = freezed,
    Object? fieldId = freezed,
  }) {
    return _then(_$_UserDataEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
      fieldId: freezed == fieldId
          ? _value.fieldId
          : fieldId // ignore: cast_nullable_to_non_nullable
              as FieldEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDataEntity implements _UserDataEntity {
  const _$_UserDataEntity(
      {required this.id,
      this.value,
      required this.userId,
      required this.fieldId});

  factory _$_UserDataEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataEntityFromJson(json);

  @override
  final int id;
  @override
  final String? value;
  @override
  final UserEntity? userId;
  @override
  final FieldEntity? fieldId;

  @override
  String toString() {
    return 'UserDataEntity(id: $id, value: $value, userId: $userId, fieldId: $fieldId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDataEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fieldId, fieldId) || other.fieldId == fieldId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, userId, fieldId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDataEntityCopyWith<_$_UserDataEntity> get copyWith =>
      __$$_UserDataEntityCopyWithImpl<_$_UserDataEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataEntityToJson(
      this,
    );
  }
}

abstract class _UserDataEntity implements UserDataEntity {
  const factory _UserDataEntity(
      {required final int id,
      final String? value,
      required final UserEntity? userId,
      required final FieldEntity? fieldId}) = _$_UserDataEntity;

  factory _UserDataEntity.fromJson(Map<String, dynamic> json) =
      _$_UserDataEntity.fromJson;

  @override
  int get id;
  @override
  String? get value;
  @override
  UserEntity? get userId;
  @override
  FieldEntity? get fieldId;
  @override
  @JsonKey(ignore: true)
  _$$_UserDataEntityCopyWith<_$_UserDataEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
