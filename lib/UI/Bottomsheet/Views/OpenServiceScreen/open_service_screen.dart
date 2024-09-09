import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Models/services_review_model.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/Review/review_screen.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/open_service_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/widgets/contact_info_widget.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/widgets/open_service_image_widget.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/widgets/openservice_decription_widget.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/widgets/review_listview.dart';
import 'package:provider/provider.dart';

class OpenServiceScreen extends StatelessWidget {
  const OpenServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Consumer<OpenServiceViewmodel>(builder: (context, model, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OpenServicesImageWidget(
              isBookmarked: model.isBookmarked,
              onBookMarkTap: () {
                model.onBookMarkTap();
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    Align(
                        alignment: Alignment.center,
                        child: montserrat18Text(
                            text: "JK Gearboxes", color: primaryColor)),
                    SizedBox(height: 10.h),
                    const Divider(
                      color: Color(0xFFE9E8E8),
                      thickness: 1,
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.w),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleRatingWidget(
                            title: "Gearbox Repair",
                            rating: "4.5",
                          ),
                          SizedBox(height: 10.h),
                          montserratText14(
                              text: "From: R 2000",
                              color: textColor.withOpacity(0.5),
                              fontWeight: FontWeight.w400),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Image.asset(locationIcon,
                                  width: 10.27.w, height: 14.h),
                              SizedBox(width: 5.w),
                              montserratText14(
                                  text: "Hatfield Pretoria",
                                  color: textColor.withOpacity(0.5),
                                  fontWeight: FontWeight.w400),
                            ],
                          ),
                          SizedBox(height: 25.h),
                          OpenserviceDecriptionWidget(
                              onSeeMoreTap: () {}, text: decscriptiontext),
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              montserrat16Text(text: "Reviews (37):"),
                              GestureDetector(
                                  onTap: () {
                                    Get.to(const ReviewScreen());
                                  },
                                  child: montserratText12(
                                      text: "See All", color: primaryColor)),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15.w, right: 13.w, top: 12.h),
                            decoration: BoxDecoration(
                                color: whiteColor,
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.02),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  )
                                ]),
                            child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: servicesReviewList.length > 3
                                  ? 3
                                  : servicesReviewList.length,
                              itemBuilder: (context, index) {
                                ServicesReviewModel data =
                                    servicesReviewList[index];
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 10.h),
                                  child: ReviewListview(
                                    islastItem: index == 2,
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
                          SizedBox(height: 22.h),
                          montserrat16Text(text: "Contact Information"),
                          SizedBox(height: 10.h),
                          const ContactInfoContainer(),
                        ],
                      ),
                    ),
                    SizedBox(height: 60.h)
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

String decscriptiontext =
    "We specialize in the repair and reconditioning of all gearboxes. We have over 10 years experience in gearbox repair services. We also sell and source gearboxes";
