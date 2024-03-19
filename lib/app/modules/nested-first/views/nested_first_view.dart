import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/nested_first_controller.dart';

class NestedFirstView extends GetView<NestedFirstController> {
  const NestedFirstView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NestedFirstView'),
        centerTitle: true,
      ),
      body:  Center(
        child: Column(
          children: [
            const Text(
              'NestedFirstView is working',
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              child: const Text('Outher Page'),
              onPressed: () => Get.toNamed(Routes.OUTHER_PAGE),
            ),
          ],
        ),
      ),
    );
  }
}
