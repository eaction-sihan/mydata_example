import 'package:get/get.dart';

import 'package:getx_pattern/app/ui/pages/menu1/menu1_main.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab5/writing/writting.dart';
import 'package:getx_pattern/app/ui/pages/menu2/menu2_main.dart';
import 'package:getx_pattern/app/ui/widgets/splash/splash_screen.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
    ),
    GetPage(
        name: Routes.MENU1,
        page: () => Menu1Main(),
    ),
    GetPage(
      name: Routes.MENU1_TAB5_WRITING,
      page: () => Menu1Tab5Writing(),
    ),
    GetPage(
        name: Routes.MENU2,
        page: () => Menu2Main(),
    ),
  ];
}

