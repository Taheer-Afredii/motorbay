import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Core/Widgets/app_bar_widget.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/Models/saved_model.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Saved/saved_screen_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Saved/widgets/saved_listview.dart';
import 'package:provider/provider.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SavedScreenViewmodel>(builder: (context, model, child) {
      return Scaffold(
          backgroundColor: whiteColor,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                // alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  const TopContainer2(),
                  Padding(
                      padding: EdgeInsets.only(left: 24.h, top: 66.h),
                      child: AppbarWidget(width: 94.w, text: "Saved")),
                ],
              ),
              SizedBox(height: 30.h),
              Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 100.h),
                    shrinkWrap: true,
                    itemCount: savedList.length,
                    itemBuilder: (context, index) {
                      SavedModel data = savedList[index];
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: SavedScreeListview(
                          image: data.image!,
                          location: data.location!,
                          price: data.price!,
                          isBookmarked: data.isBookmarked!,
                          title: data.title!,
                          rating: data.rating!,
                          isRated: data.isRated!,
                          onRemove: () {
                            model.removeSaved(index);
                          },
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
