import 'package:agino_client/domain/UsersModel/user.dart';
import 'package:agino_client/infrastructure/api/api_client.dart';
import 'package:agino_client/utils/app_constants.dart';
import 'package:get/get.dart';


class UserRepo extends GetxService {
  final ApiClient apiClient;

  UserRepo({required this.apiClient});

  Future<Response> getUsers() async {
    return await apiClient.getData(AppConstants.GET_USER_END_POINT);
  }

  Future<Response> postUser(User user) async {
    return await apiClient.postData(AppConstants.POST_USER_END_POINT, user);
  }

  Future<Response> putUser(User user) async {
    return await apiClient.putData(AppConstants.PUT_USER_END_POINT, user);
  }

  Future<Response> deleteUser(User user) async {
    return await apiClient.deleteData(AppConstants.DELETE_USER_END_POINT);
  }
}
