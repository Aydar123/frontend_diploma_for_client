// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get otchestvo => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  DateTime? get dob => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get series => throw _privateConstructorUsedError;
  String? get number => throw _privateConstructorUsedError;
  DateTime? get dateOfIssue => throw _privateConstructorUsedError;
  String? get codePodrazdel => throw _privateConstructorUsedError;
  String? get issuedBy => throw _privateConstructorUsedError;
  String? get snils => throw _privateConstructorUsedError;
  String? get inn => throw _privateConstructorUsedError;
  String? get addressReg => throw _privateConstructorUsedError;
  String? get cityReg => throw _privateConstructorUsedError;
  String? get addressActual => throw _privateConstructorUsedError;
  String? get cityActual =>
      throw _privateConstructorUsedError; //Для того, чтобы после неудачного изменения username or email приложение
//не разлогинивалось
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get userState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {String email,
      String username,
      String id,
      String? accessToken,
      String? refreshToken,
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
      String? cityActual,
      @JsonKey(ignore: true) AsyncSnapshot<dynamic>? userState});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? id = null,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? surname = freezed,
    Object? name = freezed,
    Object? otchestvo = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? phoneNumber = freezed,
    Object? series = freezed,
    Object? number = freezed,
    Object? dateOfIssue = freezed,
    Object? codePodrazdel = freezed,
    Object? issuedBy = freezed,
    Object? snils = freezed,
    Object? inn = freezed,
    Object? addressReg = freezed,
    Object? cityReg = freezed,
    Object? addressActual = freezed,
    Object? cityActual = freezed,
    Object? userState = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      otchestvo: freezed == otchestvo
          ? _value.otchestvo
          : otchestvo // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfIssue: freezed == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      codePodrazdel: freezed == codePodrazdel
          ? _value.codePodrazdel
          : codePodrazdel // ignore: cast_nullable_to_non_nullable
              as String?,
      issuedBy: freezed == issuedBy
          ? _value.issuedBy
          : issuedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      snils: freezed == snils
          ? _value.snils
          : snils // ignore: cast_nullable_to_non_nullable
              as String?,
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
      addressReg: freezed == addressReg
          ? _value.addressReg
          : addressReg // ignore: cast_nullable_to_non_nullable
              as String?,
      cityReg: freezed == cityReg
          ? _value.cityReg
          : cityReg // ignore: cast_nullable_to_non_nullable
              as String?,
      addressActual: freezed == addressActual
          ? _value.addressActual
          : addressActual // ignore: cast_nullable_to_non_nullable
              as String?,
      cityActual: freezed == cityActual
          ? _value.cityActual
          : cityActual // ignore: cast_nullable_to_non_nullable
              as String?,
      userState: freezed == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEntityCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$_UserEntityCopyWith(
          _$_UserEntity value, $Res Function(_$_UserEntity) then) =
      __$$_UserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String username,
      String id,
      String? accessToken,
      String? refreshToken,
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
      String? cityActual,
      @JsonKey(ignore: true) AsyncSnapshot<dynamic>? userState});
}

