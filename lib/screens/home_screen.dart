// import 'package:class1_17_9/component/change_them.dart';
// import 'package:get/get.dart';
import 'package:class1_17_9/screens/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> names = ["Ahmed", "Omar", "Saad", "Bashair", "Ahlam"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(
                        names: names,
                      ),
                    ));
              },
              child: Text("Go To Screen")),
          ElevatedButton(
              onPressed: () {
                Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
                );
              },
              child: Text("Data"))
        ],
      ),
    );
  }
}
