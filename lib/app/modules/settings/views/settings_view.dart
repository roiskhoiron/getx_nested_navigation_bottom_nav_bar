import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/routes/app_pages.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings'), leading: Container(),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Settings'),
            ),
            ElevatedButton(
              child: Text('Another Page'),
              onPressed: () => Get.toNamed(Routes.NESTED_FIRST, id: 1),
            ),
          ],
        ),
      ),
    );
  }
}
