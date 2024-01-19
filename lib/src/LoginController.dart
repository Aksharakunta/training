import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:my_app2/src/AppRouts.dart';
import 'LoginScreen.dart';

class LoginController extends GetxController {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Validator( value) {
  if (value!.isEmpty) {
  return 'fill the field ';
  }
  return null;
  }
  page() {
    if (formKey.currentState!.validate()) {
      print('type something');
      Get.toNamed(AppRouts.home);
    }
  }
}