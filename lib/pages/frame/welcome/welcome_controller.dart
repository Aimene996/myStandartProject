import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/state.dart';
import 'package:paternproject/routes/name.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final title = "Applico. ";
  final state = SignInState();
  @override
  void onReady() {
    // ignore: avoid_print
    print('hello');
    Future.delayed(Duration(seconds: 4),()=>Get.offAllNamed(AppRouts.signIn));
    super.onReady();

  }
}
