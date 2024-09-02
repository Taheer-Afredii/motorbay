import 'package:flutter/material.dart';

class ProfileViewmodel extends ChangeNotifier {
  final TextEditingController usernameController =
      TextEditingController(text: "John Smith");
  final TextEditingController emailController =
      TextEditingController(text: "JohnSmith@gmail.com");
  final TextEditingController passwordController =
      TextEditingController(text: "********");
  final TextEditingController newPasswordController =
      TextEditingController(text: "********");
  final TextEditingController confirmPasswordController =
      TextEditingController(text: "********");

  bool isUserNameEnabled = false;
  bool isEmailEnabled = false;
  bool isPasswordEnabled = false;
  bool isNewPasswordEnabled = false;
  bool isConfirmPasswordEnabled = false;

  void toggleUserName() {
    isUserNameEnabled = !isUserNameEnabled;
    notifyListeners();
  }

  void toggleEmail() {
    isEmailEnabled = !isEmailEnabled;
    notifyListeners();
  }

  void togglePassword() {
    isPasswordEnabled = !isPasswordEnabled;
    notifyListeners();
  }

  void toggleNewPassword() {
    isNewPasswordEnabled = !isNewPasswordEnabled;
    notifyListeners();
  }

  void toggleConfirmPassword() {
    isConfirmPasswordEnabled = !isConfirmPasswordEnabled;
    notifyListeners();
  }

  bool showSecurityDetails = false;
  void toggleSecurityDetails() {
    showSecurityDetails = !showSecurityDetails;
    notifyListeners();
  }
}
