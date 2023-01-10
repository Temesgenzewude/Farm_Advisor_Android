import 'package:agino_client/domain/FieldModel/field.dart';
import 'package:agino_client/infrastructure/api/api_client.dart';
import 'package:agino_client/utils/app_constants.dart';
import 'package:get/get.dart';

class FieldRepo extends GetxService {
  final ApiClient apiClient;

  FieldRepo({required this.apiClient});

  Future<Response> getFields(String farmID) async {
    return await apiClient.getData(AppConstants.GET_FIELD_END_POINT + farmID);
  }

  Future<Response> postField(Field field) async {
    return await apiClient.postData(AppConstants.POST_FIELD_END_POINT, field);
  }

  Future<Response> putField(Field field) async {
    return await apiClient.putData(AppConstants.PUT_FIELD_END_POINT, field);
  }

  Future<Response> deleteField(Field field) async {
    return await apiClient.deleteData(AppConstants.DELETE_FIELD_END_POINT);
  }
}
