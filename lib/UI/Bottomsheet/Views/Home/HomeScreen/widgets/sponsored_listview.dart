import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/circle_container.dart';

class SponsoredListview extends StatelessWidget {
  const SponsoredListview({
    super.key,
    required this.image,
    required this.location,
    required this.price,
    required this.onBookMarkTap,
    required this.isBookmarked,
    required this.onTap,
    this.title,
  });
  final String image;
  final String location;
  final String price;
  final VoidCallback onBookMarkTap;
  final bool isBookmarked;
  final VoidCallback onTap;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 0.7,
        color: whiteColor,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(9.38.r),
                      topRight: Radius.circular(9.38.r)),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Image.asset(
                        image,
                        height: 115.h,
                        fit: BoxFit.cover,
                        width: 143.w,

                        // width: 135.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.68.h),
                Padding(
                  padding: EdgeInsets.only(left: 8.91.w, bottom: 7.84.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      montserratText(
                          text: title ?? "",
                          fontSize: 11.6.sp,
                          color: blackColor.withOpacity(0.9)),
                      SizedBox(height: 2.h),
                      SizedBox(
                        width: 85.w,
                        child: RichText(
                            text: TextSpan(
                          children: [
                            TextSpan(
                              text: "From ",
                              style: GoogleFonts.montserrat(
                                color: blackColor.withOpacity(0.9),
                                fontSize: 9.67.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextSpan(
                              text: price,
                              style: TextStyle(
                                color: blackColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Image.asset(
                            locationIcon,
                            height: 9.09.h,
                            width: 6.66.w,
                          ),
                          SizedBox(width: 4.w),
                          montserratText(
                            text: location,
                            fontSize: 9.09.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.w, bottom: 15.h),
              child: GestureDetector(
                onTap: onBookMarkTap,
                child: CircleContainer(
                  height: 30.01.h,
                  width: 30.01.w,
                  color: whiteColor,
                  padding: EdgeInsets.all(6.5.w),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  child: Icon(
                      isBookmarked ? Icons.favorite : Icons.favorite_outline,
                      color: const Color(0xFFFF1717),
                      size: 16.sp),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
