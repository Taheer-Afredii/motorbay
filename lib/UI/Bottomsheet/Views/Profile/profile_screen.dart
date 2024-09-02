import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Core/Widgets/app_bar_widget.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/profile_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/widgets/delete_account_popup.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/widgets/edit_username_email_row.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/widgets/login_and_security_container.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/widgets/profile_add_service_button.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Consumer<ProfileViewmodel>(builder: (context, model, child) {
        return Container(
          color: const Color(0xFFF5F5F5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                clipBehavior: Clip.none,
                children: [
                  TopContainer(
                    height: 183.h,
                  ),
                  Positioned(
                    top: 66.h,
                    left: 0,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.w),
                      child: AppbarWidget(width: 95.w, text: "Profile"),
                    ),
                  ),
                  Positioned(
                    top: 136.h,
                    child: const AddServiceButton(),
                  ),
                ],
              ),
              SizedBox(height: 52.h),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 100.h,
                          // width: 342.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 18.h),
                          decoration: BoxDecoration(
                            color: primaryColor.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              EditUserNameAndEmailRow(
                                title: "Username: ",
                                imageIcon: personIcon,
                                hintText: "John Smith",
                                isEnable: model.isUserNameEnabled,
                                model: model,
                                controller: model.usernameController,
                                onTap: () {
                                  model.toggleUserName();
                                },
                              ),
                              SizedBox(height: 5.h),
                              Divider(
                                color: blackColor.withOpacity(0.05),
                                thickness: 1,
                                indent: 5.w,
                                endIndent: 5.w,
                              ),
                              SizedBox(height: 5.h),
                              EditUserNameAndEmailRow(
                                title: "Email: ",
                                imageIcon: emailIcon,
                                hintText: "JohnSmith@gmail.com",
                                isEnable: model.isEmailEnabled,
                                model: model,
                                controller: model.emailController,
                                onTap: () {
                                  model.toggleEmail();
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.h),
                        LoginAndSecurityContainer(
                          onTap: () {
                            model.toggleSecurityDetails();
                          },
                          icon: !model.showSecurityDetails
                              ? Icons.keyboard_arrow_down_outlined
                              : Icons.keyboard_arrow_up,
                        ),
                        !model.showSecurityDetails
                            ? SizedBox(height: 12.86.h)
                            : const SizedBox.shrink(),
                        !model.showSecurityDetails
                            ? SecurityDetailWidget(model: model)
                            : const SizedBox.shrink(),
                        SizedBox(height: 16.h),
                        ProfileScreenContainer(
                          onTap: () {},
                          text: "My Services",
                        ),
                        SizedBox(height: 10.21.h),
                        ProfileScreenContainer(
                          onTap: () {},
                          text: "Logout",
                        ),
                        SizedBox(height: 10.21.h),
                        ProfileScreenContainer(
                          onTap: () {},
                          text: "Privacy Policy",
                        ),
                        SizedBox(height: 10.21.h),
                        ProfileScreenContainer(
                          onTap: () {
                            Get.dialog(DeleteAccountPopup());
                          },
                          text: "Delete Account",
                        ),
                        SizedBox(height: 10.21.h),
                        ProfileScreenContainer(
                          onTap: () {},
                          text: "Contact Us",
                        ),
                        SizedBox(height: 10.21.h),
                        SizedBox(height: 100.h),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}

class SecurityDetailWidget extends StatelessWidget {
  const SecurityDetailWidget({
    super.key,
    required this.model,
  });
  final ProfileViewmodel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(7.64.r),
      ),
      child: Column(
        children: [
          EditPasswordRow(
              model: model,
              title: "Paswword:  ",
              hintText: "*******",
              isEnable: model.isPasswordEnabled,
              controller: model.passwordController,
              onTap: () {
                model.togglePassword();
              }),
          SizedBox(height: 10.h),
          EditPasswordRow(
              model: model,
              title: "New Paswword:  ",
              hintText: "*******",
              isEnable: model.isNewPasswordEnabled,
              controller: model.newPasswordController,
              onTap: () {
                model.toggleNewPassword();
              }),
          SizedBox(height: 10.h),
          EditPasswordRow(
              model: model,
              title: "Confirm Paswword: ",
              hintText: "*******",
              isEnable: model.isConfirmPasswordEnabled,
              controller: model.confirmPasswordController,
              onTap: () {
                model.toggleConfirmPassword();
              })
        ],
      ),
    );
  }
}
