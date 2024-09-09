import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/app_button.dart';
import 'package:motorbay/Core/Widgets/app_textfield.dart';

class AddReviewPop extends StatelessWidget {
  AddReviewPop({
    super.key,
  });
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 400.h,
          margin: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: const BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 15.h),
              montserratText(
                text: "What's your rating?",
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
              SizedBox(height: 15.h),
              RatingBar.builder(
                initialRating: 2,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 30.sp,
                itemPadding: EdgeInsets.symmetric(horizontal: 3.w),
                itemBuilder: (context, _) => Icon(
                  Icons.star_rate_rounded,
                  color: const Color(0xFFF7B10D),
                  size: 20.sp,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                  // model.setRating(rating);
                },
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: montserratText(
                  text: "Please share your opinion about this service provider",
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: blackColor,
                ),
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: CustomTextField2(
                  maxLines: 4,
                  hintText: "Write your review here",
                  controller: textEditingController,
                ),
              ),
              SizedBox(height: 40.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Expanded(
                        child: AppButton(
                            radius: 8.r,
                            color: Colors.grey.withOpacity(0.3),
                            height: 54.h,
                            fontColor: textColor.withOpacity(0.7),
                            onPressed: () {
                              Get.back();
                            },
                            text: "Cancel")),
                    SizedBox(width: 40.w),
                    Expanded(
                        child: AppButton(
                            radius: 8.r,
                            height: 54.h,
                            fontColor: whiteColor,
                            onPressed: () {
                              Get.back();
                            },
                            text: "Post"))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
