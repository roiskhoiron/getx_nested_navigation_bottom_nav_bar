import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/NoTransitionDelegeate.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        key: Get.nestedKey(Routes.NESTED_NAV_KEY),
        initialRoute: Routes.DASHBOARD,
        onGenerateRoute: (settings) =>  controller.onGenerateRoute(settings),
        transitionDelegate: NoAnimationTransitionDelegate(),
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
          onTap:(value) =>  controller.changePage(value),
        ),
      ),
    );
  }
}
