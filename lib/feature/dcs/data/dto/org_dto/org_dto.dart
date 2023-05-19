import 'package:dcs_43_frontend/feature/dcs/domain/entities/org_entity/org_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'org_dto.g.dart';

@JsonSerializable()
class OrgDto {
  final dynamic id;
  final dynamic fullName;
  final dynamic name;
  final dynamic email;
  final dynamic accessToken;
  final dynamic refreshToken;
  final dynamic city;
  final dynamic address;
  final dynamic inn;
  final dynamic kpp;
  final dynamic ogrn;

  OrgDto({
    this.id,
    this.fullName,
    this.name,
    this.email,
    this.accessToken,
    this.refreshToken,
    this.city,
    this.address,
    this.inn,
    this.kpp,
    this.ogrn,
  });

  factory OrgDto.fromJson(Map<String, dynamic> json) => _$OrgDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OrgDtoToJson(this);

  OrgEntity toEntity() {
    return OrgEntity(
      id: id,
      name: name.toString(),
      fullName: fullName.toString(),
      email: email.toString(),
      accessToken: accessToken.toString(),
      refreshToken: refreshToken.toString(),
      city: city.toString(),
      address: address.toString(),
      inn: inn.toString(),
      kpp: kpp.toString(),
      ogrn: ogrn.toString(),
    );
  }

}