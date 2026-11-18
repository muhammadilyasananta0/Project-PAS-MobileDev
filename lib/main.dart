import 'package:flutter/material.dart';
import 'package:flutter_application_pas/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "PAS Flutter",
      initialRoute: Routes.loginclone,
      getPages: Routes.mypages,
    );
  }
}
//listProduk
