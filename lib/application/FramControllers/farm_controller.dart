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
    print(response);

    if (response.statusCode == 200) {
      print("Get farms ");
      print("Success");
      _farms = <Farm>[];
      response.body.forEach((farm) {
        _farms.add(Farm.fromMap(farm));
      });
      update();
    } else {
      print(response.statusText);
      print("Couldn't get farms");
      print("Error");
    }

    _isLoading = false;
  }

  Future<ResponseModel> postFarm(Farm farmBody) async {
    print("From post farm");
    print("Post farm method called");
    _isLoading = true;
    Response response = await farmRepo.postFarm(farmBody);

    ResponseModel responseModel;

    if (response.statusCode == 200) {
      print("Success fully created farm");
      responseModel = ResponseModel(true, "Successfully created farm");

      getFarms();

      update();
      _isLoading = false;
      return responseModel;
    } else {
      responseModel = ResponseModel(false, "Couldn't create the farm");

      _isLoading = false;
      getFarms();

      return responseModel;
    }
  }
}
