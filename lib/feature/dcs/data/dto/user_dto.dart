import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity/user_entity.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final dynamic id;
  final dynamic username;
  final dynamic email;
  final dynamic surname;
  final dynamic name;
  final dynamic otchestvo;
  final dynamic gender;
  final dynamic dob;
  final dynamic phoneNumber;
  final dynamic series;
  final dynamic number;
  final dynamic dateOfIssue;
  final dynamic codePodrazdel;
  final dynamic issuedBy;
  final dynamic snils;
  final dynamic inn;
  final dynamic addressReg;
  final dynamic cityReg;
  final dynamic addressActual;
  final dynamic cityActual;
  final dynamic accessToken;
  final dynamic refreshToken;

  UserDto(
      {this.id,
      this.username,
      this.email,
      this.surname,
      this.name,
      this.otchestvo,
      this.gender,
      this.dob,
      this.phoneNumber,
      this.series,
      this.number,
      this.dateOfIssue,
      this.codePodrazdel,
      this.issuedBy,
      this.snils,
      this.inn,
      this.addressReg,
      this.cityReg,
      this.addressActual,
      this.cityActual,
      this.accessToken,
      this.refreshToken});

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  UserEntity toEntity() {
    return UserEntity(
      email: email.toString(),
      username: username.toString(),
      id: id.toString(),
      surname: surname.toString(),
      name: name.toString(),
      otchestvo: otchestvo.toString(),
      gender: gender.toString(),
      dob: dob,
      phoneNumber: phoneNumber.toString(),
      series: series.toString(),
      number: number.toString(),
      dateOfIssue: dateOfIssue,
      codePodrazdel: codePodrazdel.toString(),
      issuedBy: issuedBy.toString(),
      snils: snils.toString(),
      inn: inn.toString(),
      addressReg: addressReg.toString(),
      cityReg: cityReg.toString(),
      addressActual: addressActual.toString(),
      cityActual: cityActual.toString(),
      accessToken: accessToken.toString(),
      refreshToken: refreshToken.toString()
    );
  }
}
