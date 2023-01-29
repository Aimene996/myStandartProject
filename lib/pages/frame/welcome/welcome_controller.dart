import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/state.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Applico";
  final state = WelcomeState();
  @override
  void onReady() {
    // ignore: avoid_print
    print('hello');
    super.onReady();
  }
}
