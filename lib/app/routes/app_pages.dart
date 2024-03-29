import 'package:get/get.dart';

import '../modules/browse/bindings/browse_binding.dart';
import '../modules/browse/views/browse_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/nested-first/bindings/nested_first_binding.dart';
import '../modules/nested-first/views/nested_first_view.dart';
import '../modules/outher-page/bindings/outher_page_binding.dart';
import '../modules/outher-page/views/outher_page_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.BROWSE,
      page: () => const BrowseView(),
      binding: BrowseBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.NESTED_FIRST,
      page: () => const NestedFirstView(),
      binding: NestedFirstBinding(),
    ),
    GetPage(
      name: _Paths.OUTHER_PAGE,
      page: () => const OutherPageView(),
      binding: OutherPageBinding(),
    ),
  ];
}
