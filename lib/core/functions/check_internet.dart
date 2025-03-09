import 'dart:io';

Future<bool> checkInternet() async {
  try {
    var check = await InternetAddress.lookup(
        'google.com'); // saad change that to google.com
    if (check.isNotEmpty && check[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return true; // change to false this is temporary;
  }
  return false;
}
