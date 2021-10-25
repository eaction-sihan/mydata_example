import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/main_controller.dart';
import 'package:getx_pattern/app/ui/pages/common/search_page.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class AppBar2 extends StatelessWidget with PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
          color: Colors.white),
      child: AppBar(
          title: Text('oi'.tr, style: textTheme().headline1),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search), // 검색 아이콘 생성
              onPressed: () => Get.to(SearchPage()),
            ),
            Badge(
              position: BadgePosition.topEnd(top: 3, end: 6),
              shape: BadgeShape.square,
              borderRadius: BorderRadius.circular(10),
              badgeColor: fPrimaryColor,
              badgeContent: Text('10', style: TextStyle(color: Colors.white, fontSize: 10)),
              child: IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
            ),
          ],
          //bottom: TopMenu()
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
