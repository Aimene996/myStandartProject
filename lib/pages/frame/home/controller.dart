import 'package:get/get.dart';

import '../feed_screen/view.dart';

class HomeController extends GetxController {
  HomeController();
  RxInt selectPages = 0.obs;

  void selecterdPages(int index) {
    selectPages.value = index;
  }

  List pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];
}
