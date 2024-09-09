import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/app_button.dart';
import 'package:motorbay/Core/Widgets/app_textfield.dart';
import 'package:motorbay/Core/Widgets/custom_dropdown.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Packages/packages_screen.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/Views/AddServicesScreen/add_service_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/Views/AddServicesScreen/widget/custom_label_container.dart';
import 'package:provider/provider.dart';

class AddServicesScreen extends StatelessWidget {
  const AddServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Consumer<AddServiceViewmodel>(builder: (context, model, child) {
        return Column(
          children: [
            const TopContainer3(text: "Add Services"),
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
                      CustomDropDown2(
                        items: services,
                        hinttext: "Choose Service",
                        onChanged: (val) {},
                        itemBuilder: (val) {
                          return montserratText12(text: val);
                        },
                      ),
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
                      CustomLabelContainer(
                        image: model.pickedImage,
                        onTap: () {
                          model.pickImageFromGallery();
                        },
                      ),
                      SizedBox(height: 15.h),
                      CustomTextField(
                          hintText: "Cell / Tel",
                          controller: TextEditingController(),
                          label: "Contact Information"),
                      SizedBox(height: 15.h),
                      CustomTextField(
                          hintText: "Email",
                          controller: TextEditingController(),
                          label: "Email"),
                      SizedBox(height: 15.h),
                      CustomTextField(
                          hintText: "whatsapp",
                          controller: TextEditingController(),
                          label: "Whatsapp"),
                      SizedBox(height: 50.h),
                      AppButton(
                        text: "Publish",
                        onPressed: () {
                          Get.to(() => const PackagesScreen());
                        },
                      ),
                      SizedBox(height: 37.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

List<String> services = [
  "Oil change",
  "Wheel alignment",
  "Rim repair",
  "Brakepads replacement",
  "Disc scheming",
  "Panel beating",
  "Car wrapping",
  "Valet wash",
  "Windscreen replacement",
  "Engine repair",
  "Exhaust repair",
  "Exhaust modification",
  "Radiator service",
  "Vehicle diagnostics",
  "Dyno testing",
  "Turbo replacement",
  "Performance Tuning"
];
