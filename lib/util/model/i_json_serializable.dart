import 'dart:convert';

abstract class IJsonSerializable {
  Map<String, dynamic> toJson();
  @override
  String toString() => jsonEncode(toJson());
}
