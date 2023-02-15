import 'dart:convert';

import 'package:agino_client/domain/SensorModels/sensor.dart';
import 'package:agino_client/domain/responseModel/response_model.dart';
import 'package:agino_client/infrastructure/Dashboard/dashboard.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../FramControllers/farm_controller.dart';

class DashboardController extends GetxController {
  var farmController = Get.find<FarmController>();
  final DashBoardRepo dashBoardRepo;
  List<Sensor> _sensors = [];
  var _weatherForcast = <String, List<int>>{};
  var _statistics = <String, List<int>>{};
  bool _isLoading = false;

  bool get isLoading => _isLoading;
  Map<String, List<int>> get weatherForcast => _weatherForcast;
  Map<String, List<int>> get statistics => _statistics;

  DashboardController({required this.dashBoardRepo});

  Future<ResponseModel> getDashboardData() async {
    _isLoading = true;
    var farm = farmController.farms[0];
    
    Response response = await dashBoardRepo.getDashboardData(farm.farmId!);
    ResponseModel responseModel;
    print(response.statusCode);
    if (response.statusCode == 200) {
      responseModel = ResponseModel(true, response);

      _weatherForcast = jsonDecode(response.body).weatherForeCast;
      _statistics = jsonDecode(response.body).statistics;
      _sensors = jsonDecode(response.body).sensors;

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
