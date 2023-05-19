// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_data_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailDataState _$$_DetailDataStateFromJson(Map<String, dynamic> json) =>
    _$_DetailDataState(
      orgFieldList: (json['orgFieldList'] as List<dynamic>?)
              ?.map((e) => FieldEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DetailDataStateToJson(_$_DetailDataState instance) =>
    <String, dynamic>{
      'orgFieldList': instance.orgFieldList,
    };
