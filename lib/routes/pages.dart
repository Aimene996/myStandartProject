import 'package:get/get.dart';
import 'package:paternproject/pages/frame/feed_screen/view.dart';
import 'package:paternproject/pages/frame/home/bindings.dart';
import 'package:paternproject/pages/frame/home/view.dart';
import 'package:paternproject/pages/frame/login_screen/index.dart';
import 'package:paternproject/pages/frame/search/bindings.dart';
import 'package:paternproject/pages/frame/search/view.dart';
import 'package:paternproject/pages/frame/settings/bindings.dart';
import 'package:paternproject/pages/frame/settings/view.dart';
import 'package:paternproject/pages/frame/signIn/index.dart';
import 'package:paternproject/pages/frame/welcome/index.dart';
import 'name.dart';

class AppPages {
  // ignore: constant_identifier_names
  static const INITIAL = AppRouts.INITIAL;
  static const feed = AppRouts.feed;
  static const Home = AppRouts.HOME;
  static const search = AppRouts.search;
  static const settings = AppRouts.settings;
  static List<GetPage> routes = [
    GetPage(
        name: AppRouts.INITIAL,
        page: (() => const WelcomePage()),
        binding: WelcomeBindings()),

    //?===============
    GetPage(name: AppRouts.feed, page: (() => FeedPage())),
    GetPage(
        name: AppRouts.login,
        page: (() => const LoginScreen()),
        binding: LoginBindings()),
    //?===============
    GetPage(
        name: AppRouts.signIn,
        page: (() => const SignInScreen()),
        binding: SignInBindings()),
    //?===============
    GetPage(
        name: AppRouts.HOME,
        page: (() => const HomeScreen()),
        binding: HomeBindings()),
    //?===============
    GetPage(
        name: AppRouts.settings,
        page: (() => const SettingsScrenn()),
        binding: SettingsBindings()),
    //?===============
    GetPage(
        name: AppRouts.search,
        page: (() => const SearchScreen()),
        binding: SearchBindings()),
  ];
}
