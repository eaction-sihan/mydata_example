import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/home_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'badge_icon.dart';

class AppBar1 extends StatelessWidget with PreferredSizeWidget {
  // Get.put()을 사용하여 클래스를 인스턴스화하여 모든 "child'에서 사용가능하게 합니다.
  final HomeController c = Get.put(HomeController());

  List<String> categories = ["추천", "신상품", "금주혜택", "알뜰쇼핑"];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // count가 변경 될 때마다 Obx(()=> 를 사용하여 Text()에 업데이트합니다.
      title: Obx(() => Text("Clicks: ${c.count1}")),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search), // 검색 아이콘 생성
          onPressed: () {
            // 아이콘 버튼 실행
            print('Search button is clicked');
          },
        ),
        NamedIcon(
          iconData: Icons.mail,
          notificationCount: 1,
          onTap: () {},
        ),
      ],
      bottom: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 0.3, color: Colors.grey)),
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
        ),
        preferredSize: Size.fromHeight(42),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 42);
}
