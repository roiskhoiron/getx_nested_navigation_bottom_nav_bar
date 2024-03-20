import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DashboardView'),
        centerTitle: true,
        leading: Container(),
      ),
      body: Center( 
        child: Obx(() {
          return Text(
            'DashboardView is working ${controller.valueChange.value}',
            style: const TextStyle(fontSize: 20),
          );
        }),
      ),
    );
  }
}
