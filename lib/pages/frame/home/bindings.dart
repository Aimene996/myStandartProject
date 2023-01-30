import 'package:get/get.dart';
import 'package:paternproject/pages/frame/feed_screen/FeedController.dart';
import 'package:paternproject/pages/frame/search/controller.dart';
import 'package:paternproject/pages/frame/settings/controller.dart';

import 'controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<SearchController>(() => SearchController());
    Get.lazyPut<FeedController>(() => FeedController());
    Get.lazyPut<SettingsController>(() => SettingsController());
  }
}
