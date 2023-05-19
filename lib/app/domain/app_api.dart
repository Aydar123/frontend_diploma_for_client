import 'package:dio/dio.dart';

abstract class AppApi {

  Future<dynamic> signUp({
    required String username,
    required String email,
    required String password
  });

  Future<dynamic> signIn({
    required String username,
    required String password
  });

  Future<dynamic> getProfile();

  Future<dynamic> updateProfile({
    String? username,
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
    String? cityActual
  });

  Future<dynamic> updatePassword({
    required String oldPassword,
    required String newPassword
  });

  Future<dynamic> refreshToken({String? refreshToken});

  Future<dynamic> request(String path);

  //1)
  Future<dynamic> fetch(RequestOptions requestOptions);

  Future<dynamic> fetchAllOrganizations();

  Future<dynamic> getUniqueFieldsCurOrg(String id);

  Future<dynamic> insertData({required String? orgId, required String? fieldId, String? value});

}