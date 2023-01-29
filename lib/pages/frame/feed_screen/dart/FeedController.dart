import 'package:get/get.dart';
import 'package:paternproject/pages/frame/feed_screen/dart/state.dart';


class FeedController extends GetxController {
  FeedController();

  final state = FeedState();
  @override
  void onReady() {
    // ignore: avoid_print
    print('hello');
    super.onReady();
   
  }
}
