import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:market_app_worker/Controller/order_detailles_controller.dart';
import 'package:market_app_worker/Core/Colors/app_colors.dart';
import 'package:market_app_worker/Core/SharedWidgets/app_button.dart';

void showAnimatedDialog(BuildContext context, int index) {
  showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: 'hi',
    barrierColor: Colors.black.withOpacity(0.5), // Background dimming
    transitionDuration: const Duration(milliseconds: 200),
    pageBuilder: (context, animation1, animation2) {
      return Center(
        child: Material(
          color: Colors.transparent,
          child: Container(
            width: double.infinity,
            height: 180.h,
            margin: EdgeInsets.symmetric(horizontal: 40.w),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Qnt : ',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 15.w),
                    SizedBox(
                      height: 50.h,
                      width: 60.w,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: "00",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: AppButton(
                        text: 'Anuller',
                        width: double.infinity,
                        height: 40.h,
                        textSize: 15.sp,
                        color: AppColor.deleteColor,
                        onTap: () => Get.back(),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Expanded(
                      child: AppButton(
                          text: 'Valider',
                          height: 40.h,
                          width: double.infinity,
                          textSize: 13.sp,
                          gradient: const LinearGradient(
                              colors: [AppColor.darkBlue, AppColor.greencolor]),
                          onTap: () {
                            Get.find<OrderDetaillesController>()
                                .productsCheck[index]
                                .value = true;
                            Get.back();
                          }),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
    transitionBuilder: (context, anim1, anim2, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.7, end: 1.0).animate(
          CurvedAnimation(
            parent: anim1,
            curve: Curves.easeInOut,
          ),
        ),
        child: child,
      );
    },
  );
}
