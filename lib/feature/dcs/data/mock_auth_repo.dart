// import 'package:dcs_43_frontend/feature/dcs/domain/auth_repo.dart';
// import 'package:dcs_43_frontend/feature/dcs/domain/entities/user_entity/user_entity.dart';
// import 'package:injectable/injectable.dart';
//
// @Injectable(as: AuthRepo)
// @test
// class MockAuthRepoImpl implements AuthRepo {
//   @override
//   Future getProfile() {
//     // TODO: implement getProfile
//     throw UnimplementedError();
//   }
//
//   @override
//   Future refreshToken({required String refreshToken}) {
//     // TODO: implement refreshToken
//     throw UnimplementedError();
//   }
//
//   @override
//   Future signIn({required String username, required String password}) {
//     return Future.delayed(const Duration(seconds: 2), () {
//       return UserEntity(email: "testEmail", username: username, id: "-1");
//     });
//   }
//
//   @override
//   Future signUp(
//       {required String username,
//       required String email,
//       required String password}) {
//     return Future.delayed(const Duration(seconds: 2), () {
//       return UserEntity(email: email, username: username, id: "-1");
//     });
//   }
//
//   @override
//   Future updatePassword(
//       {required String oldPassword, required String newPassword}) {
//     // TODO: implement updatePassword
//     throw UnimplementedError();
//   }
//
//   @override
//   Future updateProfile(
//       {String? username,
//       String? email,
//       String? surname,
//       String? name,
//       String? otchestvo,
//       String? gender,
//       DateTime? dob,
//       String? phoneNumber,
//       String? series,
//       String? number,
//       DateTime? dateOfIssue,
//       String? codePodrazdel,
//       String? issuedBy,
//       String? snils,
//       String? inn,
//       String? addressReg,
//       String? cityReg,
//       String? addressActual,
//       String? cityActual}) {
//     // TODO: implement updateProfile
//     throw UnimplementedError();
//   }
// }
