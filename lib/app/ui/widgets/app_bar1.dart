import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class AppBar1 extends StatelessWidget with PreferredSizeWidget {
  // Get.put()을 사용하여 클래스를 인스턴스화하여 모든 "child'에서 사용가능하게 합니다.
  final HomeController c = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
          color: Colors.white),
      child: AppBar(
          // count가 변경 될 때마다 Obx(()=> 를 사용하여 Text()에 업데이트합니다.
          title: Obx(() =>
              Text("HOME ${c.count1}", style: textTheme().headline1)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search), // 검색 아이콘 생성
              onPressed: () {
                // 아이콘 버튼 실행
                print('Search button is clicked');
              },
            ),
            // NamedIcon(
            //   iconData: Icons.notifications_none ,
            //   notificationCount: 10,
            //   onTap: () {},
            // ),
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
