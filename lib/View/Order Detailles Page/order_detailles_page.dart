import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:market_app_worker/Controller/order_detailles_controller.dart';
import 'package:market_app_worker/View/Order%20Detailles%20Page/commonW/order_detailes_page.dart';
import 'package:market_app_worker/View/Order%20Detailles%20Page/commonW/order_detailles_down_section.dart';
import 'package:market_app_worker/View/Order%20Detailles%20Page/commonW/order_detailles_top_section.dart';

class OrderDetailesPage extends StatelessWidget {
  const OrderDetailesPage({super.key});

  @override
  Widget build(BuildContext context) {
   Get.put(OrderDetaillesController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const OrderDetailesTopSection(),
            SizedBox(height: 10.h),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: const OrderDetailesProducts(),
            )),
            const OrderDetailesDownSec(),
          ],
        ),
      ),
    );
  }
}
