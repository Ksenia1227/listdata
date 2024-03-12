import 'package:get/get.dart';
import 'package:listdata/app/data/cars.dart';
import 'package:listdata/app/repository/repository.dart';
import 'package:listdata/app/services/network_service.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final NetworkService service = Get.find<NetworkService>();
  Repository repository;

  HomeController(this.repository);

  RxList<Cars> cars = <Cars>[].obs;
  RxList<Cars> newcars = <Cars>[].obs;
  void getCars() async {
  cars.value = await repository.getAll();
  // for (var car in cars){
  //   if (car.availability){
  //     newcars.add(car);
  //   }
  // }
  }

  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
