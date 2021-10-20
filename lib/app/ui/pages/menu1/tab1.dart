import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/widgets/button_widget.dart';

import 'details_page.dart';

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get.put()을 사용하여 클래스를 인스턴스화하여 모든 "child'에서 사용가능하게 합니다.
    final HomeController c = Get.put(HomeController());

    return Container(
      child: Center(
        child: RaisedButtonCustomWidget(
          icon: Icons.list,
          text: "oi",
          onPressed: () => Get.to(DetailsPage()),
          borderColor: Colors.purple,
        ),
      ),
    );
  }
}
