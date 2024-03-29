import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:listdata/app/modules/home/bindings/home_binding.dart';
import 'package:listdata/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}