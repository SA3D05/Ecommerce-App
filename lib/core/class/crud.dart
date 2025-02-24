import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/class/status_request.dart';
import 'package:ecommerceapp/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(String url, Map? data) async {
    try {
      if (await checkInternet()) {
        var request = await http.post(
          Uri.parse(url),
          body: data,
        );

        if (request.statusCode == 200 || request.statusCode == 201) {
          var response = jsonDecode(request.body);

          return Right(response);
        } else {
          return const Left(StatusRequest.serverFailure);
        }
      } else {
        return const Left(StatusRequest.noInternet);
      }
    } catch (e) {
      print("ERROR IN POST DATA FUNCTION : $e");
      return const Left(StatusRequest.serverExeption);
    }
  }
}
