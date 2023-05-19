
abstract class AuthRepo {

  Future<dynamic> signUp({
    required String username,
    required String email,
    required String password
  });

  Future<dynamic> signIn({
    required String username,
    required String password
  });

  Future<dynamic> getProfile();

  Future<dynamic> updateProfile({
    String? username,
    String? email,
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
    String? cityActual
  });

  Future<dynamic> updatePassword({
    required String oldPassword,
    required String newPassword
  });

  Future<dynamic> refreshToken({
    String? refreshToken
  });

  Future fetchAllOrganizations();

  Future getUniqueFieldsCurOrg(String id);

  Future<dynamic> insertData({required String? orgId, required String? fieldId, String? value});

}