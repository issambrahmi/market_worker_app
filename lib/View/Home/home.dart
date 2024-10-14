import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:market_app_worker/View/Home/app_bottom_bar.dart';
import '../../Controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: const AppBottomBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: GetBuilder<HomeController>(builder: (controller) {
        return controller.currentPage;
      }),
    );
  }
}