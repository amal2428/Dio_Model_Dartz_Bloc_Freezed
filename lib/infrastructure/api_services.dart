import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_dartz_freezed_bloc/core/constants.dart';
import 'package:dio_dartz_freezed_bloc/domain/model/response_model.dart';

class ApiServices {
  static Future<Either<String, ResponseModel>> fetchData() async {
    try {
      final response = await Dio().get(pathUrl);
      if (response.statusCode == 200 || response.statusCode == 201) {
        ResponseModel jsonObject = ResponseModel.fromJson(response.data);

        return right(jsonObject);
      } else {
        print("Server side error");
        return left("Server side error");
      }
    } catch (e) {
      print("client side error");
      return left("Client side error");
    }
  }
}
