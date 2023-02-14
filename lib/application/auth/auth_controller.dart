import 'package:agino_client/domain/auth/signup_model.dart';
import 'package:agino_client/domain/responseModel/response_model.dart';
import 'package:agino_client/infrastructure/auth/auth_repo.dart';
import 'package:get/get.dart';

class AuthController extends GetxController implements GetxService {
  final AuthRepo authRepo;

  AuthController({required this.authRepo});

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<ResponseModel> registration(SignUpBody signUpBody) async {
    _isLoading = true;

    Response response = await authRepo.registration(signUpBody);
    print("from auth controller");
    print(response.statusCode);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      authRepo.saveUserId(response.body['userId']);

      responseModel = ResponseModel(true, response);
    } else {
      responseModel = ResponseModel(false, response);
    }

    _isLoading = false;
    update();

    return responseModel;
  }
}
