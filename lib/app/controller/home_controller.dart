import 'package:get/get.dart';

class HomeController extends GetxController {
  var count1 = 0.obs;
  increment() {
    count1++;
  }
}