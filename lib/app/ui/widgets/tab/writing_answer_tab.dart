import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class WritingAnswerTab extends StatelessWidget {
  List<String> categories;
  List<IconData> categories_icon;
  List<String> texts;

  WritingAnswerTab(
      {Key? key, required this.categories, required this.categories_icon, required this.texts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ButtonsTabBar(
        backgroundColor: Colors.white,
        borderColor: fPrimaryColor,
        unselectedBackgroundColor: Colors.white,
        unselectedBorderColor: Colors.black12,
        unselectedLabelStyle: TextStyle(color: Colors.black54),
        labelStyle: GoogleFonts.nanumGothic(fontSize: 10.0, color: fTextColor),
        borderWidth: 1,
        height: 120,
        physics: new NeverScrollableScrollPhysics(),
        tabs: List.generate(
          categories.length,
          (index) => Tab(
            icon: Container(
              width: 95,
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(left: 5),
              child: Column(children: [
                new Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      categories_icon[index],
                      size: 26,
                    )),
                SizedBox(
                  height: 20,
                ),
                new Align(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    categories[index],
                    style: GoogleFonts.nanumGothic(
                        fontSize: 14.0,
                        color: fTextColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                new Align(
                  alignment: Alignment.centerLeft,
                  child: new Text(
                    texts[index],
                    style: GoogleFonts.nanumGothic(
                        fontSize: 12.0,
                        color: fTextColor
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
