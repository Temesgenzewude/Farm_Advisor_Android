import 'dart:convert';

import 'package:agino_client/domain/FieldModel/field.dart';

class Farm {
  int? farmId;
  String? name;
  String? latitude;
  String? longitude;
  String? userId;
  List<Field>? farmfields;
  

  Farm(
      { this.farmId,

      required this.name,
      required this.latitude,
      required this.longitude,
      required this.userId,
      this.farmfields}) {
    farmId = farmId;
    name = name;
    latitude = latitude;
    longitude = longitude;
    userId = userId;
    farmfields = farmfields;
  }

  Map<String, dynamic> toMap() {
    return {
      'farmId': farmId,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'userId': userId,
      'farmfields': farmfields
    };
  }

  Farm.fromMap(Map<String, dynamic> json) {
    farmId = json['farmId'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    userId = json['userId'];
    if (json["farmfields"] != null) {
      farmfields = <Field>[];
      (json['farmfields']).forEach((field) {
        farmfields!.add(Field.fromMap(field));
      });
    }
  }

  String toJson() => json.encode(toMap());
  // ignore: non_constant_identifier_names
  factory Farm.Json(String source) => Farm.fromMap(json.decode(source));
}
