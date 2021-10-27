import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';


class SelectBox extends StatelessWidget {
  final String title;

  SelectBox({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Color(0xffbbbbbb),
          width: 0.6,
        ),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: textTheme().bodyText1),
          Icon(
            Icons.arrow_forward_ios,
            color: fTextColor,
            size: 15,
          ),
        ],
      ),
    );
  }
}
