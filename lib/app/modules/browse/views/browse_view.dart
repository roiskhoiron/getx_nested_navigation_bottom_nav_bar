import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/browse_controller.dart';

class BrowseView extends GetView<BrowseController> {
  const BrowseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BrowseView'),
        centerTitle: true,
        leading: Container(),
      ),
      body: Center(
        child: Obx(() {
          return Text(
            'BrowseView is working ${controller.count.value}',
            style: TextStyle(fontSize: 20),
          );
        }),
      ),
    );
  }
}
