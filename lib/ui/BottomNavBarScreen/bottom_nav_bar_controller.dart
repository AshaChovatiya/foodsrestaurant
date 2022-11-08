import 'package:foodsrestaurant/ui/CafeDashBoardScreen/cafe_dashboard_screen.dart';
import 'package:foodsrestaurant/ui/HomeScreen/home_screen.dart';
import 'package:foodsrestaurant/ui/OrderScreen/order_screen.dart';
import 'package:foodsrestaurant/ui/ProfileScreens/profile_screen.dart';
import 'package:foodsrestaurant/ui/WalletScreen/wallet_screen.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';

class BottomNavBarController extends GetxController {
  int currentTab = 0;

  final List<Widget> screens = [
    HomeScreen(),
    OrderScreen(),
    CafeDashBoardScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];

  onPressIndex({required index}) {
    currentTab = index;
    update();
  }
}
