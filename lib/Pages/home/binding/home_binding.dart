import 'package:get/get.dart';

import '../../../services/api_services.dart';
import '../controller/Controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies

  Get.put(ApiService());
  Get.put(HomeController());
  }

}