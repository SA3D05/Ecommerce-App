import 'dart:io';

Future<bool> checkInternet() async {
  try {
    var check = await InternetAddress.lookup('google.com');
    if (check.isNotEmpty && check[0].rawAddress.isNotEmpty) {
      print(true);
      return true;
    }
  } on SocketException catch (_) {
    print(false);
    return false;
  }
  return false;
}
