import 'package:motorbay/UI/Auth/auth_provider.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/HomeScreen/home_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Home/SearchResult/search_result_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/MyReviews/my_review_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/OpenServiceScreen/open_service_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Packages/packages_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/Views/AddServicesScreen/add_service_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/Views/EditServicesScreen/edit_service_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Profile/profile_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/Views/Saved/saved_screen_viewmodel.dart';
import 'package:motorbay/UI/Bottomsheet/bottom_nav_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(create: (_) => AuthProvider()),
  ChangeNotifierProvider(create: (_) => BottomNavProvider()),
  ChangeNotifierProvider(create: (_) => HomeViewmodel()),
  ChangeNotifierProvider(create: (_) => SearchResultViewmodel()),
  ChangeNotifierProvider(create: (_) => SavedScreenViewmodel()),
  ChangeNotifierProvider(create: (_) => ProfileViewmodel()),
  ChangeNotifierProvider(create: (_) => OpenServiceViewmodel()),
  ChangeNotifierProvider(create: (_) => MyReviewViewmodel()),
  ChangeNotifierProvider(create: (_) => AddServiceViewmodel()),
  ChangeNotifierProvider(create: (_) => EditServiceViewmodel()),
  ChangeNotifierProvider(create: (_) => PackagesViewmodel()),
];
