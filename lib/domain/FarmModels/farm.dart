import 'dart:convert';

import 'package:agino_client/domain/FieldModel/field.dart';

class Farm {
  String? farmId;

  String? name;
  String? latitude;
  String? longitude;
  String? userId;
  List<Field>? farmfields;

  Farm(
      {this.farmId,
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
      'farmfields': farmfields != null
          ? farmfields!.map((field) => field.toJson()).toList()
          : null
    };
  }

  Farm.fromMap(Map<String, dynamic> json) {
    farmId = json['farmId'];
    name = json['name'] ?? "";
    latitude = json['latitude'] ?? "0";
    longitude = json['longitude'] ?? "0";
    userId = json['userId'] ?? "";
    if (json["farmfields"] != null) {
      farmfields = <Field>[];
      (json['farmfields']).forEach((field) {
        farmfields!.add(Field.fromMap(field));
      });
    }
  }
}
