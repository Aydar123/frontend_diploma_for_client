// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDataEntity _$$_UserDataEntityFromJson(Map<String, dynamic> json) =>
    _$_UserDataEntity(
      id: json['id'] as int,
      value: json['value'] as String?,
      userId: json['userId'] == null
          ? null
          : UserEntity.fromJson(json['userId'] as Map<String, dynamic>),
      fieldId: json['fieldId'] == null
          ? null
          : FieldEntity.fromJson(json['fieldId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDataEntityToJson(_$_UserDataEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'userId': instance.userId,
      'fieldId': instance.fieldId,
    };
