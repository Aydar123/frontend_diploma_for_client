// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FieldEntity _$$_FieldEntityFromJson(Map<String, dynamic> json) =>
    _$_FieldEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      createdOrgId: json['createdOrgId'] == null
          ? null
          : OrgEntity.fromJson(json['createdOrgId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FieldEntityToJson(_$_FieldEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'createdOrgId': instance.createdOrgId,
    };
