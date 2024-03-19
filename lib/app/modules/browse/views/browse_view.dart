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
      body: const Center(
        child: Text(
          'BrowseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
