import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(1),
        initialRoute: Routes.DASHBOARD,
        onGenerateRoute: controller.onGenerateRoute,
        transitionDelegate: DefaultTransitionDelegate(),
      ),
      bottomNavigationBar: Obx(
            () => BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Browse',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.grey,
          onTap: controller.changePage,
        ),
      ),
    );
  }
}
