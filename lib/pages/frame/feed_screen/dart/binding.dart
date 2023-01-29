import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/welcome_controller.dart';

class FeedBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeController>(() => WelcomeController());
  }
}
