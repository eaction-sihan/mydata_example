import 'package:get/get.dart';

import 'package:getx_pattern/app/ui/pages/menu1/details.dart';
import 'package:getx_pattern/app/ui/pages/menu1/main.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => Main(),
    ),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
    ),
  ];
}

