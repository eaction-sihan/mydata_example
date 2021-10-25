import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/controller/common/list_type1_controller.dart';
import 'package:getx_pattern/app/ui/theme/app_theme.dart';
import 'package:getx_pattern/app/ui/widgets/image/image_container.dart';
import 'package:getx_pattern/app/ui/widgets/button/last_list_btn.dart';
import 'package:getx_pattern/app/ui/widgets/etc/loading_widget.dart';
import 'package:getx_pattern/app/ui/widgets/box/round_box.dart';
import 'package:google_fonts/google_fonts.dart';

class ListType1 extends StatelessWidget {
  final ListType1Controller c = Get.put(ListType1Controller());

  final String type;

  ListType1({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: GetBuilder<ListType1Controller>(builder: (_) {
      return ListView.separated(
        controller: c.scrollController,
        itemBuilder: (_, index) {
          if (index < c.postList.length) {
            // 값이 있는 경우
            if(type == "type1") {
              return Container(
                child: Column(
                  children: [
                    _buildTop(index),
                    _buildWriting(index),
                    _buildType(index),
                    _buildWriter(index),
                    _buildImage(index),
                    // Divider(height: 1, thickness: 1, color: Colors.grey[300]),
                    _buildTail(index),
                  ],
                ),
              );
            } else {
              return Container(
                // child: Column(
                //   children: [
                //     _buildTop(index),
                //     _buildWriting(index),
                //     _buildType(index),
                //     _buildWriter(index),
                //
                //     _buildTail(index),
                //   ],
                // ),
              );
            }

          } else {
            // 값이 없는 경우
            if (c.hasMore || c.isLoading) {
              // 리스트의 끝이 아닌 경우
              return LoadingWidget();
            } else {
              // 리스트의 끝인 경우
              return LastListBtn(onPressed: () {
                c.reload();
              });
            }
          }
        },
        separatorBuilder: (_, index) => Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey[300],
        ),
        itemCount: c.postList.length + 1,
      );
    }));
  }

  Padding _buildTop(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Icon(
              FontAwesomeIcons.comment,
              color: fTextColor,
              size: 22,
            ),
            SizedBox(width: 3),
            Container(
              padding: EdgeInsets.all(4),
              child: Text(c.postList[index].category,
                  style: GoogleFonts.nanumGothic(
                      fontSize: 15.0,
                      color: fTextColor,
                      fontWeight: FontWeight.bold)),
            ),
          ]),
        ],
      ),
    );
  }

  Padding _buildWriting(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 0),
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

  Padding _buildType(index) {
    return Padding(
        padding:
        const EdgeInsets.only(top: 16, bottom: 10, left: 20, right: 24),
        child:
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: List.generate(
                  c.postList[index].type.length,
                      (i) => RoundBox(
                    title: c.postList[index].type[i],
                  ),
                ),
              ),
            ],
          ),
          Text(
            c.postList[index].date,
            style: GoogleFonts.nanumGothic(fontSize: 12.0, color: fTextColor),
          ),
        ]
        )
    );
  }

  Padding _buildWriter(index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 0,
        horizontal: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Row(
              children: [
                TextButton.icon(
                  icon: ImageContainer(
                          width: 30,
                          height: 30,
                          borderRadius: 15,
                          imageUrl: c.postList[index].profileImgUri,
                        ),
                  style: TextButton.styleFrom(primary: fTextColor),
                  label: Text(
                    ' ${c.postList[index].userName}',
                    style: textTheme().subtitle2,
                  ),
                  onPressed: () {
                    print('Writer button is clicked');
                  },
                ),
              ],
            ),
          ]),

          Row(
            children: [
              Text("${c.postList[index].commentCount}", style: textTheme().bodyText2,),
              SizedBox(width: 3),
              Icon(
                FontAwesomeIcons.arrowCircleUp,
                color: fPrimaryColor,
                size: 16,
              ),
              SizedBox(width: 8),
              Text("${c.postList[index].authCount}", style: textTheme().bodyText2,),
              SizedBox(width: 3),
              Icon(
                FontAwesomeIcons.arrowCircleDown,
                color: Colors.blue,
                size: 16,
              ),
              SizedBox(width: 8),
            ],
          ),

        ],
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

  Padding _buildTail(index) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
              children: [
                IconButton(
                  icon: Icon(FontAwesomeIcons.star),
                  color: fTextColor,
                  iconSize: 16,
                  onPressed: () {
                    print('star button is clicked');
                  },
                ),
              ]
          ),
          Row(
              children: [
                TextButton.icon(
                  icon: Icon(FontAwesomeIcons.comment, size: 16),
                  style: TextButton.styleFrom(primary: fTextColor),
                  label: Text(
                    "${c.postList[index].commentCount}",
                    style: textTheme().bodyText2,
                  ),
                  onPressed: () {
                    print('comment button is clicked');
                  },
                )
              ]
          ),
          Row(
              children: [
                TextButton.icon(
                  icon: Icon(FontAwesomeIcons.heart, size: 16),
                  style: TextButton.styleFrom(primary: fTextColor),
                  label: Text(
                    "${c.postList[index].authCount}",
                    style: textTheme().bodyText2,
                  ),
                  onPressed: () {
                    print('heart button is clicked');
                  },
                )
              ]
          ),
          Row(
              children: [
                IconButton(
                  icon: Icon(Icons.share_outlined),
                  color: fTextColor,
                  iconSize: 20,
                  onPressed: () {
                    print('share button is clicked');
                  },
                ),
              ]
          ),
          Row(
              children: [
                TextButton.icon(
                  icon: Icon(FontAwesomeIcons.userCircle, size: 16),
                  style: TextButton.styleFrom(primary: fTextColor),
                  label: Text(
                    "${c.postList[index].authCount}",
                    style: textTheme().bodyText2,
                  ),
                  onPressed: () {
                    print('user button is clicked');
                  },
                )
              ]
          ),
        ],
      ),
    );
  }
}
