import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/ui/widgets/dialog/confirm.dart';
import 'package:getx_pattern/app/ui/widgets/modal/bottom_modal.dart';
import 'package:getx_pattern/app/ui/widgets/button/raised_button_widget.dart';

class Tab2_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(100),
      child: Column(
        children: [
          RaisedButtonWidget(
            icon: Icons.list,
            text: "oi",
            onPressed: () {
              ConfirmModal(
                title: '진행하시겠습니까?',
              ).show(context).then((exit) {
                if (exit!) {
                  print('OK');
                } else {
                  print('Cancel');
                }
              }) ;
            },
            borderColor: Colors.purple,
          ),
          ElevatedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () {
              BottomModal(cont: _bottomModal(context)).show(context);
            },
          ),
        ],
      ),
    );
  }

  Container _bottomModal(context) {
    return Container(
      height: 300,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Modal BottomSheet'),
            ElevatedButton(
              child: const Text('Close BottomSheet'),
              onPressed: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
    ;
  }
}
