import 'package:get/get.dart';

import 'package:getx_pattern/app/ui/pages/menu1/details.dart';
import 'package:getx_pattern/app/ui/pages/menu1/menu1_main.dart';
import 'package:getx_pattern/app/ui/widgets/splash/splash_screen.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
        name: Routes.INITIAL,
        page: () => Menu1Main(),
    ),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
    ),
  ];
}

