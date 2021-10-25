import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class AlertModal {
  String title;
  String? midleText;

  AlertModal({
    required this.title,
    this.midleText,
  });

  void show(BuildContext context) {
    if (midleText == null) {
      midleText = "";
    }

    Get.defaultDialog(
      title: title,
      titleStyle: textTheme().headline2,
      radius: 15.0,
      middleText: midleText!,
      actions: [
        ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            primary: fPrimaryColor,
          ),
        )
      ],
    );
  }
}
