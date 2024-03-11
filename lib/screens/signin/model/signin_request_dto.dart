class SigninRequestDto {
  final String emailPhoneUsername;
  final String password;

  SigninRequestDto({
    required this.emailPhoneUsername,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'emailPhoneUsername': emailPhoneUsername,
        'password': password,
      };
}
