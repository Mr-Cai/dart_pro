import 'package:dart_pro/json/model/list_model.dart';
import 'package:dio/dio.dart';

Future<ListResponse> request() async {
  var dio = Dio();
  var response = await dio.get<Map>(
    'http://www.mocky.io/v2/5e77a6ec330000773a09a04d',
  );
  return ListResponse.fromJson(response.data);
}

// 仅判断网络超时
void timeOut() async {
  var options = BaseOptions(
    baseUrl: 'https://www.google.com',
    connectTimeout: 999,
    receiveTimeout: 999,
  );
  var dio = Dio(options);
  try {
    final response = await dio.get('/');
    print(response.data);
  } on DioError catch (error) {
    if (error.type == DioErrorType.CONNECT_TIMEOUT) {
      print('超时');
    }
  }
}
