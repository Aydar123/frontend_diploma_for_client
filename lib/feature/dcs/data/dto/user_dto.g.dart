// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => UserDto(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      surname: json['surname'],
      name: json['name'],
      otchestvo: json['otchestvo'],
      gender: json['gender'],
      dob: json['dob'],
      phoneNumber: json['phoneNumber'],
      series: json['series'],
      number: json['number'],
      dateOfIssue: json['dateOfIssue'],
      codePodrazdel: json['codePodrazdel'],
      issuedBy: json['issuedBy'],
      snils: json['snils'],
      inn: json['inn'],
      addressReg: json['addressReg'],
      cityReg: json['cityReg'],
      addressActual: json['addressActual'],
      cityActual: json['cityActual'],
      accessToken: json['accessToken'],
      refreshToken: json['refreshToken'],
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'surname': instance.surname,
      'name': instance.name,
      'otchestvo': instance.otchestvo,
      'gender': instance.gender,
      'dob': instance.dob,
      'phoneNumber': instance.phoneNumber,
      'series': instance.series,
      'number': instance.number,
      'dateOfIssue': instance.dateOfIssue,
      'codePodrazdel': instance.codePodrazdel,
      'issuedBy': instance.issuedBy,
      'snils': instance.snils,
      'inn': instance.inn,
      'addressReg': instance.addressReg,
      'cityReg': instance.cityReg,
      'addressActual': instance.addressActual,
      'cityActual': instance.cityActual,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
