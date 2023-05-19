part of 'org_cubit.dart';

@freezed
class OrgState with _$OrgState {
  const factory OrgState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([]) List<OrgEntity> orgList,
  }) = _OrgState;

  factory OrgState.fromJson(Map<String, dynamic> json) =>
      _$OrgStateFromJson(json);
}