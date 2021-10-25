import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/menu1/details_controller.dart';
import 'package:getx_pattern/app/ui/widgets/appbar/app_bar2.dart';
import 'package:getx_pattern/app/ui/widgets/dialog/alert.dart';
import 'package:getx_pattern/app/ui/widgets/etc/loading_widget.dart';
import 'package:getx_pattern/app/ui/widgets/menu/left_menu.dart';

class Menu2Main extends StatelessWidget {
  @override
  Widget build(context) {
    final DetailsController c = Get.put(DetailsController());

    return Scaffold(
      appBar: AppBar2(),
      drawer: LeftMenu1(),
      body: GetBuilder<DetailsController>(
        builder: (_) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListView.separated(
              controller: c.scrollController,
              itemBuilder: (_, index) {
                if (index < c.postList.length) {
                  // 값이 있는 경우
                  var title = c.postList[index].title;
                  return Material(
                    elevation: 5.0,
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Icon(Icons.android_outlined),
                        title: Text('$title'),
                        trailing: Icon(Icons.arrow_forward_outlined),
                        onTap: () => AlertModal(
                            title: c.postList[index].title,
                            midleText: c.postList[index].body).show(),
                      ),
                    ),
                  );
                } else {
                  // 값이 없는 경우
                  if (c.hasMore || c.isLoading) {
                    // 리스트의 끝이 아닌 경우
                    return LoadingWidget();
                  } else {
                    // 리스트의 끝인 경우
                    return Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Column(
                          children: [
                            Text('데이터의 마지막 입니다'),
                            IconButton(
                              onPressed: () {
                                c.reload();
                              },
                              icon: Icon(Icons.refresh_outlined),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                }
              },
              separatorBuilder: (_, index) => Divider(),
              itemCount: c.postList.length + 1,
            ),
          );
        },
      ),
    );
  }
}
