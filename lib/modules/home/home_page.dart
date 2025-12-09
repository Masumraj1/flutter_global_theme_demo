import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../config/theme/app_colors/app_colors.dart';
import '../../controller/theme_controller.dart';
import '../../routes/app_pages.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Light / Dark Mode"),
        actions: [
          IconButton(
            icon: Obx(() => Icon(
              themeController.isDarkMode.value
                  ? Icons.dark_mode
                  : Icons.light_mode,
            )),
            onPressed: () => themeController.toggleTheme(),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("This is Home", style: Theme.of(context).textTheme.bodyLarge),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.profile),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary),
              child: const Text("Go to Profile",style: TextStyle(color: Colors.white),),
            ),

            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.settings),
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.secondary),
              child: const Text("Go to Settings"),
            ),

            ElevatedButton(
              onPressed: () => Get.toNamed(Routes.about),
              child: const Text("Go to About Page"),
            ),
          ],
        ),
      ),
    );
  }
}
