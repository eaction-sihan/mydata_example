import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class ToggleType1 extends StatelessWidget {
  final List<bool> selections;
  final List<String> texts;
  Function(int value) onPressed;
  final String? type;

  ToggleType1(
      {required this.selections, required this.texts, required this.onPressed, this.type});

  @override
  Widget build(BuildContext context) {
    var borderRadius = null;
    if(this.type == 'top') {
      borderRadius = BorderRadius.only(topLeft: Radius.circular(7), topRight: Radius.circular(7));
    } else if(this.type == 'bottom') {
      borderRadius = BorderRadius.only(bottomLeft: Radius.circular(7), bottomRight: Radius.circular(7));
    } else if(this.type == 'middle') {
      borderRadius = null;
    } else {
      borderRadius = BorderRadius.circular(7);
    }

    return ToggleButtons(
      color: Colors.black54,
      selectedColor: fPrimaryColor,
      selectedBorderColor: fPrimaryColor,
      fillColor: Colors.white,
      borderRadius: borderRadius,
      textStyle: GoogleFonts.nanumGothic(fontSize: 15.0),
      children: List.generate(this.texts.length,(index){
        return Container(
          alignment: Alignment.center,
          width: _buttonWidth(context),
          child: Text(this.texts[index].tr),
        );
      }),
      onPressed: this.onPressed,
      isSelected: this.selections,
    );
  }

  double _buttonWidth(BuildContext context) {
    final buttonCount = this.texts.length;

    final width = (MediaQuery.of(context).size.width - 38) / buttonCount;
    return width;
  }
}
