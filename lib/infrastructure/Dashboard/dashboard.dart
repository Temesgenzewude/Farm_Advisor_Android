import 'package:agino_client/utils/app_constants.dart';
import 'package:get/get.dart';

import '../api/api_client.dart';

class DashBoardRepo extends GetxService {
  final ApiClient apiClient;

  DashBoardRepo({required this.apiClient});

  Future<Response> getDashboardData(String farmId) async {
    return await apiClient
        .getData(AppConstants.GET_DASHBOARD_END_POINT + farmId);
  }
}
