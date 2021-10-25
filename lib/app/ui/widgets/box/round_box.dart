import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundBox extends StatelessWidget {
  final String title;

  RoundBox({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0, vertical: 3.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(width: 0.5, color: Colors.grey),
          color: Color.fromRGBO(247, 247, 247, 1)),
      child: Text('${title}',
          textAlign: TextAlign.center,
          style: GoogleFonts.nanumGothic(
              fontSize: 13.0, color: fPrimaryColor)),
    );
  }
}
