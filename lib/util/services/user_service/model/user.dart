import 'dart:io';

import '../../../model/gender.dart';

class User {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final Gender gender;
  Cookie? authCookie;
  Cookie? refreshCookie;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] ?? -1,
        email: json['email'] ?? '',
        firstName: json['firstName'] ?? '',
        lastName: json['lastName'] ?? '',
        gender: Gender.values.firstWhere(
          (g) => g.name == (json['gender'] ?? 'unknown'),
          orElse: () => Gender.unknown,
        ),
      );
}
