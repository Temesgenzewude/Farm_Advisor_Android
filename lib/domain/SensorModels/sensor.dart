import 'dart:convert';

class Sensor {
  final int sensorId;
  final int fieldId;
  final String serialNo;
  final DateTime lastcommunication;
  final int batteryStatus;
  final int gdd;
  final double long;
  final double lat;
  final Enum state;

  Sensor({
    required this.sensorId,
    required this.fieldId,
    required this.serialNo,
    required this.lastcommunication,
    required this.batteryStatus,
    required this.gdd,
    required this.long,
    required this.lat,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return {
      'sensorId': sensorId,
      'fieldId': fieldId,
      'serialNo': serialNo,
      'lastcommunication': lastcommunication,
      'batteryStatus': batteryStatus,
      'gdd': gdd,
      'long': long,
      'lat': lat,
      'state': state,
    };
  }

  factory Sensor.fromMap(Map<String, dynamic> map) {
    return Sensor(
      sensorId: map['sensorId'],
      fieldId: map['fieldId'],
      serialNo: map['serialNo'],
      lastcommunication: map['lastcommunication'],
      batteryStatus: map['batteryStatus'],
      gdd: map['gdd'],
      long: map['long'],
      lat: map['lat'],
      state: map['state'],
    );
  }

  String toJson() => json.encode(toMap());
  factory Sensor.Json(String source) => Sensor.fromMap(json.decode(source));
}
