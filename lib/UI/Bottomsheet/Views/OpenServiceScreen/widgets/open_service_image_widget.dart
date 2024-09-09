import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Core/Widgets/circle_container.dart';

class OpenServicesImageWidget extends StatelessWidget {
  const OpenServicesImageWidget({
    super.key,
    this.onBookMarkTap,
    this.isBookmarked = false,
  });
  final VoidCallback? onBookMarkTap;
  final bool isBookmarked;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 227.h,
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(gearboxImaage), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 64.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleContainer(
              onTap: () {
                Get.back();
              },
              padding:
                  EdgeInsets.only(left: 8.w, right: 9.w, top: 8.h, bottom: 9.h),
              child: Center(
                child: Image.asset(
                  backbuttonIcon,
                  width: 10.w,
                  height: 17.h,
                ),
              ),
            ),
            CircleContainer(
                onTap: onBookMarkTap,
                child: Center(
                  child: Icon(
                    isBookmarked
                        ? Icons.favorite_sharp
                        : Icons.favorite_outline_sharp,
                    color:
                        isBookmarked ? redColor : whiteColor.withOpacity(0.8),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
