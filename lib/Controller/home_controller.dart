import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market_app_worker/View/HomePage/home_page.dart';
import 'package:market_app_worker/View/Setting%20Page/setting_page.dart';

class HomeController extends GetxController {
  Widget currentPage = const HomePage();
  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const SettingPage(),
  ];

  void ontapIcon(int index) {
    currentPage = pages[index];
    currentIndex = index;
    update();
  }
}
