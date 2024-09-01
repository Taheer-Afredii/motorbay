import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Core/Widgets/circle_container.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/SearchResult/seaarch_result_screen.dart';

class HomeHeadingWidget extends StatelessWidget {
  const HomeHeadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.center,
      children: [
        const TopContainer2(),
        Padding(
          padding: EdgeInsets.only(top: 68.h, right: 25.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                logoText,
                width: 128.w,
                height: 25.69.h,
                color: whiteColor,
              ),
              SizedBox(width: 72.w),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SeaarchResultScreen());
                },
                child: CircleContainer(
                  padding: EdgeInsets.only(
                      left: 8.w, right: 9.w, top: 8.h, bottom: 9.h),
                  child: Image.asset(searchIcon),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
