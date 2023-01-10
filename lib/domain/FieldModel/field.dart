// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Field {
  final String fieldId;
  final String farmId;
  final String name;
  final double altitude;
  final int gddGoal;
  final int cuttingDateEstimated;
  final int currentGDD;
  final DateTime lastSensorResetDate;

  Field({
    required this.fieldId,
    required this.farmId,
    required this.name,
    required this.altitude,
    required this.gddGoal,
    required this.cuttingDateEstimated,
    required this.currentGDD,
    required this.lastSensorResetDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'fieldId': fieldId,
      'farmId': farmId,
      'name': name,
      'altitude': altitude,
      "gddGoal": gddGoal,
      "cuttingDateEstimated": cuttingDateEstimated,
      "currentGDD": currentGDD,
      "lastSensorResetDate": lastSensorResetDate,
    };
  }

  factory Field.fromMap(Map<String, dynamic> map) {
    return Field(
      fieldId: map['fieldId'],
      farmId: map['farmId'],
      name: map['name'],
      altitude: map['altitude'],
      currentGDD: map['currentGDD'],
      cuttingDateEstimated: map["cuttingDateEstimated"],
      gddGoal: map["gddGoal"],
      lastSensorResetDate: map["lastSensorResetDate"],
    );
  }

  String toJson() => json.encode(toMap());
  factory Field.Json(String source) => Field.fromMap(json.decode(source));
}
