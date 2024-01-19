import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app2/src/HomeController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  controller.onpush();
                },
                icon: Icon(Icons.logout))
          ],
        ),
        body: Center(child: Text("Hello")),

    drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("data"),
            ),
            Divider(
              thickness: 3,
            ),
            CircleAvatar(

            )
          ],
        ),

      ),
      ),
    );
  }
}
