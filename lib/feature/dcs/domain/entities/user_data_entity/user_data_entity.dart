import 'package:dcs_43_frontend/feature/dcs/domain/entities/field_entity/field_entity.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/entities/user_entity/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_entity.freezed.dart';

part 'user_data_entity.g.dart';

@freezed
class UserDataEntity with _$UserDataEntity {

  const factory UserDataEntity({
    required int id,
    String? value,
    required UserEntity? userId,
    required FieldEntity? fieldId,
  }) = _UserDataEntity;

  factory UserDataEntity.fromJson(Map<String, dynamic> json) =>
      _$UserDataEntityFromJson(json);
}