import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app2/src/LoginController.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(builder: (controller) =>
        Scaffold(
          body: Form(
            key: controller.formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "enter the name"),
                    validator:(value) {
                     return  controller.Validator(value);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "enter the email address"),

                    validator:(value) {
                      return  controller.Validator(value);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),

                  ElevatedButton(onPressed: controller.page,

                      child: Text('submit'))
                ]
            ),
          ),
        ),);
  }
}
