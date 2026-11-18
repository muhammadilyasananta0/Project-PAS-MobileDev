import 'package:flutter_application_pas/pages/menu_drawer.dart';
import 'package:flutter_application_pas/pages/login_clone.dart';
import 'package:get/get.dart';

class Routes {
  // List pages untuk aplikasi.

  static const String loginclone = "/loginclone";
  static const String menudrawer = "/menudrawer";

  // Dll.

  static final mypages = [
    GetPage(name: loginclone, page: () => LoginClone()),
    GetPage(name: menudrawer, page: () => MenuDrawer()),
  ];
}
