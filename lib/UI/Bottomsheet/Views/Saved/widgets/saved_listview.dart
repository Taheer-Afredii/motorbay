import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/circle_container.dart';

class SavedScreeListview extends StatelessWidget {
  const SavedScreeListview({
    super.key,
    required this.image,
    required this.location,
    required this.price,
    required this.onBookMarkTap,
    required this.isBookmarked,
    required this.title,
    required this.rating,
    this.onTap,
    this.isRated,
    this.onRemove,
  });
  final String image;
  final String location;
  final String price;
  final VoidCallback onBookMarkTap;
  final bool isBookmarked;
  final String title;
  final String rating;
  final void Function()? onTap;
  final bool? isRated;
  final void Function()? onRemove;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
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
                  children: [
                    SizedBox(height: 2.h),
                    isRated ?? true
                        ? Row(
                            children: [
                              Image.asset(starIcon,
                                  height: 14.77.h, width: 16.w),
                              SizedBox(width: 5.w),
                              montserratText(
                                  text: rating,
                                  fontSize: 17.59.sp,
                                  color: const Color(0xFF363030)),
                            ],
                          )
                        : montserratText14(
                            text: "Not yet rated", fontWeight: FontWeight.w400),
                    SizedBox(height: isRated ?? true ? 5.h : 2.h),
                    montserratText14(text: title),
                    montserratText14(text: "From $price"),
                    SizedBox(height: 2.h),
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
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, right: 14.w),
                  child: GestureDetector(
                    onTap: onBookMarkTap,
                    child: CircleContainer(
                      height: 28.01.h,
                      width: 28.01.w,
                      color: whiteColor,
                      // padding: EdgeInsets.all(6.5.w),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      child: Center(
                        child: Icon(
                            isBookmarked
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            color: const Color(0xFFFF1717),
                            size: 16.sp),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: onRemove,
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
                    text: "Remove",
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
