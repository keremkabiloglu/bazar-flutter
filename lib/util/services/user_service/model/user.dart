import 'dart:io';

import '../../../model/gender.dart';

class User {
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final Gender gender;
  final String phoneNumber;
  final DateTime? birthDate;
  final DateTime createdAt;
  final DateTime? lastUnsuccessfulLogin;

  Cookie? authCookie;
  Cookie? refreshCookie;

  User({
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.phoneNumber,
    required this.birthDate,
    required this.createdAt,
    required this.lastUnsuccessfulLogin,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] ?? -1,
        username: json['username'] ?? '',
        email: json['email'] ?? '',
        firstName: json['firstName'] ?? '',
        lastName: json['lastName'] ?? '',
        phoneNumber: json['phoneNumber'] ?? '',
        birthDate: json['birthDate'] != null
            ? DateTime.parse(json['birthDate'])
            : null,
        createdAt: DateTime.parse(json['createdAt']),
        lastUnsuccessfulLogin: json['lastUnsuccessfulLogin'] != null
            ? DateTime.parse(json['lastUnsuccessfulLogin'])
            : null,
        gender: Gender.values.firstWhere(
          (g) => g.name == (json['gender'] ?? 'unknown'),
          orElse: () => Gender.unknown,
        ),
      );
}
