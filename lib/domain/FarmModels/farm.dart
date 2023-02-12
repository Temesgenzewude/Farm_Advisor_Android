import 'dart:convert';

class Farm {
  int farmId;
  String name;
  String postcode;
  String city;
  String country;

  Farm({
    required this.farmId,
    required this.name,
    required this.postcode,
    required this.city,
    required this.country,
  });

  Map<String, dynamic> toMap() {
    return {
      'farmId': farmId,
      'name': name,
      'postcode': postcode,
      'city': city,
      'country': country
    };
  }

  factory Farm.fromMap(Map<String, dynamic> map) {
    return Farm(
      farmId: map['farmId'],
      name: map['name'],
      postcode: map['postcode'],
      city: map['city'],
      country: map['country'],
    );
  }
  
  String toJson() => json.encode(toMap());
  // ignore: non_constant_identifier_names
  factory Farm.Json(String source) => Farm.fromMap(json.decode(source));
}
