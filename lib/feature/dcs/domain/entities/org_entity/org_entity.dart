import 'package:freezed_annotation/freezed_annotation.dart';

part 'org_entity.freezed.dart';
part 'org_entity.g.dart';

@freezed
class OrgEntity with _$OrgEntity {

  const factory OrgEntity({
    required int id,
    required String? name,
    required String? fullName,
    required String? email,
    String? accessToken,
    String? refreshToken,
    String? city,
    String? address,
    String? inn,
    String? kpp,
    String? ogrn,

    //@JsonKey(ignore: true) AsyncSnapshot? orgState,

  }) = _OrgEntity;

  factory OrgEntity.fromJson(Map<String, dynamic> json) =>
      _$OrgEntityFromJson(json);

}