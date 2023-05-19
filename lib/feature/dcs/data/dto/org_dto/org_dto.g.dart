// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrgDto _$OrgDtoFromJson(Map<String, dynamic> json) => OrgDto(
      id: json['id'],
      fullName: json['fullName'],
      name: json['name'],
      email: json['email'],
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
      city: json['city'],
      address: json['address'],
      inn: json['inn'],
      kpp: json['kpp'],
      ogrn: json['ogrn'],
    );

Map<String, dynamic> _$OrgDtoToJson(OrgDto instance) => <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'name': instance.name,
      'email': instance.email,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'city': instance.city,
      'address': instance.address,
      'inn': instance.inn,
      'kpp': instance.kpp,
      'ogrn': instance.ogrn,
    };
