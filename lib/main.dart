import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:state_manegment/Pages/detail/view/detail.dart';
import 'package:state_manegment/Pages/home/binding/home_binding.dart';

import 'Pages/home/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx managment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     getPages: [
       GetPage(name: "/home", page: () => HomeScreen(), binding: HomeBinding(),),
       GetPage(name: "/detail", page: () => DetailScreen()),
     ],
initialRoute: "/home",
    );
  }
}

