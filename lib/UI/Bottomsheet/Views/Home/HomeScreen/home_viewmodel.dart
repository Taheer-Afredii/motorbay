import 'package:flutter/material.dart';
import 'package:motorbay/Models/sponsored_model.dart';

class HomeViewmodel extends ChangeNotifier {
  void toggleBookmark(int index) {
    if (sponsoredList[index].isBookmarked != null) {
      sponsoredList[index].isBookmarked = !sponsoredList[index].isBookmarked!;
    } else {
      sponsoredList[index].isBookmarked = false;
    }
    notifyListeners();
  }

  void toggleRecentBookmark(int index) {
    if (recentList[index].isBookmarked != null) {
      recentList[index].isBookmarked = !recentList[index].isBookmarked!;
    } else {
      recentList[index].isBookmarked = false;
    }
    notifyListeners();
  }

  //carousel slider
  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
