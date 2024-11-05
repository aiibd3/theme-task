class UserModel {
  final String email;
  final String password;

  UserModel({
    required this.email,
    required this.password,
  });

  UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['Email'],
      password: json['Password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "Email": email,
      "Password": password,
    };
  }
}
