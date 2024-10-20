import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:market_app_worker/Controller/order_detailles_controller.dart';
import 'package:market_app_worker/Core/Colors/app_colors.dart';
import 'package:market_app_worker/Core/SharedWidgets/app_alert_dialogue.dart';
import 'package:market_app_worker/View/Order%20Detailles%20Page/commonW/product_qnt_dialogue.dart';

class ProductCardProductDetailes extends StatelessWidget {
  const ProductCardProductDetailes({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    OrderDetaillesController controller = Get.find<OrderDetaillesController>();
    return SizedBox(
      height: 115.sp,
      width: double.infinity,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          children: [
            Container(
              height: 80.sp,
              width: 80.sp,
              padding: EdgeInsets.all(5.sp),
              decoration: BoxDecoration(
                  color: AppColor.mainScreencolor,
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'assets/images/ifri.png',
                // width: 80.w,
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Boisson Ifri 1L ananas',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      //color: AppColor.greencolor,
                    ),
                  ),
                  // SizedBox(height: 10.h),
                  Text(
                    'Qnt : 10',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'type : gros',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 8.w),
            GestureDetector(
                onTap: () {
                  if (controller.productsCheck[index].value == false) {
                    showAnimatedDialog(context, index);
                  } else {
                    appAlertDialogue(
                      context: context,
                      text: 'Are you sure you want to cancel product check ?',
                      height: 170.h,
                      onConfirmTap: () {
                        controller.productsCheck[index].value = false;
                        Get.back();
                      },
                    );
                  }
                },
                child: Obx(
                  () => controller.productsCheck[index].value == false
                      ? Container(
                          height: 30.sp,
                          width: 30.sp,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(60)),
                        )
                      : Container(
                          height: 30.sp,
                          width: 30.sp,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: AppColor.greencolor,
                          ),
                          child: Icon(
                            Icons.check,
                            size: 20.sp,
                            color: Colors.white,
                          ),
                        ),
                ))
          ],
        ),
      ),
    );
  }
}
