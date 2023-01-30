import 'package:get/get.dart';

import 'controller.dart';

class SearchBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchController>(() => SearchController());
  }
}