/// @nodoc
class __$$_UserEntityCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$_UserEntity>
    implements _$$_UserEntityCopyWith<$Res> {
  __$$_UserEntityCopyWithImpl(
      _$_UserEntity _value, $Res Function(_$_UserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? id = null,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? surname = freezed,
    Object? name = freezed,
    Object? otchestvo = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? phoneNumber = freezed,
    Object? series = freezed,
    Object? number = freezed,
    Object? dateOfIssue = freezed,
    Object? codePodrazdel = freezed,
    Object? issuedBy = freezed,
    Object? snils = freezed,
    Object? inn = freezed,
    Object? addressReg = freezed,
    Object? cityReg = freezed,
    Object? addressActual = freezed,
    Object? cityActual = freezed,
    Object? userState = freezed,
  }) {
    return _then(_$_UserEntity(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      otchestvo: freezed == otchestvo
          ? _value.otchestvo
          : otchestvo // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      series: freezed == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfIssue: freezed == dateOfIssue
          ? _value.dateOfIssue
          : dateOfIssue // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      codePodrazdel: freezed == codePodrazdel
          ? _value.codePodrazdel
          : codePodrazdel // ignore: cast_nullable_to_non_nullable
              as String?,
      issuedBy: freezed == issuedBy
          ? _value.issuedBy
          : issuedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      snils: freezed == snils
          ? _value.snils
          : snils // ignore: cast_nullable_to_non_nullable
              as String?,
      inn: freezed == inn
          ? _value.inn
          : inn // ignore: cast_nullable_to_non_nullable
              as String?,
      addressReg: freezed == addressReg
          ? _value.addressReg
          : addressReg // ignore: cast_nullable_to_non_nullable
              as String?,
      cityReg: freezed == cityReg
          ? _value.cityReg
          : cityReg // ignore: cast_nullable_to_non_nullable
              as String?,
      addressActual: freezed == addressActual
          ? _value.addressActual
          : addressActual // ignore: cast_nullable_to_non_nullable
              as String?,
      cityActual: freezed == cityActual
          ? _value.cityActual
          : cityActual // ignore: cast_nullable_to_non_nullable
              as String?,
      userState: freezed == userState
          ? _value.userState
          : userState // ignore: cast_nullable_to_non_nullable
              as AsyncSnapshot<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEntity implements _UserEntity {
  const _$_UserEntity(
      {required this.email,
      required this.username,
      required this.id,
      this.accessToken,
      this.refreshToken,
      this.surname,
      this.name,
      this.otchestvo,
      this.gender,
      this.dob,
      this.phoneNumber,
      this.series,
      this.number,
      this.dateOfIssue,
      this.codePodrazdel,
      this.issuedBy,
      this.snils,
      this.inn,
      this.addressReg,
      this.cityReg,
      this.addressActual,
      this.cityActual,
      @JsonKey(ignore: true) this.userState});

  factory _$_UserEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserEntityFromJson(json);

  @override
  final String email;
  @override
  final String username;
  @override
  final String id;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? surname;
  @override
  final String? name;
  @override
  final String? otchestvo;
  @override
  final String? gender;
  @override
  final DateTime? dob;
  @override
  final String? phoneNumber;
  @override
  final String? series;
  @override
  final String? number;
  @override
  final DateTime? dateOfIssue;
  @override
  final String? codePodrazdel;
  @override
  final String? issuedBy;
  @override
  final String? snils;
  @override
  final String? inn;
  @override
  final String? addressReg;
  @override
  final String? cityReg;
  @override
  final String? addressActual;
  @override
  final String? cityActual;
//Для того, чтобы после неудачного изменения username or email приложение
//не разлогинивалось
  @override
  @JsonKey(ignore: true)
  final AsyncSnapshot<dynamic>? userState;

  @override
  String toString() {
    return 'UserEntity(email: $email, username: $username, id: $id, accessToken: $accessToken, refreshToken: $refreshToken, surname: $surname, name: $name, otchestvo: $otchestvo, gender: $gender, dob: $dob, phoneNumber: $phoneNumber, series: $series, number: $number, dateOfIssue: $dateOfIssue, codePodrazdel: $codePodrazdel, issuedBy: $issuedBy, snils: $snils, inn: $inn, addressReg: $addressReg, cityReg: $cityReg, addressActual: $addressActual, cityActual: $cityActual, userState: $userState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEntity &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.otchestvo, otchestvo) ||
                other.otchestvo == otchestvo) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.dateOfIssue, dateOfIssue) ||
                other.dateOfIssue == dateOfIssue) &&
            (identical(other.codePodrazdel, codePodrazdel) ||
                other.codePodrazdel == codePodrazdel) &&
            (identical(other.issuedBy, issuedBy) ||
                other.issuedBy == issuedBy) &&
            (identical(other.snils, snils) || other.snils == snils) &&
            (identical(other.inn, inn) || other.inn == inn) &&
            (identical(other.addressReg, addressReg) ||
                other.addressReg == addressReg) &&
            (identical(other.cityReg, cityReg) || other.cityReg == cityReg) &&
            (identical(other.addressActual, addressActual) ||
                other.addressActual == addressActual) &&
            (identical(other.cityActual, cityActual) ||
                other.cityActual == cityActual) &&
            (identical(other.userState, userState) ||
                other.userState == userState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        email,
        username,
        id,
        accessToken,
        refreshToken,
        surname,
        name,
        otchestvo,
        gender,
        dob,
        phoneNumber,
        series,
        number,
        dateOfIssue,
        codePodrazdel,
        issuedBy,
        snils,
        inn,
        addressReg,
        cityReg,
        addressActual,
        cityActual,
        userState
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      __$$_UserEntityCopyWithImpl<_$_UserEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEntityToJson(
      this,
    );
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
          {required final String email,
          required final String username,
          required final String id,
          final String? accessToken,
          final String? refreshToken,
          final String? surname,
          final String? name,
          final String? otchestvo,
          final String? gender,
          final DateTime? dob,
          final String? phoneNumber,
          final String? series,
          final String? number,
          final DateTime? dateOfIssue,
          final String? codePodrazdel,
          final String? issuedBy,
          final String? snils,
          final String? inn,
          final String? addressReg,
          final String? cityReg,
          final String? addressActual,
          final String? cityActual,
          @JsonKey(ignore: true) final AsyncSnapshot<dynamic>? userState}) =
      _$_UserEntity;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$_UserEntity.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  String get id;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  String? get surname;
  @override
  String? get name;
  @override
  String? get otchestvo;
  @override
  String? get gender;
  @override
  DateTime? get dob;
  @override
  String? get phoneNumber;
  @override
  String? get series;
  @override
  String? get number;
  @override
  DateTime? get dateOfIssue;
  @override
  String? get codePodrazdel;
  @override
  String? get issuedBy;
  @override
  String? get snils;
  @override
  String? get inn;
  @override
  String? get addressReg;
  @override
  String? get cityReg;
  @override
  String? get addressActual;
  @override
  String? get cityActual;
  @override //Для того, чтобы после неудачного изменения username or email приложение
//не разлогинивалось
  @JsonKey(ignore: true)
  AsyncSnapshot<dynamic>? get userState;
  @override
  @JsonKey(ignore: true)
  _$$_UserEntityCopyWith<_$_UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
