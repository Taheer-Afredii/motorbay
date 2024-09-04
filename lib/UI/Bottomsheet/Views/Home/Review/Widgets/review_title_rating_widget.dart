import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/text_constant.dart';

class ReviewTitleRatingContainer extends StatelessWidget {
  const ReviewTitleRatingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          montserrat18Text(text: "JK Gearboxes"),
          SizedBox(width: 50.w),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
            decoration: BoxDecoration(
                color: const Color(0xFFDADADA),
                borderRadius: BorderRadius.circular(6.r)),
            child: Row(
              children: [
                Image.asset(starIcon, height: 10.h, width: 11.w),
                SizedBox(width: 5.w),
                montserratText(
                    text: "4.5",
                    fontSize: 10.13.sp,
                    color: const Color(0xFF363030))
              ],
            ),
          )
        ],
      ),
    );
  }
}
