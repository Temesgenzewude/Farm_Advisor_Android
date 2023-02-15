import 'package:agino_client/application/FramControllers/farm_controller.dart';
import 'package:agino_client/domain/FieldModel/field.dart';
import 'package:agino_client/domain/responseModel/response_model.dart';
import 'package:agino_client/infrastructure/field/field_repo.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class FieldController extends GetxController {
  final FieldRepo fieldRepo;

  FieldController({required this.fieldRepo});
  bool _isLoading = false;
  List<Field> _fields = [];

  bool get isLoading => _isLoading;
  List<Field> get fieldList => _fields;
  var farmController = Get.find<FarmController>();

  Future<ResponseModel> getFields() async {
    var farm = farmController.farms[0];
    _isLoading = true;
    Response response = await fieldRepo.getFields(farm.farmId!);
    late ResponseModel responseModel;
    if (response.statusCode == 200) {
      response.body.forEach((field) {
        _fields.add(Field.fromMap(field));
      });
      responseModel = ResponseModel(true, response);
    } else {
      responseModel = ResponseModel(false, response);
    }

    _isLoading = false;
    update();

    return responseModel;
  }
}
