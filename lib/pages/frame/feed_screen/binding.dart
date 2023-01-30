import 'package:get/get.dart';
import 'package:paternproject/pages/frame/feed_screen/FeedController.dart';

class FeedBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<FeedController>(FeedController());
  }
}
