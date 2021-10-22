import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/image_container.dart';
import 'package:getx_pattern/app/ui/widgets/last_list_btn.dart';
import 'package:getx_pattern/app/ui/widgets/loading_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'controller/menu1_controller.dart';

class Tab1_1 extends StatelessWidget {
  final Menu1Controller c = Get.put(Menu1Controller());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GetBuilder<Menu1Controller>(builder: (_) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 2.0),
            child: ListView.separated(
              controller: c.scrollController,
              itemBuilder: (_, index) {
                if (index < c.postList.length) {
                  // 값이 있는 경우
                  return Container(
                    child: Column(
                      children: [
                        _buildTop(index),
                        _buildWriting(index),
                        _buildWriter(index),
                        _buildImage(index),
                        // Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                        _buildTail(c.postList[index].commentCount),
                      ],
                    ),
                  );
                } else {
                  // 값이 없는 경우
                  if (c.hasMore || c.isLoading) {
                    // 리스트의 끝이 아닌 경우
                    return LoadingWidget();
                  } else {
                    // 리스트의 끝인 경우
                    return LastListBtn(onPressed:() {c.reload();});
                  }
                }
              },
              separatorBuilder: (_, index) => Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey[200],
              ),
              itemCount: c.postList.length + 1,
            ),
          );
        }));
  }

  Padding _buildTop(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(4)),
              //color: Color.fromRGBO(247, 247, 247, 1),
            ),
            child: Text(c.postList[index].category,
                style: GoogleFonts.nanumGothic(
                    fontSize: 15.0,
                    color: fTextColor,
                    fontWeight: FontWeight.bold)),
          ),
          Text(
            c.postList[index].date,
            style: textTheme().bodyText2,
          ),
        ],
      ),
    );
  }

  Padding _buildWriter(index) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          ImageContainer(
            width: 30,
            height: 30,
            borderRadius: 15,
            imageUrl: c.postList[index].profileImgUri,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: ' ${c.postList[index].userName}',
                    style: textTheme().subtitle2),
                // TextSpan(
                //     text: ' ${c.postList[index].location}',
                //     style: textTheme().bodyText2),
                // TextSpan(
                //     text: ' 인증 ${c.postList[index].authCount}회',
                //     style: textTheme().bodyText2)
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding _buildWriting(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          c.postList[index].content,
          style: textTheme().bodyText2,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
        ),
      ),
    );
  }

  Visibility _buildImage(index) {
    return Visibility(
      visible: c.postList[index].contentImgUri != '',
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: Image.network(
          c.postList[index].contentImgUri,
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding _buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.smile,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(width: 8),
          Text(
            "$commentCount",
            style: textTheme().bodyText2,
          ),
          SizedBox(width: 22),
          Icon(
            FontAwesomeIcons.shareAlt,
            color: Colors.grey,
            size: 22,
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
