import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:market_app_worker/Controller/home_controller.dart';
import 'package:market_app_worker/Core/Colors/app_colors.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({super.key});

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColor.mainScreencolor,
      elevation: 0,
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 0.w),
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: GetBuilder<HomeController>(
        builder: (controller) => TabBar(
            indicatorColor: AppColor.greencolor,
            controller: TabController(
                initialIndex: controller.currentIndex, length: 2, vsync: this),
            onTap: (index) => controller.ontapIcon(index),
            tabs: [
              Tab(
                icon: SvgPicture.asset('assets/icons/home.svg',
                    height: 25.h,
                    width: 25.w,
                    colorFilter: ColorFilter.mode(
                        controller.currentIndex == 0
                            ? AppColor.greencolor
                            : Colors.black54,
                        BlendMode.srcIn)),
              ),
              Tab(
                icon: SvgPicture.asset('assets/icons/setting.svg',
                    height: 25.h,
                    width: 25.w,
                    colorFilter: ColorFilter.mode(
                        controller.currentIndex == 1
                            ? AppColor.greencolor
                            : Colors.black54,
                        BlendMode.srcIn)),
              ),
            ]),
      ),
    );
  }
}
