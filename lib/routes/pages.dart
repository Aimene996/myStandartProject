import 'package:get/get.dart';
import 'package:paternproject/pages/frame/feed_screen/dart/index.dart';
import 'package:paternproject/pages/frame/login_screen/index.dart';
import 'package:paternproject/pages/frame/signIn/index.dart';
import 'package:paternproject/pages/frame/welcome/index.dart';
import 'name.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = AppRouts.INITIAL;
  static const feed = AppRouts.feed;
  static List<GetPage> routes = [
    GetPage(
        name: AppRouts.INITIAL,
        page: (() => const WelcomePage()),
        binding: WelcomeBindings()),
    GetPage(
        name: AppRouts.feed, page: (() => FeedPage()), binding: FeedBindings()),
    GetPage(
        name: AppRouts.login,
        page: (() => const LoginScreen()),
        binding: LoginBindings()),
    GetPage(
        name: AppRouts.signIn,
        page: (() => const SignInScreen()),
        binding: SignInBindings()),
  ];
}
