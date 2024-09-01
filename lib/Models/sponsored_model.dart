import 'package:motorbay/Constant/assets_constant.dart';

class SponsoredModel {
  String? image;
  String? location;
  String? price;
  Function()? onBookMarkTap;
  bool? isBookmarked;
  String? title;

  SponsoredModel({
    this.image,
    this.location,
    this.price,
    this.onBookMarkTap,
    this.isBookmarked,
    this.title,
  });
}

List<SponsoredModel> sponsoredList = [
  SponsoredModel(
    image: engineoilImage,
    location: "Hatfield",
    price: "R700",
    isBookmarked: false,
    title: "Oil Change",
  ),
  SponsoredModel(
    image: gearboxImaage,
    location: "Hatfield",
    price: "R700",
    isBookmarked: false,
    title: "Gearbox",
  ),
  SponsoredModel(
    image: wheelImage,
    location: "Hatfield",
    price: "R700",
    isBookmarked: false,
    title: "Wheel Alignment",
  ),
];
List<SponsoredModel> recentList = [
  SponsoredModel(
    image: engineoilImage,
    location: "Hatfield",
    price: "R700",
    isBookmarked: false,
    title: "Oil Change",
  ),
  SponsoredModel(
    image: gearboxImaage,
    location: "Hatfield",
    price: "R700",
    isBookmarked: false,
    title: "Gearbox",
  ),
  SponsoredModel(
    image: wheelImage,
    location: "Hatfield",
    price: "R700",
    isBookmarked: false,
    title: "Wheel Alignment",
  ),
];
