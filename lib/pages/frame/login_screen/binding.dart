import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/welcome_controller.dart';

import 'controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
