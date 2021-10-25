import 'package:get/get.dart';

class MainController extends GetxController {
  var tabIndex = 0;
  var appbarTitle = "홈".obs;

  void changeTabIndex(int index) {
    tabIndex = index;

    switch(index) {
      case 0: { appbarTitle.value = '홈'; }
      break;
      case 1: { appbarTitle.value = '아젠다북'; }
      break;
      case 2: { appbarTitle.value = '데일리'; }
      break;
      case 3: { appbarTitle.value = '지갑'; }
      break;
      case 4: { appbarTitle.value = '내정보'; }
      break;
    }
    update();
  }

  var count1 = 0.obs;
  increment() {
    count1++;
  }
}
