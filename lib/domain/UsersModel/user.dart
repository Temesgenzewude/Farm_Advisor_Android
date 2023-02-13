import 'dart:convert';

import 'package:agino_client/domain/FarmModels/farm.dart';

class User {
  final int userId;
  final String phone;
  final Farm? farm;

  User({
    required this.userId,
    required this.phone,
    this.farm
  });

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'phone': phone,
      'farm':farm,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId'],
      phone: map['phone'],
      farm: map['farm'],
    );
  }

  String toJson() => json.encode(toMap());
  // ignore: non_constant_identifier_names
  factory User.Json(String source) => User.fromMap(json.decode(source));
}
