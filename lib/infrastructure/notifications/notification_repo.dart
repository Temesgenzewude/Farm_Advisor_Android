import 'dart:html';

import 'package:agino_client/domain/NotificationModel/notifications.dart';
import 'package:agino_client/infrastructure/api/api_client.dart';
import 'package:agino_client/utils/app_constants.dart';
import 'package:get/get.dart';


class NotificationRepo extends GetxService {
  final ApiClient apiClient;

  NotificationRepo({required this.apiClient});

  Future<Response> getNotification() async {
    return await apiClient.getData(AppConstants.GET_FARM_END_POINT);
  }

  Future<Response> postFarm(Notification notification) async {
    return await apiClient.postData(AppConstants.POST_FARM_END_POINT, notification);
  }

  Future<Response> putFarm(Notification notification) async {
    return await apiClient.putData(AppConstants.PUT_FARM_END_POINT, notification);
  }

  Future<Response> deleteFarm(Notification notification) async {
    return await apiClient.deleteData(AppConstants.DELETE_FARM_END_POINT);
  }
}
