import 'package:dart_pro/data/local_asset.dart';
import 'package:dart_pro/json/model/list_model.dart';
import 'package:dio/dio.dart';

Future<ListResponse> request() async {
  final options = BaseOptions(baseUrl: ListURL);
  var dio = Dio(options);
  var response = await dio.get<Map>('/');
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
