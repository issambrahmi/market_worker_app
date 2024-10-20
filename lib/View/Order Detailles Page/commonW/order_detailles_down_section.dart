import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:market_app_worker/Core/Colors/app_colors.dart';
import 'package:market_app_worker/Core/SharedWidgets/app_button.dart';

class OrderDetailesDownSec extends StatelessWidget {
  const OrderDetailesDownSec({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -0.01),
              blurRadius: 1,
              color: Colors.black38,
              blurStyle: BlurStyle.solid)
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(20.sp),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Orders completed : ',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '10/26',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            AppButton(
              text: 'Valider la commande',
              height: 45.h,
              width: double.infinity,
              textSize: 14.sp,
              gradient: const LinearGradient(
                colors: [AppColor.darkBlue, AppColor.greencolor],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
