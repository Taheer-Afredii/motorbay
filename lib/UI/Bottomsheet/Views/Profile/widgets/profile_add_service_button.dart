import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/Views/AddServicesScreen/add_services_screen.dart';

class AddServiceButton extends StatelessWidget {
  const AddServiceButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const AddServicesScreen());
      },
      child: Container(
        height: 67.h,
        width: 342.w,
        padding: EdgeInsets.only(left: 20.w, right: 16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.06.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            montserratText(text: "Add a Service", fontSize: 14.63.sp),
            DottedBorder(
              borderType: BorderType.RRect,
              padding: EdgeInsets.zero,
              dashPattern: const [4],
              strokeWidth: 1.2,
              radius: Radius.circular(5.49.r),
              color: primaryColor,
              child: Container(
                height: 37.h,
                width: 74.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_circle,
                      color: primaryColor,
                      size: 20.sp,
                    ),
                    SizedBox(width: 8.w),
                    montserratText(
                        text: "Add",
                        fontSize: 10.63.sp,
                        color: primaryColor,
                        fontWeight: FontWeight.w600),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
