import 'package:get/get.dart';
import 'package:paternproject/pages/frame/welcome/index.dart';
import 'name.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = AppRouts.INITIAL;

  static List<GetPage> routes = [
    GetPage(
        name: AppRouts.INITIAL,
        page: (() => const WelcomePage()),
        binding: WelcomeBindings()),
  ];
}
