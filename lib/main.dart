import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:listdata/app/routes/app_pages.dart';
import 'package:listdata/app/services/network_service.dart';

void main()async  {
  await initServices();
  runApp(GetMaterialApp(
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,));
}
Future<void> initServices() async {
  Get.put(NetworkService());
}

