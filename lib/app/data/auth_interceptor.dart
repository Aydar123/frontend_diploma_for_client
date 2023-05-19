import 'package:dcs_43_frontend/app/di/init_di.dart';
import 'package:dcs_43_frontend/app/domain/app_api.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends QueuedInterceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

    //1. Получить accessToken из header
    final accessToken = locator.get<AuthCubit>().state.whenOrNull(
      authorized: (userEntity) => userEntity.accessToken
    );
    if (accessToken == null){
      super.onRequest(options, handler);
    } else {
      final headers = options.headers;
      headers["Authorization"] = "Bearer $accessToken";
      super.onRequest(options.copyWith(headers: headers), handler);
    }

  }

  //2. Обновить токен
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      try {
        //Обновляем токены
        await locator.get<AuthCubit>().refreshToken().then((token) async {
          if (token == null) {
            //Выбрасываем ошибку, если token = null
            super.onError(err, handler);
          } else {
            //Формируем новый accessToken
            err.requestOptions.headers["Authorization"] = "Bearer $token";
            //Отправляем запрос на backend
            final response = await locator.get<AppApi>().fetch(err.requestOptions);
            //Выход из перехватчика запросов
            return handler.resolve(response);
          }
        });
      } on DioError catch (error){
        super.onError(error, handler);
      }
    } else {
      super.onError(err, handler);
    }

  }

}