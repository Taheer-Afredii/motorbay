import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class CustomLabelContainer extends StatelessWidget {
  const CustomLabelContainer({super.key, this.image, this.onTap});
  final String? image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 149.h,
          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 13.h),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.52.r),
          ),
          child: GestureDetector(
            onTap: onTap,
            child: DottedBorder(
              padding:
                  EdgeInsets.only(top: 2.h, left: 2.w, right: 2.w, bottom: 0),
              color: primaryColor,
              dashPattern: const [4],
              child: image != null
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(5.52.r),
                      child: Image.file(
                        File(
                          image!,
                        ),
                        height: 116.h,
                        width: 276.w,
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    )
                  : Container(
                      color: primaryColor.withOpacity(0.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle,
                            color: primaryColor,
                            size: 30.sp,
                          ),
                          SizedBox(height: 17.96.h),
                          Align(
                            alignment: Alignment.center,
                            child: montserratText(
                                text: "Add Cover Photo",
                                fontSize: 11.91.sp,
                                color: primaryColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
            ),
          ),
        ),
        Positioned(
          left: 16.w,
          top: -8.h,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              color: whiteColor,
              child: montserratText(text: "Add Cover Photo", fontSize: 10.sp)),
        ),
      ],
    );
  }
}
