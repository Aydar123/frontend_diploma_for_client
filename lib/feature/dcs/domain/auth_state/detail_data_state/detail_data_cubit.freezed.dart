// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DetailDataState _$DetailDataStateFromJson(Map<String, dynamic> json) {
  return _DetailDataState.fromJson(json);
}

/// @nodoc
mixin _$DetailDataState {
//Некотрое состояние поля
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot =>
      throw _privateConstructorUsedError; //Список полей
  List<FieldEntity> get orgFieldList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailDataStateCopyWith<DetailDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDataStateCopyWith<$Res> {
  factory $DetailDataStateCopyWith(
          DetailDataState value, $Res Function(DetailDataState) then) =
      _$DetailDataStateCopyWithImpl<$Res, DetailDataState>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<FieldEntity> orgFieldList});
}

/// @nodoc
class _$DetailDataStateCopyWithImpl<$Res, $Val extends DetailDataState>
    implements $DetailDataStateCopyWith<$Res> {
  _$DetailDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? orgFieldList = null,
  }) {
    return _then(_value.copyWith(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      orgFieldList: null == orgFieldList
          ? _value.orgFieldList
          : orgFieldList // ignore: cast_nullable_to_non_nullable
              as List<FieldEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailDataStateCopyWith<$Res>
    implements $DetailDataStateCopyWith<$Res> {
  factory _$$_DetailDataStateCopyWith(
          _$_DetailDataState value, $Res Function(_$_DetailDataState) then) =
      __$$_DetailDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true) AsyncSnapshot<dynamic>? asyncSnapshot,
      List<FieldEntity> orgFieldList});
}

/// @nodoc
class __$$_DetailDataStateCopyWithImpl<$Res>
    extends _$DetailDataStateCopyWithImpl<$Res, _$_DetailDataState>
    implements _$$_DetailDataStateCopyWith<$Res> {
  __$$_DetailDataStateCopyWithImpl(
      _$_DetailDataState _value, $Res Function(_$_DetailDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncSnapshot = freezed,
    Object? orgFieldList = null,
  }) {
    return _then(_$_DetailDataState(
      asyncSnapshot: freezed == asyncSnapshot
          ? _value.asyncSnapshot
          : asyncSnapshot // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
      orgFieldList: null == orgFieldList
          ? _value._orgFieldList
          : orgFieldList // ignore: cast_nullable_to_non_nullable
              as List<FieldEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DetailDataState implements _DetailDataState {
  const _$_DetailDataState(
      {@JsonKey(ignore: true) this.asyncSnapshot,
      final List<FieldEntity> orgFieldList = const []})
      : _orgFieldList = orgFieldList;

  factory _$_DetailDataState.fromJson(Map<String, dynamic> json) =>
      _$$_DetailDataStateFromJson(json);

//Некотрое состояние поля
  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? asyncSnapshot;
//Список полей
  final List<FieldEntity> _orgFieldList;
//Список полей
  @override
  @JsonKey()
  List<FieldEntity> get orgFieldList {
    if (_orgFieldList is EqualUnmodifiableListView) return _orgFieldList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orgFieldList);
  }

  @override
  String toString() {
    return 'DetailDataState(asyncSnapshot: $asyncSnapshot, orgFieldList: $orgFieldList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailDataState &&
            (identical(other.asyncSnapshot, asyncSnapshot) ||
                other.asyncSnapshot == asyncSnapshot) &&
            const DeepCollectionEquality()
                .equals(other._orgFieldList, _orgFieldList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, asyncSnapshot,
      const DeepCollectionEquality().hash(_orgFieldList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailDataStateCopyWith<_$_DetailDataState> get copyWith =>
      __$$_DetailDataStateCopyWithImpl<_$_DetailDataState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailDataStateToJson(
      this,
    );
  }
}

abstract class _DetailDataState implements DetailDataState {
  const factory _DetailDataState(
      {@JsonKey(ignore: true) final AsyncSnapshot<dynamic>? asyncSnapshot,
      final List<FieldEntity> orgFieldList}) = _$_DetailDataState;

  factory _DetailDataState.fromJson(Map<String, dynamic> json) =
      _$_DetailDataState.fromJson;

  @override //Некотрое состояние поля
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get asyncSnapshot;
  @override //Список полей
  List<FieldEntity> get orgFieldList;
  @override
  @JsonKey(ignore: true)
  _$$_DetailDataStateCopyWith<_$_DetailDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
