import 'package:flutter/material.dart';
import 'package:motorbay/Models/services_review_model.dart';

class OpenServiceViewmodel extends ChangeNotifier {
  bool isBookmarked = false;

  void onBookMarkTap() {
    isBookmarked = !isBookmarked;
    notifyListeners();
  }

  bool isExpanded = false;

  void toggleMyReviewExpend(int index) {
    servicesReviewList[index].isExpanded =
        !servicesReviewList[index].isExpanded;
    notifyListeners();
  }
}
