import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';
import 'package:motorbay/Core/Widgets/app_button.dart';
import 'package:motorbay/Core/Widgets/circle_container.dart';
import 'package:motorbay/Core/Widgets/top_container.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Packages/packages_viewmodel.dart';
import 'package:provider/provider.dart';

class PackagesScreen extends StatelessWidget {
  const PackagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8F8),
      body: Consumer<PackagesViewmodel>(builder: (context, model, child) {
        return Column(
          children: [
            TopContainer3(
              text: "Packages",
              toppadding: 66.h,
              appBarwidth: 76.w,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  // height: 878.h,
                  width: 1.sw,
                  margin: EdgeInsets.only(
                      top: 28.h, right: 23.w, left: 23.w, bottom: 47.h),
                  padding: EdgeInsets.only(bottom: 30.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      montserrat18Text(text: "Choose Listing Package"),
                      SizedBox(height: 18.h),
                      Container(height: 8.h, color: primaryColor),
                      SizedBox(height: 4.h),
                      const PackgeTitleContainer(text: "Basic Package"),
                      SizedBox(height: 18.h),
                      PackageContainerWidget(
                        isShowBorder: model.selectedIndex == 0 ? false : true,
                        isShowCheckIcon:
                            model.selectedIndex == 0 ? true : false,
                        onTap: () {
                          model.changeIndex(0);
                        },
                        color: model.selectedIndex == 0
                            ? const Color(0xFF67C73E)
                            : const Color(0xFFD9D9D9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Align(
                              alignment: Alignment.center,
                              child: montserratText(
                                  text: "R 199",
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w600,
                                  color: primaryColor),
                            ),
                            SizedBox(height: 18.h),
                            const PackageRowText(text: "Advertise for 1 month"),
                            SizedBox(height: 15.h),
                            const PackageRowText(text: "24 / 7 Email support"),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Container(height: 8.h, color: primaryColor),
                      SizedBox(height: 4.h),
                      PackgeTitleContainer(
                        text: "Professional Package",
                        width: 172.w,
                      ),
                      SizedBox(height: 18.h),
                      PackageContainerWidget(
                        isShowBorder: model.selectedIndex == 1 ? false : true,
                        isShowCheckIcon:
                            model.selectedIndex == 1 ? true : false,
                        onTap: () {
                          model.changeIndex(1);
                        },
                        color: model.selectedIndex == 1
                            ? const Color(0xFF67C73E)
                            : const Color(0xFFD9D9D9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Align(
                              alignment: Alignment.center,
                              child: montserratText(
                                  text: "R 499",
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w600,
                                  color: primaryColor),
                            ),
                            SizedBox(height: 18.h),
                            const PackageRowText(text: "Advertise for 3 month"),
                            SizedBox(height: 15.h),
                            const PackageRowText(text: "24 / 7 Email support"),
                          ],
                        ),
                      ),
                      SizedBox(height: 40.h),
                      Container(height: 8.h, color: primaryColor),
                      SizedBox(height: 4.h),
                      PackgeTitleContainer(
                        text: "Enterprise Package",
                        width: 158.w,
                      ),
                      SizedBox(height: 18.h),
                      PackageContainerWidget(
                        isShowBorder: model.selectedIndex == 2 ? false : true,
                        isShowCheckIcon:
                            model.selectedIndex == 2 ? true : false,
                        onTap: () {
                          model.changeIndex(2);
                        },
                        color: model.selectedIndex == 2
                            ? const Color(0xFF67C73E)
                            : const Color(0xFFD9D9D9),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10.h),
                            Align(
                              alignment: Alignment.center,
                              child: montserratText(
                                  text: "R 799",
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w600,
                                  color: primaryColor),
                            ),
                            SizedBox(height: 18.h),
                            const PackageRowText(text: "Advertise for 7 month"),
                            SizedBox(height: 15.h),
                            const PackageRowText(text: "24 / 7 Email support"),
                          ],
                        ),
                      ),
                      SizedBox(height: 44.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.w),
                        child: AppButton(
                          text: "Continue",
                          onPressed: () {},
                        ),
                      ),
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

class PackageRowText extends StatelessWidget {
  const PackageRowText({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.w),
      child: Row(
        children: [
          CircleContainer(
            height: 7.h,
            width: 7.w,
            color: const Color(0xFFD9D9D9),
          ),
          SizedBox(width: 10.w),
          montserratText12(text: text, color: blackColor.withOpacity(0.8))
        ],
      ),
    );
  }
}

class PackageContainerWidget extends StatelessWidget {
  const PackageContainerWidget({
    super.key,
    this.color,
    this.isShowCheckIcon,
    this.onTap,
    this.child,
    required this.isShowBorder,
  });
  final Color? color;
  final bool? isShowCheckIcon;
  final VoidCallback? onTap;
  final Widget? child;
  final bool isShowBorder;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.w),
      child: Container(
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12.r),
          border: isShowBorder
              ? Border(
                  bottom: BorderSide(
                    color: color ?? const Color(0xFFD9D9D9),
                  ),
                  right: BorderSide(
                    color: color ?? const Color(0xFFD9D9D9),
                  ),
                  left: BorderSide(
                    color: color ?? const Color(0xFFD9D9D9),
                  ),
                )
              : null,
          boxShadow: [
            BoxShadow(
              color: greyColor.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
              // offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            GestureDetector(
              onTap: onTap,
              child: Column(
                children: [
                  Container(
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: color ?? const Color(0xFF67C73E),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6.r),
                        topRight: Radius.circular(12.r),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                          height: 138.h,
                          width: 312.w,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(12.r),
                              bottomRight: Radius.circular(12.r),
                            ),
                          ),
                          child: child),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            height: 15.h,
                            width: 20.w,
                            margin: EdgeInsets.only(right: 10.w, bottom: 10.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(8.r),
                              ),
                              border: Border(
                                right: BorderSide(
                                  color: color ?? const Color(0xFF67C73E),
                                  width: 3.w,
                                ),
                                bottom: BorderSide(
                                  color: color ?? const Color(0xFF67C73E),
                                  width: 3.w,
                                ),
                              ),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: -10,
              child: CircleContainer(
                height: 46.h,
                width: 46.w,
                color: color ?? const Color(0xFF67C73E),
                child: isShowCheckIcon ?? false
                    ? Center(
                        child: Image.asset(
                          checkIcon,
                          height: 13.41.h,
                          width: 17.59.w,
                        ),
                      )
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PackgeTitleContainer extends StatelessWidget {
  const PackgeTitleContainer({
    super.key,
    this.height,
    this.width,
    required this.text,
  });
  final double? height;
  final String text;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 32.h,
      width: width ?? 136.w,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24.r),
          bottomRight: Radius.circular(24.r),
        ),
      ),
      child: Center(
        child: montserratText(
            text: text,
            color: whiteColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
