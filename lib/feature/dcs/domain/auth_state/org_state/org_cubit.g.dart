// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrgState _$$_OrgStateFromJson(Map<String, dynamic> json) => _$_OrgState(
      orgList: (json['orgList'] as List<dynamic>?)
              ?.map((e) => OrgEntity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OrgStateToJson(_$_OrgState instance) =>
    <String, dynamic>{
      'orgList': instance.orgList,
    };
