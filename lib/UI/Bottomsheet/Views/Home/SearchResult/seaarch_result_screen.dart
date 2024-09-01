import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/app_bar_widget.dart';
import 'package:motorbay/Core/Widgets/home_search_location_dropdown.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/Models/search_result_model.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/SearchResult/search_result_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/SearchResult/widget/home_search_textfield.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/SearchResult/widget/search_result_listview.dart';
import 'package:provider/provider.dart';

class SeaarchResultScreen extends StatelessWidget {
  const SeaarchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SearchResultViewmodel>(builder: (context, model, child) {
      return Scaffold(
          backgroundColor: whiteColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  TopContainer2(height: 158.h),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: AppbarWidget(width: 94.w, text: "Search")),
                  Positioned(
                    top: 125.h,
                    child: HomeSearchField(
                      hintText: "Search for auto services",
                      searchController: TextEditingController(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: HomeSearchLocationDropdown(
                  hinttext: "Hatfield Pretoria",
                  onChanged: (val) {},
                ),
              ),
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w),
                child: montserrat18Text(text: "Result"),
              ),
              SizedBox(height: 15.h),
              Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 50.h),
                    shrinkWrap: true,
                    itemCount: searchResultList.length,
                    itemBuilder: (context, index) {
                      SearchResultModel data = searchResultList[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: SearchResultListView(
                          image: data.image!,
                          location: data.location!,
                          price: data.price!,
                          isBookmarked: data.isBookmarked!,
                          title: data.title!,
                          rating: data.rating!,
                          isRated: data.isRated!,
                          onBookMarkTap: () {
                            model.toggleBookmark(index);
                          },
                        ),
                      );
                    }),
              ),
            ],
          ));
    });
  }
}
