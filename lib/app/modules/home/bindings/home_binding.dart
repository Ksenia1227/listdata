import 'package:get/get.dart';
import 'package:listdata/app/repository/repository.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(Repository()),
    );
  }
}
