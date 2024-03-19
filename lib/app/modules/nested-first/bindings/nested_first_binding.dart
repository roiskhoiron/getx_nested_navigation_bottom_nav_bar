import 'package:get/get.dart';

import '../controllers/nested_first_controller.dart';

class NestedFirstBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NestedFirstController>(
      () => NestedFirstController(),
    );
  }
}
