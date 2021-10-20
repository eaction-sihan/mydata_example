import 'package:flutter/material.dart';


class RaisedButtonCustomWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final VoidCallback? onPressed;
  final Color? borderColor;

  RaisedButtonCustomWidget(
      {this.icon, this.text, this.onPressed, this.borderColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: borderColor,
      ),
      onPressed: this.onPressed,
      child: Icon(
        this.icon,
        color: Colors.white,
      ),
    );
  }
}
