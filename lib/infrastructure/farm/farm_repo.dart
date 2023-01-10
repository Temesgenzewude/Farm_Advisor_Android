import 'package:agino_client/domain/FarmModels/farm.dart';
import 'package:agino_client/infrastructure/api/api_client.dart';
import 'package:agino_client/utils/app_constants.dart';
import 'package:get/get.dart';

class FarmRepo extends GetxService {
  final ApiClient apiClient;

  FarmRepo({required this.apiClient});

  Future<Response> getFarms() async {
    return await apiClient.getData(AppConstants.GET_FARM_END_POINT);
  }

  Future<Response> postFarm(Farm farm) async {
    return await apiClient.postData(AppConstants.POST_FARM_END_POINT, farm);
  }

  Future<Response> putFarm(Farm farm) async {
    return await apiClient.putData(AppConstants.PUT_FARM_END_POINT, farm);
  }

  Future<Response> deleteFarm(Farm farm) async {
    return await apiClient.deleteData(AppConstants.DELETE_FARM_END_POINT);
  }
}
