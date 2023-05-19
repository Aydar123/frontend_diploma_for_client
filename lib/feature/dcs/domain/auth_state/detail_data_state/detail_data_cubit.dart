import 'dart:async';

import 'package:dcs_43_frontend/feature/dcs/domain/auth_repo.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/auth_state/auth_cubit.dart';
import 'package:dcs_43_frontend/feature/dcs/domain/entities/field_entity/field_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'detail_data_state.dart';

part 'detail_data_cubit.freezed.dart';

part 'detail_data_cubit.g.dart';

class DetailDataCubit extends HydratedCubit<DetailDataState> {
  DetailDataCubit(this.authRepo, this.authCubit, this.id)
      : super(const DetailDataState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => getUniqueFieldsCurOrg(),
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final AuthRepo authRepo;
  final AuthCubit authCubit;

  @override
  final String id;

  //Подписка
  late final StreamSubscription authSub;

  Future<void> getUniqueFieldsCurOrg() async {
    // Добавим ожидание для отображения процесс-индикатора при
    // отображении всех постов из таблицы OrgField - можно так не делать
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));

    await authRepo.getUniqueFieldsCurOrg(id).then((value) {
      //Получаем объект Iterable
      final Iterable iterable = value;

      //Возвращаем список полей и AsyncSnapshot
      emit(state.copyWith(

        //Использую FieldEntity, потому что в серверной части запрос
        //строиться отностильно таблицы FieldEntity
          orgFieldList: iterable.map((e) => FieldEntity.fromJson(e)).toList(),
          asyncSnapshot:
          const AsyncSnapshot.withData(ConnectionState.done, true)));

    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> insertData(String orgId, String fieldId, String value) async {
    await authRepo.insertData(orgId: orgId, fieldId: fieldId, value: value).then((value) {
      //fetchOrgFields();
    }).catchError((error) {
      addError(error);
    });
  }


  void logOut() {
    emit(state.copyWith(
      asyncSnapshot: const AsyncSnapshot.nothing(),
      orgFieldList: [],
    ));
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  DetailDataState? fromJson(Map<String, dynamic> json) {
    return DetailDataState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(DetailDataState state) {
    return state.toJson();
  }

  //Чтобы не было утечки памяти
  @override
  Future<void> close() {
    //Отписаться от подписки
    authSub.cancel();
    return super.close();
  }

}