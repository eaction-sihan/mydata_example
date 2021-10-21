import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NamedIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback? onTap;
  final int notificationCount;

  const NamedIcon({
    Key? key,
    this.onTap,
    required this.iconData,
    required this.notificationCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (this.notificationCount > 0) {
      return InkWell(
        onTap: onTap,
        child: Container(
          width: 72,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(iconData, size: 26),
                ],
              ),
              Positioned(
                top: 4,
                right: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.red),
                  alignment: Alignment.center,
                  child: Text('$notificationCount'),
                ),
              )
            ],
          ),
        ),
      );
    } else {
      return IconButton(
        icon: Icon(iconData), // 검색 아이콘 생성
        onPressed: () {
          // 아이콘 버튼 실행
          print('Search button is clicked');
        },
      );
    }
  }
}
