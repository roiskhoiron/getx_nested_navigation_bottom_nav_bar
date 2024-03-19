import 'package:get/get.dart';

import '../controllers/outher_page_controller.dart';

class OutherPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OutherPageController>(
      () => OutherPageController(),
    );
  }
}
