import 'package:dcs_43_frontend/app/domain/error_entity/error_entity.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_repo.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/entities/user_entity/user_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

part 'auth_cubit.g.dart';

@Singleton()
class AuthCubit extends HydratedCubit<AuthState> {
  //Как только создался этот Cubit - состояние по умолчанию - не авторизован.
  AuthCubit(this.authRepo) : super(AuthState.notAuthorized());

  final AuthRepo authRepo;

  Future<void> signIn(
      {required String username, required String password}) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity =
          await authRepo.signIn(username: username, password: password);
      emit(AuthState.authorized(userEntity));
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    }
  }

  Future<void> signUp(
      {required String username,
      required String password,
      required String email}) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity = await authRepo.signUp(
          username: username, email: email, password: password);
      emit(AuthState.authorized(userEntity));
    } catch (error, stateTrace) {
      addError(error, stateTrace);
    }
  }

  //Выход из системы
  void logOut() => emit(AuthState.notAuthorized());

  //Восстановление состояния
  //Если ранее вход был выполнен, то 2 раз авторизовываться не нужно
  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);
    return state.whenOrNull(
      authorized: (userEntity) => AuthState.authorized(userEntity),
    );
  }

  //Сохранение состояния
  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state
            .whenOrNull(
              authorized: (userEntity) => AuthState.authorized(userEntity),
            )
            ?.toJson() ??
        AuthState.notAuthorized().toJson();
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(AuthState.error(error));
    super.addError(error, stackTrace);
  }

  Future<String?> refreshToken() async {
    final refreshToken =
        state.whenOrNull(authorized: (userEntity) => userEntity.refreshToken);
    try {
      return await authRepo.refreshToken(refreshToken: refreshToken).then((value) {
        final UserEntity userEntity = value;
        emit(AuthState.authorized(userEntity));
        return userEntity.accessToken;
      });
    } catch (error, stateTrace) {
      //rethrow;
      addError(error, stateTrace);
    }
  }

  Future<void> getProfile() async {
    try {
      _updateUserState(const AsyncSnapshot.waiting());
      final UserEntity newUserEntity = await authRepo.getProfile();
      emit(state.maybeWhen(
        orElse: () => state,
        authorized: (userEntity) => AuthState.authorized(userEntity.copyWith(
          username: newUserEntity.username,
          email: newUserEntity.email,
          // surname: newUserEntity.surname,
          // name: newUserEntity.name,
          // otchestvo: newUserEntity.otchestvo,
          // gender: newUserEntity.gender,
          // dob: newUserEntity.dob,
          // phoneNumber: newUserEntity.phoneNumber,
          // series: newUserEntity.series,
          // number: newUserEntity.number,
          // dateOfIssue: newUserEntity.dateOfIssue,
          // codePodrazdel: newUserEntity.codePodrazdel,
          // issuedBy: newUserEntity.issuedBy,
          // snils: newUserEntity.snils,
          // inn: newUserEntity.inn,
          // addressReg: newUserEntity.addressReg,
          // cityReg: newUserEntity.cityReg,
          // addressActual: newUserEntity.addressActual,
          // cityActual: newUserEntity.cityActual,
        )),
      ));
      _updateUserState(const AsyncSnapshot.withData(
          ConnectionState.done, "Успешное получение данных"));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  Future<void> updateProfile({
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
  }) async {
    try {
      _updateUserState(const AsyncSnapshot.waiting());
      //await Future.delayed(const Duration(seconds: 1));
      final bool isEmptyUsername = username?.trim().isEmpty == true;
      final bool isEmptyEmail = email?.trim().isEmpty == true;
      final bool isEmptySurname = surname?.trim().isEmpty == true;
      final bool isEmptyName = name?.trim().isEmpty == true;
      final bool isEmptyOtchestvo = otchestvo?.trim().isEmpty == true;
      final bool isEmptyGender = gender?.trim().isEmpty == true;
      final bool isEmptyPhoneNumber = phoneNumber?.trim().isEmpty == true;
      final bool isEmptySeries = series?.trim().isEmpty == true;
      final bool isEmptyNumber = number?.trim().isEmpty == true;
      final bool isEmptyCodePodrazdel = codePodrazdel?.trim().isEmpty == true;
      final bool isEmptyIssuedBy = issuedBy?.trim().isEmpty == true;
      final bool isEmptySnils = snils?.trim().isEmpty == true;
      final bool isEmptyInn = inn?.trim().isEmpty == true;
      final bool isEmptyAddressReg = addressReg?.trim().isEmpty == true;
      final bool isEmptyCityReg = cityReg?.trim().isEmpty == true;
      final bool isEmptyAddressActual = addressActual?.trim().isEmpty == true;
      final bool isEmptyCityActual = cityActual?.trim().isEmpty == true;

      final UserEntity newUserEntity = await authRepo.updateProfile(
        username: isEmptyUsername ? null : username,
        email: isEmptyEmail ? null : email,
        surname: isEmptySurname ? null : surname,
        name: isEmptyName ? null : name,
        otchestvo: isEmptyOtchestvo ? null : otchestvo,
        gender: isEmptyGender ? null : gender,
        dob: dob,
        phoneNumber: isEmptyPhoneNumber ? null : phoneNumber,
        series: isEmptySeries ? null : series,
        number: isEmptyNumber ? null : number,
        dateOfIssue: dateOfIssue,
        codePodrazdel: isEmptyCodePodrazdel ? null : codePodrazdel,
        issuedBy: isEmptyIssuedBy ? null : issuedBy,
        snils: isEmptySnils ? null : snils,
        inn: isEmptyInn ? null : inn,
        addressReg: isEmptyAddressReg ? null : addressReg,
        cityReg: isEmptyCityReg ? null : cityReg,
        addressActual: isEmptyAddressActual ? null : addressActual,
        cityActual: isEmptyCityActual ? null : cityActual,
      );
      emit(state.maybeWhen(
        orElse: () => state,
        authorized: (userEntity) => AuthState.authorized(userEntity.copyWith(
          username: newUserEntity.username,
          email: newUserEntity.email,
          surname: newUserEntity.surname,
          name: newUserEntity.name,
          otchestvo: newUserEntity.otchestvo,
          gender: newUserEntity.gender,
          dob: newUserEntity.dob,
          phoneNumber: newUserEntity.phoneNumber,
          series: newUserEntity.series,
          number: newUserEntity.number,
          dateOfIssue: newUserEntity.dateOfIssue,
          codePodrazdel: newUserEntity.codePodrazdel,
          issuedBy: newUserEntity.issuedBy,
          snils: newUserEntity.snils,
          inn: newUserEntity.inn,
          addressReg: newUserEntity.addressReg,
          cityReg: newUserEntity.cityReg,
          addressActual: newUserEntity.addressActual,
          cityActual: newUserEntity.cityActual,
        )),
      ));
      _updateUserState(const AsyncSnapshot.withData(
          ConnectionState.done, "Успешное обновление данных"));
    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  Future<void> updatePassword({required String oldPassword, required String newPassword}) async {
    try {
      _updateUserState(const AsyncSnapshot.waiting());
      //await Future.delayed(const Duration(seconds: 1));

      if (newPassword.trim().isEmpty == true) {
        throw ErrorEntity(message: "Новый пароль пустой");
      }

      //message из backend
      final message = await authRepo.updatePassword(
          oldPassword: oldPassword, newPassword: newPassword);

      _updateUserState(AsyncSnapshot.withData(ConnectionState.done, message));

    } catch (error) {
      _updateUserState(AsyncSnapshot.withError(ConnectionState.done, error));
    }
  }

  void _updateUserState(AsyncSnapshot asyncSnapshot) {
    emit(state.maybeWhen(
      orElse: () => state,
      authorized: (userEntity) {
        return AuthState.authorized(
            userEntity.copyWith(userState: asyncSnapshot));
      },
    ));
  }

}
