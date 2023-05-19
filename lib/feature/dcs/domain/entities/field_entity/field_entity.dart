import 'package:dcs_43_frontend/feature/dcs/domain/entities/org_entity/org_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_entity.freezed.dart';

part 'field_entity.g.dart';

@freezed
class FieldEntity with _$FieldEntity {

  const factory FieldEntity({
    required int id,
    required String name,
    OrgEntity? createdOrgId,
  }) = _FieldEntity;

  factory FieldEntity.fromJson(Map<String, dynamic> json) =>
      _$FieldEntityFromJson(json);
}
