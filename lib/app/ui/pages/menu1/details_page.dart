import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/details_controller.dart';
import 'package:getx_pattern/app/ui/pages/menu1/widgets/loading_widget.dart';


class DetailsPage extends StatelessWidget {
  @override
  Widget build(context) {
    final DetailsController c = Get.put(DetailsController());

    return Scaffold(
      appBar: AppBar(
        title: Text('oi'.tr),
      ),
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
                        onTap: () => Get.defaultDialog(
                          title: c.postList[index].title,
                          radius: 5.0,
                          middleText: c.postList[index].body,
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                print("test");
                                Get.back();
                              },
                              child: Text(
                                "OK",
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                              ),
                            )
                          ],
                        ),
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
