import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'config/theme/app_theme/app_theme.dart';
import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      theme: AppTheme.lightTheme(),
      // darkTheme: AppTheme.darkTheme(),
      getPages: AppPages.pages,
    );
  }
}
