// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:agino_client/domain/auth/signup_model.dart';
import 'package:agino_client/infrastructure/api/api_client.dart';
import 'package:agino_client/presentation/onboarding/signup.dart';
import 'package:agino_client/utils/app_constants.dart';

class AuthRepo extends GetxService {
  ApiClient apiClient;
  SharedPreferences sharedPreferences;

  AuthRepo({
    required this.apiClient,
    required this.sharedPreferences,
  });

  Future<Response> registration(SignUpBody signUpBody) async {
    return await apiClient.postData(
        AppConstants.POST_USER_END_POINT, signUpBody.toJson());
  }

  saveUserId(String useId) async {
    apiClient.userId = useId;

    apiClient.updateHeader(useId);
    
    return await sharedPreferences.setString(AppConstants.USERID, useId);
  }
}
