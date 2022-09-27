import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_manegment/controller/Controller.dart';

class UserDetailes extends StatefulWidget {
  const UserDetailes({super.key});

  @override
  State<UserDetailes> createState() => _UserDetailesState();
}

class _UserDetailesState extends State<UserDetailes> {
  // this is depndency injection
  HomeController controller = Get.put(HomeController());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getDataFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  String image = "";
                  String title = "";
                  String subtitle = "";
                  String id = "";
                  try {
                    image = controller.user_list!.data![index].picture!;
                  } catch (e) {
                    image = "";
                  }

                  try {
                    title = controller.user_list!.data![index].firstName!;
                  } catch (e) {
                    title = "";
                  }
                  try {
                    subtitle = controller.user_list!.data![index].lastName!;
                  } catch (e) {
                    subtitle = "";
                  }
                  try {
                    id = controller.user_list!.data![index].id!;
                  } catch (e) {
                    id = "";
                  }
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(image),
                    ),
                    title: Text(title),
                    subtitle: Text(subtitle),
                  );
                },
                itemCount: controller.user_list!.data!.length!),
      ),
    );
  }
}
