import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_manegment/Pages/home/controller/Controller.dart';
import 'package:state_manegment/services/api_services.dart';

import '../../detail/view/detail.dart';
class HomeScreen extends StatelessWidget {


 const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final apiService = Get.put(ApiService());
    // final homeState = Get.put(HomeController());
    final homeController = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(() =>  Text("${homeController.count}",
             style: TextStyle(fontSize: 24),),),

            ElevatedButton(
                onPressed: (){
                  Get.snackbar("title", "This is Getx Snckbar",
                  snackPosition: SnackPosition.BOTTOM
                  );
               // homeController.increment();
               // Get.toNamed("/detail");
               //  //  print(apiService.fetchTextFromApi());
                },
              style: ButtonStyle(
                backgroundColor:  MaterialStateProperty.all<Color>(Colors.deepPurple),
              ),
              child: Text(
                'Increment',
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Get.defaultDialog(title: "this our dialog");

               // Get.toNamed("/detail");
                //  print(apiService.fetchTextFromApi());
              },
              style: ButtonStyle(
                backgroundColor:  MaterialStateProperty.all<Color>(Colors.black26),
              ),
              child: Text(
                'go to details',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
