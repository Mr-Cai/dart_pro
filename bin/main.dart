import 'package:dart_pro/json/dio_request.dart';

void main() {
  request().then((value) {
    for (var item in value.data.plugin) {
      print(item.cover);
    }
  });
}
