import 'package:flutter/material.dart';
import 'package:my_app2/src/AppRouts.dart';
import 'package:my_app2/src/Apppages.dart';
import 'package:my_app2/src/LoginController.dart';
import 'package:my_app2/src/LoginBinding.dart';
import 'package:my_app2/src/LoginScreen.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.indigo),
        drawerTheme: DrawerThemeData(backgroundColor: Colors.green),
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.amberAccent))),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: AppRouts.logIn,
      getPages: AppPages.pages,
    );
  }

}