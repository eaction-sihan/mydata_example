import 'package:get/get.dart';

import 'package:getx_pattern/app/ui/pages/details.dart';
import 'package:getx_pattern/app/ui/pages/home.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => HomePage(),
    ),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
    ),
  ];
}

