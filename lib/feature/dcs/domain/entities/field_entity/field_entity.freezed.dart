// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FieldEntity _$FieldEntityFromJson(Map<String, dynamic> json) {
  return _FieldEntity.fromJson(json);
}

/// @nodoc
mixin _$FieldEntity {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  OrgEntity? get createdOrgId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldEntityCopyWith<FieldEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldEntityCopyWith<$Res> {
  factory $FieldEntityCopyWith(
          FieldEntity value, $Res Function(FieldEntity) then) =
      _$FieldEntityCopyWithImpl<$Res, FieldEntity>;
  @useResult
  $Res call({int id, String name, OrgEntity? createdOrgId});

  $OrgEntityCopyWith<$Res>? get createdOrgId;
}

/// @nodoc
class _$FieldEntityCopyWithImpl<$Res, $Val extends FieldEntity>
    implements $FieldEntityCopyWith<$Res> {
  _$FieldEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdOrgId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdOrgId: freezed == createdOrgId
          ? _value.createdOrgId
          : createdOrgId // ignore: cast_nullable_to_non_nullable
              as OrgEntity?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrgEntityCopyWith<$Res>? get createdOrgId {
    if (_value.createdOrgId == null) {
      return null;
    }

    return $OrgEntityCopyWith<$Res>(_value.createdOrgId!, (value) {
      return _then(_value.copyWith(createdOrgId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FieldEntityCopyWith<$Res>
    implements $FieldEntityCopyWith<$Res> {
  factory _$$_FieldEntityCopyWith(
          _$_FieldEntity value, $Res Function(_$_FieldEntity) then) =
      __$$_FieldEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, OrgEntity? createdOrgId});

  @override
  $OrgEntityCopyWith<$Res>? get createdOrgId;
}

/// @nodoc
class __$$_FieldEntityCopyWithImpl<$Res>
    extends _$FieldEntityCopyWithImpl<$Res, _$_FieldEntity>
    implements _$$_FieldEntityCopyWith<$Res> {
  __$$_FieldEntityCopyWithImpl(
      _$_FieldEntity _value, $Res Function(_$_FieldEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? createdOrgId = freezed,
  }) {
    return _then(_$_FieldEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdOrgId: freezed == createdOrgId
          ? _value.createdOrgId
          : createdOrgId // ignore: cast_nullable_to_non_nullable
              as OrgEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FieldEntity implements _FieldEntity {
  const _$_FieldEntity(
      {required this.id, required this.name, this.createdOrgId});

  factory _$_FieldEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FieldEntityFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final OrgEntity? createdOrgId;

  @override
  String toString() {
    return 'FieldEntity(id: $id, name: $name, createdOrgId: $createdOrgId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdOrgId, createdOrgId) ||
                other.createdOrgId == createdOrgId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, createdOrgId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldEntityCopyWith<_$_FieldEntity> get copyWith =>
      __$$_FieldEntityCopyWithImpl<_$_FieldEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FieldEntityToJson(
      this,
    );
  }
}

abstract class _FieldEntity implements FieldEntity {
  const factory _FieldEntity(
      {required final int id,
      required final String name,
      final OrgEntity? createdOrgId}) = _$_FieldEntity;

  factory _FieldEntity.fromJson(Map<String, dynamic> json) =
      _$_FieldEntity.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  OrgEntity? get createdOrgId;
  @override
  @JsonKey(ignore: true)
  _$$_FieldEntityCopyWith<_$_FieldEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
