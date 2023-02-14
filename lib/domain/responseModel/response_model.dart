// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

class ResponseModel {
  bool _isSuccess;
  Response _message;
  ResponseModel(
    this._isSuccess,
    this._message,
  );

  Response get message => _message;
  bool get isSuccess => _isSuccess;
}
