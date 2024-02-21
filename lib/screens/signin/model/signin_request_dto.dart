class SigninRequestDto {
  final String email;
  final String password;

  SigninRequestDto({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
