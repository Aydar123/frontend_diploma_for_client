part of 'detail_data_cubit.dart';

@freezed
class DetailDataState with _$DetailDataState {
  const factory DetailDataState({
    //Некотрое состояние поля
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    //Список полей
    @Default([]) List<FieldEntity> orgFieldList,
  }) = _DetailDataState;

  factory DetailDataState.fromJson(Map<String, dynamic> json) =>
      _$DetailDataStateFromJson(json);
}