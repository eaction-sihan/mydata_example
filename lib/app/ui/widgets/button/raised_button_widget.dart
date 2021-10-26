import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';


class RaisedButtonWidget extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final VoidCallback? onPressed;
  Color? borderColor;

  RaisedButtonWidget(
      {this.icon, this.text, this.onPressed, this.borderColor = fPrimaryColor});

  @override
  Widget build(BuildContext context) {

    if(icon != null) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: borderColor,
        ),
        onPressed: this.onPressed,
        child:
        Icon(
          this.icon,
          color: Colors.white,
        ),
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: borderColor,
        ),
        onPressed: this.onPressed,
        child: Text(text!, style: GoogleFonts.nanumGothic(fontSize: 12.0, color: Colors.white),)
      );
    }
  }
}
