import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Core/Widgets/app_button.dart';
import 'package:motorbay/Core/Widgets/app_textfield.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/Views/AddServicesScreen/widget/custom_label_container.dart';
import 'package:motorbay/UI/Bottomsheet/app_bottom_nav_screen.dart';
import 'package:motorbay/UI/Bottomsheet/bottom_nav_provider.dart';
import 'package:provider/provider.dart';

class EditServicesScreen extends StatelessWidget {
  const EditServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Column(
        children: [
          TopContainer3(
            text: "Edit Service",
            toppadding: 66.h,
            appBarwidth: 63.w,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(
                    top: 28.h, right: 22.w, left: 23.w, bottom: 37.h),
                padding: EdgeInsets.only(top: 33.h, left: 20.w, right: 20.w),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(25.r),
                ),
                child: Column(
                  children: [
                    CustomTextField(
                        hintText: "Enter Business Name",
                        controller: TextEditingController(),
                        label: "Business Name"),
                    SizedBox(height: 15.h),
                    CustomTextField(
                        hintText: "Choose Service",
                        showSuffixIcon: true,
                        suffixHeight: 5.2.h,
                        suffixWidth: 10.41.w,
                        suffixIcon: arrowdownIcon,
                        controller: TextEditingController(),
                        label: "Select Service"),
                    SizedBox(height: 15.h),
                    CustomTextField(
                        hintText: "Enter Location",
                        showSuffixIcon: true,
                        suffixIcon: locationIcon,
                        suffixIconColor: primaryColor,
                        controller: TextEditingController(),
                        label: "Location"),
                    SizedBox(height: 15.h),
                    CustomTextField(
                        hintText: "R",
                        controller: TextEditingController(),
                        label: "Starting Price"),
                    SizedBox(height: 15.h),
                    CustomTextField(
                        hintText: "Type...",
                        maxLines: 5,
                        controller: TextEditingController(),
                        label: "Description"),
                    SizedBox(height: 15.h),
                    const CustomLabelContainer(),
                    SizedBox(height: 15.h),
                    CustomTextField(
                        hintText: "Cell / Tel",
                        controller: TextEditingController(),
                        label: "Contact Information"),
                    SizedBox(height: 15.h),
                    CustomTextField(
                        hintText: "whatsapp",
                        controller: TextEditingController(),
                        label: "Whatsapp"),
                    SizedBox(height: 50.h),
                    AppButton(
                      text: "Save Changes",
                      onPressed: () {
                        context.read<BottomNavProvider>().onItemTapped(2);
                        Get.offAll(() => const AppBottomNavScreen());
                      },
                    ),
                    SizedBox(height: 37.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
