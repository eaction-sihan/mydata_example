import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern/app/data/model/model.dart';
import 'package:getx_pattern/app/data/provider/request_api.dart';
import 'dart:convert';

import 'package:getx_pattern/app/data/provider/url.dart';

class Menu2MainController extends GetxController {
  var scrollController = ScrollController();

  final postList = [];

  var isLoading = false;
  var hasMore = false;

  @override
  void onInit() {
    super.onInit();

    _getAll();

    this.scrollController.addListener(() {
      if (this.scrollController.position.pixels ==
              this.scrollController.position.maxScrollExtent &&
          this.hasMore) {
        print(hasMore);
        _getAll();
      }
    });
  }

  _getAll() {
    isLoading = true;

    String url = urlBase + 'posts/';
    RequestApi request = RequestApi(url: url, body: null);
    request.get().then((value) {
      if (value.statusCode == 200) {
        Iterable jsonResponse = json.decode(value.body);
        List<MyModel> listMyModel =
            jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        listMyModel.length = 10;

        postList.addAll(listMyModel);

        hasMore = postList.length < 30;
        isLoading = false;

        update();

      } else {
        print("connect error: " + value.reasonPhrase!);
      }
    }).catchError((onError) {
      print("error: " + onError);
    });
  }

  reload() async {
    postList.clear();
    update();
    //await Future.delayed(Duration(seconds: 2));
    _getAll();
  }

}
