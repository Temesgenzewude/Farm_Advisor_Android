import 'package:agino_client/domain/FarmModels/farm.dart';
import 'package:agino_client/domain/responseModel/response_model.dart';
import 'package:agino_client/infrastructure/farm/farm_repo.dart';
import 'package:get/get.dart';

class FarmController extends GetxController {
  final FarmRepo farmRepo;

  FarmController({required this.farmRepo});

  bool _isLoading = false;
  List<Farm> _farms = [];

  bool get isLoading => _isLoading;

  List<Farm> get farms => _farms;

  Future<void> getFarms() async {
    _isLoading = true;
    Response response = await farmRepo.getFarms();

    if (response.statusCode == 200) {
      _farms = <Farm>[];
      response.body.forEach((farm) {
        _farms.add(Farm.fromMap(farm));
      });
      update();
    } else {
      print(response.statusText);
    }

    _isLoading = false;
  }

  Future<ResponseModel> postFarm(Farm farmBody) async {
    _isLoading = true;
    Response response = await farmRepo.postFarm(farmBody);

    ResponseModel responseModel;
    print(response.statusCode);
    if (response.statusCode == 200) {
      responseModel = ResponseModel(true, response);

      getFarms();

      update();
      _isLoading = false;
      return responseModel;
    } else {
      responseModel = ResponseModel(false, response);

      _isLoading = false;
      getFarms();

      return responseModel;
    }
  }
}
