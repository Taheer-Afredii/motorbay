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
  });
  final String image;
  final String location;
  final String price;
  final VoidCallback onBookMarkTap;
  final bool isBookmarked;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.w),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 185.h,
          width: 144.w,
          // padding: EdgeInsets.only(top: 0.h, left: 11.w, right: 11.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 185.h,
                    width: 144.w,
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(9.38.r),
                        border: const Border(
                          right: BorderSide(
                            color: Color(0xFFE9E9E9),
                          ),
                          left: BorderSide(
                            color: Color(0xFFE9E9E9),
                          ),
                          bottom: BorderSide(
                            color: Color(0xFFE9E9E9),
                          ),
                        )),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8.91.w, bottom: 7.84.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              montserratText(
                                  text: "Oil Change", fontSize: 11.6.sp),
                              SizedBox(height: 2.h),
                              SizedBox(
                                width: 85.w,
                                child: RichText(
                                    text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "From ",
                                      style: GoogleFonts.montserrat(
                                        color: blackColor,
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
                              SizedBox(height: 2.5.h),
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
                          Padding(
                            padding: EdgeInsets.only(left: 8.w, bottom: 15.h),
                            child: GestureDetector(
                              onTap: onBookMarkTap,
                              child: CircleContainer(
                                height: 28.01.h,
                                width: 28.01.w,
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
                                    isBookmarked
                                        ? Icons.favorite
                                        : Icons.favorite_outline,
                                    color: const Color(0xFFFF1717),
                                    size: 16.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(9.38.r),
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
