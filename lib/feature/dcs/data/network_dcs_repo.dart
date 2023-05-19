import 'package:dcs_43_frontend/app/domain/app_api.dart';
import 'package:dcs_43_frontend/feature/dcs/data/dto/user_dto.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_repo.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/entities/user_entity/user_entity.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
//@prod
class NetworkDcsRepo implements AuthRepo {
  final AppApi api;

  NetworkDcsRepo(this.api);

  @override
  Future<UserEntity> getProfile() async {
    try {
      final response = await api.getProfile();
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> refreshToken({String? refreshToken}) async {
    try {
      final response = await api.refreshToken(refreshToken: refreshToken);
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signIn(
      {required String username, required String password}) async {
    try {
      //Когда сделаю NginX - убрать :7100 и оставить просто /clientAuth
      final response = await api.signIn(
        username: username,
        password: password,
      );
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signUp(
      {required String username,
      required String email,
      required String password}) async {
    try {
      //Когда сделаю NginX - убрать :7100 и оставить просто /clientAuth
      final response = await api.signUp(
        username: username,
        email: email,
        password: password
      );
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  //Возвращаем String
  @override
  Future<String> updatePassword(
      {required String oldPassword, required String newPassword}) async {
    try {
      final Response response = await api.updatePassword(
        oldPassword: oldPassword,
        newPassword: newPassword,
      );
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> updateProfile(
      {String? username,
      String? email,
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
      String? cityActual}) async {
    try {
      final response = await api.updateProfile(
        username: username,
        email: email,
        surname: surname,
        name: name,
        otchestvo: otchestvo,
        gender: gender,
        dob: dob,
        phoneNumber: phoneNumber,
        series: series,
        number: number,
        dateOfIssue: dateOfIssue,
        codePodrazdel: codePodrazdel,
        issuedBy: issuedBy,
        snils: snils,
        inn: inn,
        addressReg: addressReg,
        cityReg: cityReg,
        addressActual: addressActual,
        cityActual: cityActual
      );
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Iterable> fetchAllOrganizations() async {
    try{
      final response = await api.fetchAllOrganizations();
      return response.data;
    }catch (_) {
      rethrow;
    }
  }

  @override
  Future<Iterable> getUniqueFieldsCurOrg(String id) async {
    try{
      final response = await api.getUniqueFieldsCurOrg(id);
      return response.data;
    }catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> insertData({required String? orgId, required String? fieldId, String? value}) async {
    try{
      final response = await api.insertData(orgId: orgId, fieldId: fieldId, value: value);
      return response.data["message"];
    }catch(_) {
      rethrow;
    }

  }




}
