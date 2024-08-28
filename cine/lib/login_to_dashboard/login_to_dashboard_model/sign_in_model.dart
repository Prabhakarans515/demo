class SignInModel {
  final String firstname;
  final String lastname;
  final String phoneNumber;
  final String email;
  final String password;

  SignInModel(
      {required this.firstname,
        required this.lastname,
        required this.phoneNumber,
        required this.email,
        required this.password});

  Map<String, dynamic> toJson() {
    return {
      "firstname": firstname,
      "lastname": lastname,
      "phoneNumber": phoneNumber,
      "email": email,
      "password": password
    };
  }
}
