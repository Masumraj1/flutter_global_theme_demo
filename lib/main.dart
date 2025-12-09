import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:theme_color/routes/app_pages.dart';

import 'config/theme/app_theme/app_theme.dart';
import 'controller/theme_controller.dart';
import 'modules/home/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());

   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,   // ✅ initial route
      getPages: AppPages.pages,
      title: "Light/Dark Mode Demo",
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: themeController.theme,
      home:  HomePage(),
    ));
  }
}
