import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/instance_manager.dart';
import 'package:market_app_worker/Controller/home_controller.dart';
import 'package:market_app_worker/Controller/home_page_controller.dart';
import 'package:market_app_worker/View/HomePage/commonW/orders_view.dart';
import 'package:market_app_worker/View/HomePage/commonW/top_section_homepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomePageController());
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            const TopSectionHomepage(),
            SizedBox(height: 15.h),
            const OrdersView(),
          ],
        ),
      )),
    );
  }
}
