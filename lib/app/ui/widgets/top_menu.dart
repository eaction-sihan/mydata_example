import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/point_tab_indicator.dart';

class TopMenu extends StatelessWidget with PreferredSizeWidget {
  List<String> categories;
  bool isScroll = false;
  TopMenu({
    Key? key,
    required this.categories,
    required this.isScroll
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
        labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
        tabs: List.generate(
          categories.length,
          (index) => Tab(
            text: categories[index],
          ),
        ),
        isScrollable: isScroll,
        labelColor: fPrimaryColor,
        labelStyle: textTheme().subtitle2,
        unselectedLabelColor: Colors.black54,
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
