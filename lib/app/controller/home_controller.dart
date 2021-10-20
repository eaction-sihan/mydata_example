import 'package:get/get.dart';

class HomeController extends GetxController {
  var selectedIndex = 0.obs;
  setIndex(int index) {
    selectedIndex.value = index;
  }

  var count1 = 0.obs;
  increment() {
    count1++;
  }


}