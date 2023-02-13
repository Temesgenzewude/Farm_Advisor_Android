import 'dart:convert';

class Notifications {
  final int notificationId;
  final String title;
  final String message;
  final Enum sendby;
  final Enum status;
  final int farmId;


  Notifications({
    required this.notificationId,
    required this.title,
    required this.message,
    required this.sendby,
    required this.status,
    required this.farmId,
  });

  Map<String, dynamic> toMap() {
    return {
      'notificationId': notificationId,
      'title': title,
      'message': message,
      'sendby': sendby,
      'status': status,
      'farmId': farmId,

    };
  }

  factory Notifications.fromMap(Map<String, dynamic> map) {
    return Notifications(
      notificationId: map['notificationId'],
      title: map['title'],
      message: map['message'],
      sendby: map['sendby'],
      status: map['status'],
      farmId: map['farmId'],
    );
  }

  String toJson() => json.encode(toMap());
  factory Notifications.Json(String source) => Notifications.fromMap(json.decode(source));
}
