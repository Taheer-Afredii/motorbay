import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/Models/saved_model.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/Views/EditServicesScreen/edit_services_screen.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/Views/MyServicesScreen/widgets/my_services_listview.dart';

class MyServicesScreen extends StatelessWidget {
  const MyServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Column(
        children: [
          TopContainer3(
            text: "My Services",
            appBarwidth: 63.w,
            toppadding: 66.h,
          ),
          Flexible(
            fit: FlexFit.loose,
            child: ListView.builder(
                padding: EdgeInsets.only(bottom: 36.h, top: 36.h),
                shrinkWrap: true,
                itemCount: savedList.length,
                itemBuilder: (context, index) {
                  SavedModel data = savedList[index];
                  return Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: MyServicesListview(
                      image: data.image!,
                      location: data.location!,
                      price: data.price!,
                      title: data.title!,
                      onEditTap: () {
                        Get.to(() => const EditServicesScreen());
                      },
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
