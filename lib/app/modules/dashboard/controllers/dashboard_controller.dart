import 'package:get/get.dart';

class DashboardController extends GetxController {
  //TODO: Implement DashboardController

  final count = 0.obs;

  var valueChange = 'aku'.obs;
  @override
  void onInit() {
    Get.log('DashboardController onInit');
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    await Future.delayed(Duration(seconds: 5), () {
      valueChange.value = 'aku ganti';
    },);
    Get.log('DashboardController onReady');
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
