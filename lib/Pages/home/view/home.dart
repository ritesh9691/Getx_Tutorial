import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../detail/userdetailes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final apiService = Get.put(ApiService());
    // final homeState = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Appbar")),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => UserDetailes());
              },
              child: Text("go to next page"),
            ),
          ],
        ),
      ),
    );
  }
}
