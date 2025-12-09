import 'package:get/get.dart';
import '../modules/home/home_page.dart';
import '../modules/profile/profile_page.dart';
import '../modules/settings/settings_page.dart';
import '../modules/about/about_page.dart';

class Routes {
  static const home = '/home';
  static const profile = '/profile';
  static const settings = '/settings';
  static const about = '/about';
}

class AppPages {
  static final pages = [
    GetPage(name: Routes.home, page: () =>  HomePage()),
    GetPage(name: Routes.profile, page: () => const ProfilePage()),
    GetPage(name: Routes.settings, page: () => const SettingsPage()),
    GetPage(name: Routes.about, page: () => const AboutPage()),
  ];
}
