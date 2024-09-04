import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/Models/services_review_model.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/Review/Widgets/add_review_pop.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/Review/Widgets/review_add_button.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/Review/Widgets/review_title_rating_widget.dart';
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
            Align(
                alignment: Alignment.centerLeft,
                child: ReviewAddButton(
                  onTap: () {
                    Get.dialog(AddReviewPop());
                  },
                )),
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
