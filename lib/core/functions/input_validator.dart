import 'package:get/get.dart';

validInput(String? val, String type, int min, int max) {
  if (val!.isEmpty) {
    return "$type can't be empty";
  } else {
    if (type == "username") {
      if (!GetUtils.isUsername(val)) {
        return "not valid username";
      }
    }

    if (type == "email") {
      if (!GetUtils.isEmail(val)) {
        return "not valid email";
      }
    }

    if (type == "phone") {
      if (!GetUtils.isPhoneNumber(val)) {
        return "not valid phone number";
      }
    }

    if (val.length < min) {
      return "$type can't be less than $min";
    }
    if (val.length > max) {
      return "$type can't be larger than $max";
    }
  }
}
