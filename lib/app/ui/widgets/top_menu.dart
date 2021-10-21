import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/point_tab_indicator.dart';

class TopMenu extends StatelessWidget with PreferredSizeWidget {
  List<String> categories;

  TopMenu({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          // border: Border(
          //     bottom: BorderSide(width: 0.3, color: Colors.grey)),
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
          insets: EdgeInsets.only(top: 4),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(42);
}
