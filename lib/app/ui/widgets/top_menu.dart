import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/point_tab_indicator.dart';

class TopMenu extends StatelessWidget with PreferredSizeWidget {
  List<String> categories = ["추천", "신상품", "금주혜택", "알뜰쇼핑"];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 2, color: Colors.black12),
              bottom: BorderSide(width: 0.3, color: Colors.grey)),
          color: Colors.white),
      child: TabBar(
        tabs: List.generate(
          categories.length,
          (index) => Tab(
            text: categories[index],
          ),
        ),
        labelColor: fPrimaryColor,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelColor: Colors.black45,
        // labelStyle: textTheme()
        //     .headline2
        //     ?.copyWith(color: fPrimaryColor, fontWeight: FontWeight.bold),
        indicator: PointTabIndicator(
          position: PointTabIndicatorPosition.top,
          color: fPrimaryColor,
          insets: EdgeInsets.only(top: 5),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(42);
}
