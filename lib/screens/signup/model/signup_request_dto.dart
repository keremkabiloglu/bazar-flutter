class SignupRequestDto {
  final String name;
  final String surname;
  final String phoneNumber;
  final String password;
  final bool campaignConfirmed;

  SignupRequestDto({
    required this.name,
    required this.surname,
    required this.phoneNumber,
    required this.password,
    required this.campaignConfirmed,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'surname': surname,
        'phoneNumber': phoneNumber,
        'password': password,
        'campaignConfirmed': campaignConfirmed,
      };
}
