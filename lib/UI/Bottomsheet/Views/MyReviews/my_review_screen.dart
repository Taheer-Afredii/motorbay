import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/Models/services_review_model.dart';
import 'package:motorbay/UI/Bottomsheet/Views/MyReviews/my_review_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/widgets/review_listview.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Packages/packages_screen.dart';
import 'package:provider/provider.dart';

class MyReviewScreen extends StatelessWidget {
  const MyReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Consumer<MyReviewViewmodel>(builder: (context, model, child) {
        return Column(
          children: [
            TopContainer3(
              text: "My Reviews",
              appBarwidth: 63.w,
              toppadding: 66.h,
            ),
            Container(
              color: const Color(0xFFF8F8F8),
              width: 1.sw,
              child: Column(
                children: [
                  SizedBox(height: 22.h),
                  montserratText(
                      height: 1.4.h,
                      text: "${model.rating}",
                      fontSize: 35.sp,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                  RatingBar.builder(
                    initialRating: model.rating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 22.sp,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star_rate_rounded,
                      color: const Color(0xFFF7B10D),
                      size: 20.sp,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                      model.setRating(rating);
                    },
                  ),
                  SizedBox(height: 6.h),
                  montserratText(
                    text: "based on 29 reviews",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: textColor.withOpacity(0.6),
                  ),
                  SizedBox(height: 22.h),
                ],
              ),
            ),
            Divider(
              color: greyColor.withOpacity(0.2),
              height: 0,
            ),
            Flexible(
              fit: FlexFit.loose,
              child: ListView.builder(
                padding: EdgeInsets.only(
                    left: 25.w, right: 25.w, bottom: 20.h, top: 28.h),
                shrinkWrap: true,
                itemCount: myReviewsList.length,
                itemBuilder: (context, index) {
                  ServicesReviewModel data = myReviewsList[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: ReviewListview(
                      islastItem: index == myReviewsList.length - 1,
                      image: data.profile!,
                      name: data.name!,
                      message: data.review!,
                      time: data.time!,
                      rating: data.rating!,
                      onTap: () {
                        Get.to(() => const PackagesScreen());
                      },
                      isExpanded: data.isExpanded,
                      onSeeMoreSeeLessTap: () {
                        model.toggleMyReviewExpend(index);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
