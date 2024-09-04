import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Constant/text_constant.dart';

class ContactInfoContainer extends StatelessWidget {
  const ContactInfoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 18.w, right: 18.w, top: 20.h, bottom: 20.h),
      decoration: BoxDecoration(
        color: primaryColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Column(
        children: [
          const ContactInfoRow(
            text: "Cell: (015) 287 1148",
            image: phoneIcon,
          ),
          SizedBox(height: 10.h),
          Divider(
            color: blackColor.withOpacity(0.1),
            indent: 10.w,
          ),
          SizedBox(height: 10.h),
          const ContactInfoRow(
            text: "Email: JKGearboxes@gmail.com",
            image: emailIcon,
          ),
          SizedBox(height: 10.h),
          Divider(
            color: blackColor.withOpacity(0.1),
            indent: 10.w,
          ),
          SizedBox(height: 10.h),
          const ContactInfoRow(
            text: "Whatsapp: (+27)83 442 8821",
            image: whatsappIcon,
          ),
        ],
      ),
    );
  }
}

class ContactInfoRow extends StatelessWidget {
  const ContactInfoRow({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 14.h,
          width: 14.w,
        ),
        SizedBox(width: 9.w),
        montserratText12(text: text),
      ],
    );
  }
}


class TitleRatingWidget extends StatelessWidget {
  const TitleRatingWidget({
    super.key,
    required this.title,
    required this.rating,
  });
  final String title;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        montserrat16Text(text: title),
        Row(
          children: [
            Icon(
              Icons.star,
              color: const Color(0xFFF7B10D),
              size: 16.sp,
            ),
            montserratText12(text: rating),
          ],
        )
      ],
    );
  }
}