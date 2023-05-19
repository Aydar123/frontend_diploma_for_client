
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String email,
    required String username,
    required String id,
    String? accessToken,
    String? refreshToken,
    String? surname,
    String? name,
    String? otchestvo,
    String? gender,
    DateTime? dob,
    String? phoneNumber,
    String? series,
    String? number,
    DateTime? dateOfIssue,
    String? codePodrazdel,
    String? issuedBy,
    String? snils,
    String? inn,
    String? addressReg,
    String? cityReg,
    String? addressActual,
    String? cityActual,
    //Для того, чтобы после неудачного изменения username or email приложение
    //не разлогинивалось
    @JsonKey(ignore: true) AsyncSnapshot? userState,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

}