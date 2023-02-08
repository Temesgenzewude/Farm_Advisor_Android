import "package:agino_client/domain/FieldModel/field.dart";
import 'package:agino_client/infrastructure/field/field_repo.dart';
import 'package:get/get.dart';

class FieldController extends GetxController implements GetxService {
  final FieldRepo fieldRepo;

  FieldController({required this.fieldRepo});

  List<Field> _fields = [];

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  List<Field> get fields => _fields;
  

  Future<void> getFields(String farmID) async {
    Response response = await fieldRepo.getFields(farmID);

    if (response.statusCode == 200) {
      _fields = [];

      response.body.foreach((field) {
        _fields.add(Field.fromMap(field));
      });
      _isLoading = true;

      update();
    } else {}
  }
}
