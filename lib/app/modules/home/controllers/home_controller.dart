import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/modules/dashboard/views/dashboard_view.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/modules/history/bindings/history_binding.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/modules/history/views/history_view.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/modules/nested-first/bindings/nested_first_binding.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/modules/nested-first/views/nested_first_view.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/modules/settings/bindings/settings_binding.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/modules/settings/views/settings_view.dart';
import 'package:getx_nested_navigation_bottom_nav_bar/app/routes/app_pages.dart';

import '../../browse/bindings/browse_binding.dart';
import '../../browse/views/browse_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;

  var onGenerateRoute = (RouteSettings? settings) {
    if(settings!.name == Routes.DASHBOARD) {
      return GetPageRoute(
        settings: settings,
        page: () => const DashboardView(),
        binding: DashboardBinding(),
      );
    }

    if(settings!.name == Routes.BROWSE) {
      return GetPageRoute(
        settings: settings,
        page: () => const BrowseView(),
        binding: BrowseBinding(),
      );
    }

    if(settings.name == Routes.HISTORY) {
      return GetPageRoute(
        settings: settings,
        page: () => const HistoryView(),
        binding: HistoryBinding(),
      );
    }

    if(settings.name == Routes.SETTINGS) {
      return GetPageRoute(
        settings: settings,
        page: () => const SettingsView(),
        binding: SettingsBinding(),
      );
    }

    if(settings.name == Routes.NESTED_FIRST) {
      return GetPageRoute(
        settings: settings,
        page: () => const NestedFirstView(),
        binding: NestedFirstBinding(),
      );
    }
    return null;
  };

  var currentIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  void changePage(int value) {
    currentIndex.value = value;
    switch (value) {
      case 0:
        Get.toNamed(Routes.DASHBOARD, id: Routes.NESTED_NAV_KEY);
        break;
      case 1:
        Get.toNamed(Routes.BROWSE, id: Routes.NESTED_NAV_KEY);
        break;
      case 2:
        Get.toNamed(Routes.HISTORY, id: Routes.NESTED_NAV_KEY);
        break;
      case 3:
        Get.toNamed(Routes.SETTINGS, id: Routes.NESTED_NAV_KEY);
        break;
      default:
    }
  }
}
