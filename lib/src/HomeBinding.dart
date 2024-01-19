import 'package:get/get.dart';
import 'package:my_app2/src/HomeController.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());

  }

}