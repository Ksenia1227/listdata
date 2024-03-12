import 'package:dio/dio.dart';
import 'package:get/get.dart' hide Response;

class NetworkService extends GetxService{
  Dio client = Dio(BaseOptions(baseUrl: 'https://myfakeapi.com/api/'));

  Future<Response> get (String path)async {
    var response = await client.get(path);
    print('response');
    return response;
  }
}