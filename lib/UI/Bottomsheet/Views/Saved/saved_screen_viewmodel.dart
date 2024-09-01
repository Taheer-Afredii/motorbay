import 'package:flutter/material.dart';
import 'package:motorbay/Models/saved_model.dart';

class SavedScreenViewmodel extends ChangeNotifier {
  // Add your viewmodel logic here
  void toggleBookmark(int index) {
    if (savedList[index].isBookmarked != null) {
      savedList[index].isBookmarked = !savedList[index].isBookmarked!;
    } else {
      savedList[index].isBookmarked = false;
    }
    notifyListeners();
  }

  //remove
  void removeSaved(int index) {
    savedList.removeAt(index);
    notifyListeners();
  }
}
