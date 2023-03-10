import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/welcome_controller.dart';

import 'controller.dart';

class SignInBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(() => SignInController());
  }
}
