import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class TopMenu extends StatelessWidget with PreferredSizeWidget {
  List<String> categories = ["추천", "신상품", "금주혜택", "알뜰쇼핑"];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
          color: Colors.white),
      child: TabBar(
        tabs: List.generate(
          categories.length,
          (index) => Tab(
            text: categories[index],
          ),
        ),
        labelColor: fPrimaryColor,
        unselectedLabelColor: fSecondaryColor,
        // labelStyle: textTheme()
        //     .headline2
        //     ?.copyWith(color: fPrimaryColor, fontWeight: FontWeight.bold),
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 2, color: fPrimaryColor),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(42);
}
