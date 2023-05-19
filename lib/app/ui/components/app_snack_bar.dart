import 'package:dcs_43_frontend/app/domain/error_entity/error_entity.dart';
import 'package:flutter/material.dart';

//Класс абстрактный, потому что его экземпляр создавать не будем
abstract class AppSnackBar {

  //Показать SnackBur если ошибка
  static void showSnackBarWithError(BuildContext context, ErrorEntity error) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(SnackBar(
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
          child: Text(
              maxLines: 5,
              "Error: ${error.errorMessage}, Message: ${error.message}"),
        )));
  }

  //Показать SnackBur если "результат действия"
  static void showSnackBarWithMessage(BuildContext context, String message) {
    ScaffoldMessenger.maybeOf(context)?.showSnackBar(SnackBar(
        duration: const Duration(seconds: 5),
        content: SingleChildScrollView(
          child: Text(maxLines: 5, message),
        )));
  }

  //Закрыть Snack Bar
  static void clearSnackBars(BuildContext context) {
    ScaffoldMessenger.maybeOf(context)?.clearSnackBars();
  }
}
