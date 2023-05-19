import 'package:dcs_43_frontend/app/domain/app_api.dart';
import 'package:dcs_43_frontend/app/domain/app_config.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'auth_interceptor.dart';

//Библиотека DIO нужна для работы с сетью
@Singleton(as: AppApi)
class DioAppApi implements AppApi {
  late final Dio dio;
  //Для обновления токенов
  late final Dio dioTokens;

  //Создали Dio контейнер, который будет конфигурировать с HTTP
  DioAppApi(AppConfig appConfig) {
    final options =
        BaseOptions(baseUrl: appConfig.baseUrl, connectTimeout: 15000);
    dio = Dio(options);
    dioTokens = Dio(options);

    //Удобно для дэбага, показывает в консоли результат запроса
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
      dioTokens.interceptors.add(PrettyDioLogger());
    }

    //Вызов метода addInterceptor!!!!!!!!!
    dio.interceptors.add(AuthInterceptor());
  }

  @override
  Future<Response> getProfile() {
    try {
      return dio.get(":7100/clientProfile");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> refreshToken({String? refreshToken}) {
    try {
      return dioTokens.post(":7100/clientAuth/$refreshToken");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signIn(
      {required String username, required String password}) {
    try {
      //Когда сделаю NginX - убрать :7100 и оставить просто /clientAuth
      return dio.post(":7100/clientAuth",
          data: {"username": username, "password": password});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signUp(
      {required String username,
      required String email,
      required String password}) {
    try {
      //Когда сделаю NginX - убрать :7100 и оставить просто /clientAuth
      return dio.put(
          ":7100/clientAuth",
          data: {
            "username": username,
            "password": password,
            "email": email
          });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> updatePassword(
      {required String oldPassword, required String newPassword}) {
    return dio.put(":7100/clientProfile", queryParameters: {
      "oldPassword": oldPassword,
      "newPassword": newPassword,
    });
  }

  @override
  Future<Response> updateProfile(
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
      String? cityActual}) {
    return dio.post(":7100/clientProfile", data: {
      "username": username,
      "email": email,
      "surname": surname,
      "name": name,
      "otchestvo": otchestvo,
      "gender": gender,
      "dob": dob,
      "phoneNumber": phoneNumber,
      "series": series,
      "number": number,
      "dateOfIssue": dateOfIssue,
      "codePodrazdel": codePodrazdel,
      "issuedBy": issuedBy,
      "snils": snils,
      "inn": inn,
      "addressReg": addressReg,
      "cityReg": cityReg,
      "addressActual": addressActual,
      "cityActual": cityActual,
    });
  }

  @override
  Future request(String path) {
    try {
      return dio.request(path);
    } catch (_) {
      rethrow;
    }
  }

  // 2)
  @override
  Future fetch(RequestOptions requestOptions) {
    return dioTokens.fetch(requestOptions);
  }

  @override
  Future fetchAllOrganizations() {
    return dio.get(":7100/clientOrgSelection");
  }

  @override
  Future getUniqueFieldsCurOrg(String id) {
    return dio.get(":7100/clientOrgSelection/$id");
  }

  @override
  Future<Response> insertData({required String? orgId, required String? fieldId, String? value}) {
    return dio.post(":7100/clientOrgSelection/$orgId/$fieldId",
        data: {
          "value": value,
        }
    );
  }



}
