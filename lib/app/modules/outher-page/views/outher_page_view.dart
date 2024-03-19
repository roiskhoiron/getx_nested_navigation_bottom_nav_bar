import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/outher_page_controller.dart';

class OutherPageView extends GetView<OutherPageController> {
  const OutherPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OutherPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OutherPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
