import 'package:get/get.dart';

class MainController extends GetxController {
  var tabIndex = 0;
  var appbarTitle = "홈".obs;

  List<String> bottom_categories = ["홈", "아젠다", "데일리", "지갑", "내정보"];

  void changeTabIndex(int index) {
    tabIndex = index;

    switch(index) {
      case 0: { appbarTitle.value = bottom_categories[0]; }
      break;
      case 1: { appbarTitle.value = bottom_categories[1]; }
      break;
      case 2: { appbarTitle.value = bottom_categories[2]; }
      break;
      case 3: { appbarTitle.value = bottom_categories[3]; }
      break;
      case 4: { appbarTitle.value = bottom_categories[4]; }
      break;
    }
    update();
  }

  var count1 = 0.obs;
  increment() {
    count1++;
  }
}
