import 'package:ecommerceapp/core/class/status_request.dart';

handlingData(var response) {
  if (response['status'] == 'failure') {
    return StatusRequest.failure;
  }
  if (response is StatusRequest) {
    return response;
  } else {
    return StatusRequest.success;
  }
}
