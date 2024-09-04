import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class MyServicesListview extends StatelessWidget {
  const MyServicesListview({
    super.key,
    required this.image,
    required this.location,
    required this.price,
    required this.title,
    this.onEditTap,
  });
  final String image;
  final String location;
  final String price;
  final String title;
  final void Function()? onEditTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 105.h,
      margin: EdgeInsets.only(left: 24.w, right: 24.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          bottomLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
          bottomRight: Radius.circular(22.r),
        ),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.1),
            blurRadius: 10.r,
            spreadRadius: 1.r,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // height: 110.h,
                width: 121.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    bottomLeft: Radius.circular(12.r),
                  ),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 15.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  montserratText14(text: title),
                  SizedBox(height: 5.h),
                  montserratText14(text: "From $price"),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Image.asset(locationIcon, height: 9.55.h, width: 7.w),
                      SizedBox(width: 5.w),
                      montserratText(
                          text: location, fontSize: 11.sp, color: blackColor),
                    ],
                  ),
                ],
              ),
            ],
          ),
          GestureDetector(
            onTap: onEditTap,
            child: Container(
              height: 28.h,
              width: 87.w,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.r),
                  bottomRight: Radius.circular(12.r),
                ),
              ),
              child: Center(
                child: montserratText12(
                  text: "Edit",
                  color: whiteColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
