import 'dart:convert';

class SensorResetDates {
  int sensorId;
  DateTime timeStamp;
  String userId;


  SensorResetDates({
    required this.sensorId,
    required this.timeStamp,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return {
      'sensorId': sensorId,
      'timestamp': timeStamp,
      'userId': userId,
    };
  }

  factory SensorResetDates.fromMap(Map<String, dynamic> map) {
    return SensorResetDates(
      sensorId: map['sensorId'],
      timeStamp: map['timeStamp'],
      userId: map['userId'],
    );
  }
  
  String toJson() => json.encode(toMap());
  factory SensorResetDates.Json(String source) => SensorResetDates.fromMap(json.decode(source));
}


