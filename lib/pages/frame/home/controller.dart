import 'package:get/get.dart';
import 'package:paternproject/pages/frame/feed_screen/dart/index.dart';

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
