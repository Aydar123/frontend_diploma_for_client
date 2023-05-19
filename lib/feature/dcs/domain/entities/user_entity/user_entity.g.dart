// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      email: json['email'] as String,
      username: json['username'] as String,
      id: json['id'] as String,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      surname: json['surname'] as String?,
      name: json['name'] as String?,
      otchestvo: json['otchestvo'] as String?,
      gender: json['gender'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      phoneNumber: json['phoneNumber'] as String?,
      series: json['series'] as String?,
      number: json['number'] as String?,
      dateOfIssue: json['dateOfIssue'] == null
          ? null
          : DateTime.parse(json['dateOfIssue'] as String),
      codePodrazdel: json['codePodrazdel'] as String?,
      issuedBy: json['issuedBy'] as String?,
      snils: json['snils'] as String?,
      inn: json['inn'] as String?,
      addressReg: json['addressReg'] as String?,
      cityReg: json['cityReg'] as String?,
      addressActual: json['addressActual'] as String?,
      cityActual: json['cityActual'] as String?,
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'id': instance.id,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'surname': instance.surname,
      'name': instance.name,
      'otchestvo': instance.otchestvo,
      'gender': instance.gender,
      'dob': instance.dob?.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'series': instance.series,
      'number': instance.number,
      'dateOfIssue': instance.dateOfIssue?.toIso8601String(),
      'codePodrazdel': instance.codePodrazdel,
      'issuedBy': instance.issuedBy,
      'snils': instance.snils,
      'inn': instance.inn,
      'addressReg': instance.addressReg,
      'cityReg': instance.cityReg,
      'addressActual': instance.addressActual,
      'cityActual': instance.cityActual,
    };
