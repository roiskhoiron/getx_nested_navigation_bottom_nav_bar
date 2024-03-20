import 'package:get/get.dart';

class BrowseController extends GetxController {
  //TODO: Implement BrowseController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    await Future.delayed(Duration(seconds: 2), () {
      count.value++;
    });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
