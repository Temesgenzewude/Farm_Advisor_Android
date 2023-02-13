import 'package:agino_client/domain/auth/signup_model.dart';
import 'package:agino_client/infrastructure/api/api_client.dart';
import 'package:agino_client/presentation/onboarding/signup.dart';
import 'package:agino_client/utils/app_constants.dart';
import 'package:get/get.dart';

class AuthRepo extends GetxService {
  ApiClient apiClient;

  AuthRepo({required this.apiClient});

  Future<Response> registration(SignUpBody signUpBody) async {
    return await apiClient.postData(
        AppConstants.POST_USER_END_POINT, signUpBody.toJson());
  }

  saveUserId(String useId) {
    apiClient.userId = useId;

    apiClient.updateHeader(useId);
  }
}
