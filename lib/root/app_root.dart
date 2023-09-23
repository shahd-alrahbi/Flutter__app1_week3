// import 'package:class1_17_9/component/change_them.dart';
// import 'package:class1_17_9/screens/home_screen.dart';
import 'package:class1_17_9/screens/prodects_screen.dart';
import 'package:class1_17_9/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Homescreen(),
      home: ProdectsScreen(),
      theme: AppThemw.light,
      darkTheme: AppThemw.dark,
      themeMode: Get.isDarkMode ? ThemeMode.dark : ThemeMode.light,
      // themeMode: ThemeMode.dark,
    );
  }
}
