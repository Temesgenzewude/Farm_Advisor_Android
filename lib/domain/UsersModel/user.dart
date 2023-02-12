import 'dart:convert';

class User {
  final int userId;
  final int name;
  final String phone;
  final String email;
  final String authId;
 

  User({
    required this.userId,
    required this.name,
    required this.phone,
    required this.email,
    required this.authId,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId':userId,
      'name': name,
      'phone': phone,
      'email': email,
      'authId': authId,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userId: map['userId'],
      name: map['name'],
      phone: map['phone'],
      email: map['email'],
      authId: map['authId'],
    );
  }

  String toJson() => json.encode(toMap());
  // ignore: non_constant_identifier_names
  factory User.Json(String source) => User.fromMap(json.decode(source));
}







