class SiginRequestDto {
  final String email;
  final String password;

  SiginRequestDto({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };
}
