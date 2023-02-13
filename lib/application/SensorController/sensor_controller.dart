import 'package:agino_client/domain/SensorModels/sensor.dart';
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
}
