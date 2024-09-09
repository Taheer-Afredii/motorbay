import 'package:flutter/material.dart';
import 'package:motorbay/Core/Widgets/pick_image.dart';

class EditServiceViewmodel extends ChangeNotifier {
  String? pickedImage;

  void pickImageFromGallery() async {
    pickedImage = await ImagePickerUtil.pickImage();
    notifyListeners();
  }
}
