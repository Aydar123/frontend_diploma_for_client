// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrgEntity _$$_OrgEntityFromJson(Map<String, dynamic> json) => _$_OrgEntity(
      id: json['id'] as int,
      name: json['name'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      city: json['city'] as String?,
      address: json['address'] as String?,
      inn: json['inn'] as String?,
      kpp: json['kpp'] as String?,
      ogrn: json['ogrn'] as String?,
    );

Map<String, dynamic> _$$_OrgEntityToJson(_$_OrgEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fullName': instance.fullName,
      'email': instance.email,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'city': instance.city,
      'address': instance.address,
      'inn': instance.inn,
      'kpp': instance.kpp,
      'ogrn': instance.ogrn,
    };
