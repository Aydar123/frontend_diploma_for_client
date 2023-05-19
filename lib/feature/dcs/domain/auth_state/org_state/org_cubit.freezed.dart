// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'org_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrgState _$OrgStateFromJson(Map<String, dynamic> json) {
  return _OrgState.fromJson(json);
}

/// @nodoc
mixin _$OrgState {
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError;
  List<OrgEntity> get orgList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrgStateCopyWith<OrgState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrgStateCopyWith<$Res> {
  factory $OrgStateCopyWith(OrgState value, $Res Function(OrgState) then) =
      _$OrgStateCopyWithImpl<$Res, OrgState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<OrgEntity> orgList});
}

/// @nodoc
class _$OrgStateCopyWithImpl<$Res, $Val extends OrgState>
    implements $OrgStateCopyWith<$Res> {
  _$OrgStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? orgList = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      orgList: null == orgList
          ? _value.orgList
          : orgList // ignore: cast_nullable_to_non_nullable
              as List<OrgEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrgStateCopyWith<$Res> implements $OrgStateCopyWith<$Res> {
  factory _$$_OrgStateCopyWith(
          _$_OrgState value, $Res Function(_$_OrgState) then) =
      __$$_OrgStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<OrgEntity> orgList});
}

/// @nodoc
class __$$_OrgStateCopyWithImpl<$Res>
    extends _$OrgStateCopyWithImpl<$Res, _$_OrgState>
    implements _$$_OrgStateCopyWith<$Res> {
  __$$_OrgStateCopyWithImpl(
      _$_OrgState _value, $Res Function(_$_OrgState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? orgList = null,
  }) {
    return _then(_$_OrgState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      orgList: null == orgList
          ? _value._orgList
          : orgList // ignore: cast_nullable_to_non_nullable
              as List<OrgEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrgState implements _OrgState {
  const _$_OrgState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<OrgEntity> orgList = const []})
      : _orgList = orgList;

  factory _$_OrgState.fromJson(Map<String, dynamic> json) =>
      _$$_OrgStateFromJson(json);

  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
  final List<OrgEntity> _orgList;
  @override
  @JsonKey()
  List<OrgEntity> get orgList {
    if (_orgList is EqualUnmodifiableListView) return _orgList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orgList);
  }

  @override
  String toString() {
    return 'OrgState(asyncSnapshot: $asyncSnapshot, orgList: $orgList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrgState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality().equals(other._orgList, _orgList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot,
      const DeepCollectionEquality().hash(_orgList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrgStateCopyWith<_$_OrgState> get copyWith =>
      __$$_OrgStateCopyWithImpl<_$_OrgState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrgStateToJson(
      this,
    );
  }
}

abstract class _OrgState implements OrgState {
  const factory _OrgState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<OrgEntity> orgList}) = _$_OrgState;

  factory _OrgState.fromJson(Map<String, dynamic> json) = _$_OrgState.fromJson;

  @override
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override
  List<OrgEntity> get orgList;
  @override
  @JsonKey(ignore: true)
  _$$_OrgStateCopyWith<_$_OrgState> get copyWith =>
      throw _privateConstructorUsedError;
}
