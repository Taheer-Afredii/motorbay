import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:motorbay/Constant/assets_constant.dart';
import 'package:motorbay/Constant/colors.dart';
import 'package:motorbay/Core/Widgets/bottomnavybar.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/HomeScreen/home_screen.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/profile_screen.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Saved/saved_screen.dart';
import 'package:motorbay/UI/Bottomsheet/bottom_nav_provider.dart';
import 'package:provider/provider.dart';

class AppBottomNavScreen extends StatefulWidget {
  const AppBottomNavScreen({super.key, this.currentIndex});
  final int? currentIndex;
  @override
  State<AppBottomNavScreen> createState() => _AppBottomNavScreenState();
}

class _AppBottomNavScreenState extends State<AppBottomNavScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BottomNavProvider model =
      //     Provider.of<BottomNavProvider>(context, listen: false);
      // model.onItemTapped(0);
    });
  }

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavProvider>(builder: (context, model, child) {
      return PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          bool shouldExit = model.onPopScope(didPop);
          if (shouldExit) {
            SystemNavigator.pop(); // Exit the app
          }
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: _widgetOptions.elementAt(model.currentIndex),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 25.h, right: 27.w, left: 27.w),
            child: SizedBox(
              height: 60.h,
              child: BottomNavyBar(
                borderRadius: BorderRadius.circular(24.r),
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                itemCornerRadius: 8.r,
                backgroundColor: primaryColor,
                selectedIndex: model.currentIndex,
                onItemSelected: (index) {
                  model.onItemTapped(index);
                },
                items: [
                  BottomNavyBarItem(
                    title: const Text(''),
                    icon: Image.asset(
                      homeicon,
                      width: 25.w,
                      height: 21.h,
                    ),
                  ),
                  BottomNavyBarItem(
                    title: const Text(''),
                    icon: Image.asset(
                      whiteHeartIcon,
                      width: 25.w,
                      height: 21.h,
                    ),
                  ),
                  BottomNavyBarItem(
                    title: const Text(''),
                    icon: Image.asset(
                      profileroundIcon,
                      width: 25.w,
                      height: 21.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
