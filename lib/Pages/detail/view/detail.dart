import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_manegment/Pages/home/controller/Controller.dart';
import 'package:state_manegment/services/api_services.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiService = Get.find<ApiService>();
    final homeState = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Get.back();
            // print(apiService.fetchTextFromApi());
            print(homeState.count);
          },
        ),
      ),

    );
  }
}
