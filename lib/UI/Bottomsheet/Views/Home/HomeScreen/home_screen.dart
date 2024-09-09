import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Models/sponsored_model.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/HomeScreen/home_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/HomeScreen/widgets/custom_dot_indicator.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/HomeScreen/widgets/home_category_container.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/HomeScreen/widgets/home_heading_widget.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/HomeScreen/widgets/sponsored_listview.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/SearchResult/seaarch_result_screen.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/open_service_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      // color: blackColor,
      child: Consumer<HomeViewmodel>(builder: (context, model, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeHeadingWidget(),
            SizedBox(height: 28.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: montserrat18Text(text: "Popular Services"),
                    ),
                    SizedBox(height: 18.h),
                    SizedBox(
                      height: 61.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: homeCategoryList.length,
                        scrollDirection: Axis.horizontal,
                        // physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 7.43.w),
                            child: HomeCategoryContainer(
                              onTap: () {
                                Get.to(() => const SeaarchResultScreen());
                                if (index == 0) {}
                              },
                              icon: homeCategoryList[index].icon,
                              text: homeCategoryList[index].text,
                              text2: homeCategoryList[index].text2,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 35.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          montserrat18Text(text: "Sponsored"),
                          montserratText12(
                              text: "See All", color: const Color(0xFFFF1717))
                        ],
                      ),
                    ),
                    SizedBox(height: 18.h),
                    SizedBox(
                      height: height * 0.24,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: sponsoredList.length,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 24.w),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 7.43.w),
                            child: SponsoredListview(
                              image: sponsoredList[index].image!,
                              location: sponsoredList[index].location!,
                              price: sponsoredList[index].price!,
                              title: sponsoredList[index].title!,
                              onBookMarkTap: () {
                                model.toggleBookmark(index);
                              },
                              isBookmarked: sponsoredList[index].isBookmarked!,
                              onTap: () {
                                Get.to(() => const OpenServiceScreen());
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 28.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          montserrat18Text(text: "Recently Viewed"),
                          montserratText12(
                              text: "See All", color: const Color(0xFFFF1717))
                        ],
                      ),
                    ),
                    SizedBox(height: 18.h),
                    SizedBox(
                      height: height * 0.24,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: recentList.length,
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: 24.w),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 7.43.w),
                            child: SponsoredListview(
                              image: recentList[index].image!,
                              location: recentList[index].location!,
                              price: recentList[index].price!,
                              title: sponsoredList[index].title!,
                              onBookMarkTap: () {
                                model.toggleRecentBookmark(index);
                              },
                              isBookmarked: recentList[index].isBookmarked!,
                              onTap: () {
                                Get.to(() => const OpenServiceScreen());
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30.h),
                    CarouselSlider(
                      items: [
                        Image.asset(c2),
                        Image.asset(c1),
                        Image.asset(c2),
                      ],
                      options: CarouselOptions(
                        height: 200.0,
                        autoPlay: true,
                        enlargeCenterPage: true,
                        onPageChanged: (index, reason) {
                          model.changeIndex(index);
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [0, 1, 2].map((index) {
                        return CustomPaint(
                          size: const Size(35.31, 5.55),
                          painter: RPSCustomPainter(
                            color: model.currentIndex == index
                                ? const Color(0xFF44C7FF)
                                : const Color(0xFF50359A),
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 100.h),
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
