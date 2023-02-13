import 'dart:convert';

class Field {
  final int fieldId;
  final int farmId;
  final String name;
  final int altitude;
  final String polygon;
 

  Field({
    required this.fieldId,
    required this.farmId,
    required this.name,
    required this.altitude,
    required this.polygon,
  });

  Map<String, dynamic> toMap() {
    return {
      'fieldId':fieldId,
      'farmId': farmId,
      'name': name,
      'altitude': altitude,
      'polygon': polygon,
    };
  }

  factory Field.fromMap(Map<String, dynamic> map) {
    return Field(
      fieldId: map['fieldId'],
      farmId: map['farmId'],
      name: map['name'],
      altitude: map['altitude'],
      polygon: map['polygon'],
    );
  }

  String toJson() => json.encode(toMap());
  factory Field.Json(String source) =>
      Field.fromMap(json.decode(source));
}