import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class ConfirmModal {
  String title;
  String? midleText;
  final VoidCallback? onPressed;

  ConfirmModal({
    required this.title,
    this.midleText,
    this.onPressed,
  });

  void show() {
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
            "Cancel",
            style: TextStyle(color: fTextColor),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
          ),
        ),
        ElevatedButton(
          onPressed: this.onPressed,
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
