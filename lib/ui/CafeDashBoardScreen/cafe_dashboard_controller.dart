import 'package:foodsrestaurant/utils/common_imports.dart';

class CafeDashBoardController extends GetxController {
  int selectedIndex = 0;

  onTapOrderType(index) {
    selectedIndex = index;
    update();
  }

  allIndex() {
    selectedIndex = 0;
    update();
  }

  vegIndex() {
    selectedIndex = 1;
    update();
  }

  nvegIndex() {
    selectedIndex = 2;
    update();
  }
}
