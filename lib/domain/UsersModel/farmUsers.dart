// ignore: file_names
import 'dart:convert';

class FarmUsers {
  final int userId;
  final int farmId;
  final String role;
  final String timestamp;
  final String receivedNotification;
 

  FarmUsers({
    required this.userId,
    required this.farmId,
    required this.role,
    required this.timestamp,
    required this.receivedNotification,
  });

  Map<String, dynamic> toMap() {
    return {
      'userId':userId,
      'farmId': farmId,
      'role': role,
      'timestamp': timestamp,
      'receivedNotification': receivedNotification,
    };
  }

  factory FarmUsers.fromMap(Map<String, dynamic> map) {
    return FarmUsers(
      userId: map['userId'],
      farmId: map['farmId'],
      role: map['role'],
      timestamp: map['timestamp'],
      receivedNotification: map['receivedNotification'],
    );
  }

  String toJson() => json.encode(toMap());
  // ignore: non_constant_identifier_names
  factory FarmUsers.Json(String source) => FarmUsers.fromMap(json.decode(source));
}


