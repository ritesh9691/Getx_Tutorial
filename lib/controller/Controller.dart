import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:state_manegment/Models/model1.dart';

// using controller to make api to give access of this api to every where it's needed
class HomeController extends GetxController {
  user_model? user_list;
  var isLoading = false.obs;
  getDataFromApi() async {
    try {
      isLoading(true);
      final Response = await http.get(
          Uri.parse("https://dummyapi.io/data/v1/user")!,
          headers: {"app-id": "633319e3b1667aab8cb1f7eb"});
      if (Response.statusCode == 200) {
        // data success
        var result = json.decode(Response.body);
        print(result);

        user_list = user_model.fromJson(result);
      }
    } catch (e) {
      // some exeption happened
      print("Error:$e");
    } finally {
      // data failed to load
      isLoading(false);
    }
  }
}
