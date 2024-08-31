import 'package:motorbay/UI/Auth/auth_provider.dart';
import 'package:motorbay/UI/Bottomsheet/bottom_sheet_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providerList = [
  ChangeNotifierProvider(create: (_) => AuthProvider()),
  ChangeNotifierProvider(create: (_) => BottomSheetProvider()),
];
