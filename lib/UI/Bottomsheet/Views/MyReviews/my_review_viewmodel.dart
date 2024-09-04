import 'package:flutter/material.dart';
import 'package:motorbay/Models/services_review_model.dart';

class MyReviewViewmodel extends ChangeNotifier {
  double rating = 4.8;
  void setRating(double value) {
    rating = value;
    notifyListeners();
  }

  bool isExpanded = false;

  void toggleMyReviewExpend(int index) {
    myReviewsList[index].isExpanded = !myReviewsList[index].isExpanded;
    notifyListeners();
  }
}
