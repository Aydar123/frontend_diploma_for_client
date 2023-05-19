
import 'package:dcs_43_frontend/app/domain/app_config.dart';
import 'package:injectable/injectable.dart';

//dev - приложение обращается к dev-серверу (у нас его нет,
// но вы можете его создать например на локальной машине,
// аналогично тому как мы разворачивали сервер на удаленной машине).

//prod - приложение обращается к prod-серверу, это наш основной сервер,
// который мы развернули на удаленной машине.

//test -  здесь мы не будем обращаться к сети, а будем использовать
// моковые репозитории.

@Singleton(as: AppConfig)
@prod
class ProdAppConfig implements AppConfig {

  @override
  //Адрес удаленного сервера
  String get baseUrl => "http://82.146.46.165";

  @override
  String get host => Environment.prod;

}

@Singleton(as: AppConfig)
@dev
class DevAppConfig implements AppConfig {

  @override
  String get baseUrl => "localhost";

  @override
  String get host => Environment.dev;

}

@Singleton(as: AppConfig)
@test
class TestAppConfig implements AppConfig {

  @override
  String get baseUrl => "_";

  @override
  String get host => Environment.test;

}