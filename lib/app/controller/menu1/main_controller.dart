import 'package:get/get.dart';

class MainController extends GetxController {
  var tabIndex = 0;
  String appbarTitle = "";

  void changeTabIndex(int index) {
    tabIndex = index;

    switch(index) {
      case 0: { appbarTitle = '홈'; }
      break;
      case 1: { appbarTitle = '아젠다북'; }
      break;
      case 2: { appbarTitle = '데일리'; }
      break;
      case 3: { appbarTitle = '지갑'; }
      break;
      case 4: { appbarTitle = '내정보'; }
      break;
    }
    update();
  }

  var count1 = 0.obs;
  increment() {
    count1++;
  }
}
