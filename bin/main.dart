import 'package:dart_pro/json/dio_request.dart';

void main() {
  request().then((value) {
    print(value.data.hot[0].icon);
  });
}
