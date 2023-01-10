// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Sensor {
  final int? sensorId;

  final int fieldId;

  final String serialNo;
  final DateTime? lastCommunication;
  final int? batteryStatus;
  final int? optimalGDD;
  final double long;
  final double lat;
  final DateTime? cuttingDateCalculated;
  final DateTime? lastForcastDate;
  final DateTime? lastCuttingDate;

  Sensor({
    this.sensorId,
    required this.fieldId,
    required this.serialNo,
    this.lastCommunication,
    this.batteryStatus,
    this.optimalGDD,
    required this.long,
    required this.lat,
    this.cuttingDateCalculated,
    this.lastForcastDate,
    this.lastCuttingDate,
  });

  Map<String, dynamic> toMap() {
    return {
      'sensorId': sensorId,
      'fieldId': fieldId,
      'serialNo': serialNo,
      'lastcommunication': lastCommunication,
      'batteryStatus': batteryStatus,
      'optimalGDD': optimalGDD,
      'long': long,
      'lat': lat,
      'cuttingDateCalculated': cuttingDateCalculated,
      'lastForcastDate': lastForcastDate,
      'lastCuttingDate': lastCuttingDate
    };
  }

  factory Sensor.fromMap(Map<String, dynamic> map) {
    return Sensor(
        sensorId: map['sensorId'],
        fieldId: map['fieldId'],
        serialNo: map['serialNo'],
        lastCommunication: map['lastcommunication'],
        batteryStatus: map['batteryStatus'],
        optimalGDD: map['gdd'],
        long: map['long'],
        lat: map['lat'],
        cuttingDateCalculated: map['cuttingDateCalculated'],
        lastForcastDate: map['lastForcastDate'],
        lastCuttingDate: map['lastCuttingDate']);
  }

  String toJson() => json.encode(toMap());
  factory Sensor.Json(String source) => Sensor.fromMap(json.decode(source));
}
