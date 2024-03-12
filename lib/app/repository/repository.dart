import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:listdata/app/data/carData/carData.dart';
import 'package:listdata/app/data/cars.dart';
import 'package:listdata/app/services/network_service.dart';

class Repository{
  final NetworkService service = Get.find<NetworkService>();
    Repository();


    Future<List<Cars>> getAll() async {
      var response = await service.get('cars');
   var carList= CarData.fromJson(response.data).cars;
   print('list');
      return carList;

      
    }
}