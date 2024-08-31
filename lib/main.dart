import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:motorbay/Core/Providers/providers.dart';
import 'package:motorbay/UI/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  static const double _designWidth = 390;
  static const double _designHeight = 844;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providerList,
      child: ScreenUtilInit(
        designSize: const Size(_designWidth, _designHeight),
        builder: (context, widget) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Findly',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFE6602)),
            useMaterial3: true,
          ),
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
