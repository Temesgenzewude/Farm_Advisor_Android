import 'package:agino_client/domain/SensorModels/sensor.dart';
import 'package:agino_client/infrastructure/api/api_client.dart';
import 'package:agino_client/utils/app_constants.dart';
import 'package:get/get.dart';

class SensorRepo extends GetxService {
  final ApiClient apiClient;

  SensorRepo({required this.apiClient});

  Future<Response> getSensors(String fieldId) async {
    return await apiClient
        .getData(AppConstants.GET_SENSORS_END_POINT + fieldId);
        
  }

  Future<Response> postSensor(Sensor sensor) async {
    return await apiClient.postData(AppConstants.POST_SENSOR_END_POINT, sensor);
  }

  Future<Response> putSensor(Sensor sensor) async {
    return await apiClient.putData(AppConstants.PUT_SENSOR_END_POINT, sensor);
  }

  Future<Response> deleteSensor(Sensor sensor) async {
    return await apiClient.deleteData(AppConstants.DELETE_SENSOR_END_POINT);
  }
}
