import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/Models/services_review_model.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/open_service_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/widgets/review_listview.dart';
import 'package:provider/provider.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OpenServiceViewmodel>(builder: (context, model, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TopContainer3(
              text: "Reviews",
              appBarwidth: 85.w,
              toppadding: 66.h,
            ),
            SizedBox(height: 24.h),
            const ReviewTitleRatingContainer(),
            SizedBox(height: 18.h),
            Divider(
              height: 0,
              color: blackColor.withOpacity(0.1),
            ),
            SizedBox(height: 24.h),
            const Align(
                alignment: Alignment.centerLeft, child: ReviewAddButton()),
            SizedBox(height: 28.h),
            Flexible(
              fit: FlexFit.loose,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 25.w, right: 25.w, bottom: 20.h),
                shrinkWrap: true,
                itemCount: servicesReviewList.length,
                itemBuilder: (context, index) {
                  ServicesReviewModel data = servicesReviewList[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: ReviewListview(
                      islastItem: index == servicesReviewList.length - 1,
                      image: data.profile!,
                      name: data.name!,
                      message: data.review!,
                      time: data.time!,
                      rating: data.rating!,
                      onTap: () {},
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

class ReviewAddButton extends StatelessWidget {
  const ReviewAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w),
      child: DottedBorder(
          borderType: BorderType.RRect,
          padding: EdgeInsets.zero,
          dashPattern: const [4],
          strokeWidth: 1.2,
          radius: Radius.circular(8.45.r),
          color: primaryColor,
          child: SizedBox(
            width: 176.w,
            height: 53.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.add_circle,
                  color: primaryColor,
                  size: 25.sp,
                ),
                SizedBox(width: 10.w),
                montserratText(
                    text: "Add Review", fontSize: 16.9.sp, color: primaryColor)
              ],
            ),
          )),
    );
  }
}

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
