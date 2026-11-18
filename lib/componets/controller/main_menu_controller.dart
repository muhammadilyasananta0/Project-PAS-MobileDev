import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_pas/menu/home.dart';
import 'package:flutter_application_pas/menu/feat.dart';
import 'package:flutter_application_pas/menu/profile.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  List<Widget> listPages = [HomePage(), FeatPage(), ProfilePage()];
}
