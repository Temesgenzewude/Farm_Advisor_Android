import 'package:agino_client/domain/SensorModels/sensor.dart';
import 'package:agino_client/domain/responseModel/response_model.dart';
import 'package:agino_client/infrastructure/sensor/sensor_repo.dart';
import 'package:get/get.dart';

class SensorController extends GetxController implements GetxService {
  final SensorRepo sensorRepo;

  SensorController({required this.sensorRepo});

  List<Sensor> _sensorList = [];
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  List<Sensor> get sensorList => _sensorList;

  Future<void> getSensors() async {
    Response response = await sensorRepo.getSensors();

    if (response.statusCode == 200) {
      _sensorList = [];

      response.body.foreach((sensor) {
        _sensorList.add(Sensor.fromMap(sensor));
      });

      _isLoading = true;

      update();
    } else {}
  }

  Future<ResponseModel> postSensor(Sensor sensorBody) async {
    _isLoading = true;
    Response response = await sensorRepo.postSensor(sensorBody);

    ResponseModel responseModel;

    if (response.statusCode == 200) {
      responseModel = ResponseModel(true, response);

      update();
      _isLoading = false;
      return responseModel;
    } else {
      responseModel = ResponseModel(false, response);

      _isLoading = false;

      return responseModel;
    }
  }
}
