import 'package:get/get.dart';

class NestedFirstController extends GetxController {
  //TODO: Implement NestedFirstController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    await Future.delayed(Duration(seconds: 2));
    count.value++;
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
