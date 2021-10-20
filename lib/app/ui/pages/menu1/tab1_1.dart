import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/pages/menu1/widgets/button_widget.dart';

import 'details.dart';

class Tab1_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

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
