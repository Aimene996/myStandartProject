import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paternproject/pages/frame/feed_screen/index.dart';

class FeedController extends GetxController {
  FeedController();
  TextEditingController inputController = TextEditingController();
  final String hintText = "search";
  List<String> lista = [
    "Sport",
    "woman",
    "old",
    "animal",
    'toys',
    "travel",
    'hotel',
  ].obs;
  var selectedIndex = 0.obs;
  String selectedItem = "Sport";
  RxBool isShowIcons = false.obs;
  final state = FeedState();
  @override
  void onReady() {
    // ignore: avoid_print
    print('hello');
    super.onReady();
  }

//? this function to delete input
  void clearInput() {
    if (inputController.text != null) {
      isShowIcons = true.obs;
      inputController.clear();
    } else {
      isShowIcons = false.obs;
    }
  }

  //? now here
}
