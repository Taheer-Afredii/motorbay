import 'package:motorbay/Constant/assets_constant.dart';

class SearchResultModel {
  String? title;
  String? location;
  String? image;
  String? price;
  String? rating;
  bool? isBookmarked;
  bool? isRated;
  SearchResultModel({
    this.title,
    this.location,
    this.image,
    this.price,
    this.rating,
    this.isBookmarked,
    this.isRated,
  });
}

List<SearchResultModel> searchResultList = [
  SearchResultModel(
    title: "Oil Change",
    location: "Hatfield",
    price: "R700",
    image: engineoilImage,
    rating: "5.0",
    isBookmarked: false,
    isRated: true,
  ),
  SearchResultModel(
    title: "Wheel Alignment",
    location: "Hatfield",
    price: "R900",
    image: wheelImage,
    rating: "4.9",
    isBookmarked: false,
    isRated: true,
  ),
  SearchResultModel(
    title: "Gearbox",
    location: "Hatfield",
    price: "R900",
    image: gearboxImaage,
    rating: "4.9",
    isBookmarked: false,
    isRated: false,
  ),
  SearchResultModel(
    title: "Oil Change",
    location: "Hatfield",
    price: "R700",
    image: engineoilImage,
    rating: "5.0",
    isBookmarked: false,
    isRated: true,
  ),
  SearchResultModel(
    title: "Wheel Alignment",
    location: "Hatfield",
    price: "R900",
    image: wheelImage,
    rating: "4.9",
    isBookmarked: false,
    isRated: true,
  ),
  SearchResultModel(
    title: "Gearbox",
    location: "Hatfield",
    price: "R900",
    image: gearboxImaage,
    rating: "4.9",
    isBookmarked: false,
    isRated: true,
  ),
];
