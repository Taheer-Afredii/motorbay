import 'package:motorbay/Constant/assets_constant.dart';

class ServicesReviewModel {
  final String? name;
  final String? review;
  final String? time;
  final String? profile;
  final String? rating;
  bool isExpanded;
  ServicesReviewModel({
    this.name,
    this.review,
    this.time,
    this.profile,
    this.rating,
    this.isExpanded = false,
  });
}

List<ServicesReviewModel> servicesReviewList = [
  ServicesReviewModel(
      name: "Jhon Smith",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p1,
      // isExpanded: false,
      rating: "4.9"),
  ServicesReviewModel(
      name: "Adciar",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p2,
      // isExpanded: false,
      rating: "2.0"),
  ServicesReviewModel(
      name: "Chris",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p3,
      // isExpanded: false,
      rating: "4.9"),
  ServicesReviewModel(
      name: "Athalia Putri",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p4,
      // isExpanded: false,
      rating: "4.9"),
  ServicesReviewModel(
      name: "John Doe",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "4 months",
      // isExpanded: false,
      profile: p5,
      rating: "4.9"),
  ServicesReviewModel(
      name: "Jhon Smith",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      // isExpanded: false,
      profile: p6,
      rating: "4.9"),
  ServicesReviewModel(
      name: "Chris Hampton",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p7,
      // isExpanded: false,
      rating: "4.9"),
];

List<ServicesReviewModel> myReviewsList = [
  ServicesReviewModel(
      name: "Jhon Smith",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p1,
      // isExpanded: false,
      rating: "4.9"),
  ServicesReviewModel(
      name: "Adciar",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p2,
      // isExpanded: false,
      rating: "2.0"),
  ServicesReviewModel(
      name: "Chris",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p3,
      // isExpanded: false,
      rating: "4.9"),
  ServicesReviewModel(
      name: "Athalia Putri",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p4,
      // isExpanded: false,
      rating: "4.9"),
  ServicesReviewModel(
      name: "John Doe",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "4 months",
      // isExpanded: false,
      profile: p5,
      rating: "4.9"),
  ServicesReviewModel(
      name: "Jhon Smith",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      // isExpanded: false,
      profile: p6,
      rating: "4.9"),
  ServicesReviewModel(
      name: "Chris Hampton",
      review:
          "This workshop was able to fix my gearbox for an affordable price, I highly recommend them",
      time: "2 weeks",
      profile: p7,
      // isExpanded: false,
      rating: "4.9"),
];
  // PhotoGraphyReviewModel(
  //     name: "Chris Hampton",
  //     review: "Excellent, you are the best...",
  //     time: "2 weeks",
  //     profile: profile4,
  // 