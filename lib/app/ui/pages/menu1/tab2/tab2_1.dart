import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab2/widgets/bottom_modal.dart';
import 'package:getx_pattern/app/ui/pages/menu1/tab2/widgets/button_widget.dart';

import '../details.dart';


class Tab2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(100),
      child: Column(
        children: [
          RaisedButtonCustomWidget(
            icon: Icons.list,
            text: "oi",
            onPressed: () => Get.to(DetailsPage()),
            borderColor: Colors.purple,
          ),
          ElevatedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return BottomModal();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
