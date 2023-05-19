import 'dart:async';

import 'package:dcs_43_frontend/feature/dcs/domain/auth_repo.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/entities/org_entity/org_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'org_state.dart';

part 'org_cubit.freezed.dart';

part 'org_cubit.g.dart';

class OrgCubit extends HydratedCubit<OrgState> {
  OrgCubit(this.authRepo, this.authCubit)
      : super(const OrgState(asyncSnapshot: AsyncSnapshot.nothing())){
    sub = authCubit.stream.listen((event) {
      event.mapOrNull(
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final AuthRepo authRepo;
  final AuthCubit authCubit;
  late final StreamSubscription sub;

  //Отобразить все доступные организации
  //Метод ничего не возвращает, потому что просто меняет state
  Future<void> fetchAllOrg() async {
    // По желанию
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));

    await authRepo.fetchAllOrganizations().then((value) {
      //Получаем объект Iterable
      final Iterable iterable = value;

      //Возвращаем список полей и AsyncSnapshot
      emit(state.copyWith(
          orgList: iterable.map((e) => OrgEntity.fromJson(e)).toList(),
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  OrgState? fromJson(Map<String, dynamic> json) {
    return OrgState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(OrgState state) {
    return state.toJson();
  }

  void logOut() {
    emit(state.copyWith(
      asyncSnapshot: const AsyncSnapshot.nothing(),
      orgList: [],
    ));
  }

  @override
  Future<void> close() {
    //Отписаться от подписки
    sub.cancel();
    return super.close();
  }

}
