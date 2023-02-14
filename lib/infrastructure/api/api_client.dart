import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  late String userId;

  final String appBaseUrl;
  late Map<String, String> _mainHeaders;

  ApiClient({required this.appBaseUrl}) {
    baseUrl = appBaseUrl;
    timeout = Duration(seconds: 60);
    // token = userId;
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      // 'Authorization': 'Bearer $userId'
    };
  }

  void updateHeader(String userId) {
    _mainHeaders = {
      'Content-Type': 'application/json; charset=UTF-8',
      // 'Authorization': 'Bearer $userId'
    };
  }

  Future<Response> getData(String url) async {
    try {
      Response response = await get(url, headers: _mainHeaders);
      return response;
    } catch (error) {
      return Response(statusCode: 408, statusText: error.toString());
    }
  }

  Future<Response> postData(String url, dynamic body) async {
    try {
      Response response = await post(url, body);
      print("From client" + response.body.toString());
      return response;
    } catch (e) {
      print("Error from client" + e.toString());
      return Response(statusCode: 406, statusText: e.toString());
    }
  }

  Future<Response> putData(String url, dynamic body) async {
    try {
      Response response = await put(url, body, headers: _mainHeaders);
      return response;
    } catch (e) {
      return Response(statusCode: 406, statusText: e.toString());
    }
  }

  Future<Response> deleteData(String url) async {
    try {
      Response response = await delete(url, headers: _mainHeaders);
      return response;
    } catch (error) {
      return Response(statusCode: 408, statusText: error.toString());
    }
  }
}
