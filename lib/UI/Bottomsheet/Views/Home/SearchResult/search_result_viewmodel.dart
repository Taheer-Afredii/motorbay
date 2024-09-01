import 'package:flutter/material.dart';
import 'package:motorbay/Models/search_result_model.dart';

class SearchResultViewmodel extends ChangeNotifier {
  void toggleBookmark(int index) {
    if (searchResultList[index].isBookmarked != null) {
      searchResultList[index].isBookmarked =
          !searchResultList[index].isBookmarked!;
    } else {
      searchResultList[index].isBookmarked = false;
    }
    notifyListeners();
  }
}
