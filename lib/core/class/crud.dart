import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, dynamic>> postData(String url, Map? data) async {
    try {
      if (await checkInternet()) {
        var request = await http.post(
          Uri.parse(url),
          body: data,
        );

        if (request.statusCode == 200 || request.statusCode == 201) {
          dynamic response = jsonDecode(request.body);
          return Right(response);
        } else {
          return left(StatusRequest.serverfailure);
        }
      } else {
        return const Left(StatusRequest.nointernet);
      }
    } catch (e) {
      print("ERROR IN POST DATA FUNCTION : $e");
      return left(StatusRequest.serverfailure);
    }
  }
}
