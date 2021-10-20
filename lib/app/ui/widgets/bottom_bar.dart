import 'package:flutter/material.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: fPrimaryColor,
      child: Container(
        color: Colors.white,
        height: 65,
        child: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black45,
          indicatorColor: Colors.transparent,
          tabs: <Widget>[
            Tab(
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              child: Text(
                '홈',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 25,
              ),
              child: Text(
                '검색',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.save_alt,
                size: 25,
              ),
              child: Text(
                '저장한 콘텐츠',
                style: TextStyle(fontSize: 11),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.list,
                size: 25,
              ),
              child: Text(
                '더보기',
                style: TextStyle(fontSize: 11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
