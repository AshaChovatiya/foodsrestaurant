import 'package:get/get.dart';

class OrderController extends GetxController {
  int selectedIndex = 0;

  onTapOrderType(index) {
    selectedIndex = index;
    update();
  }

  allIndex() {
    selectedIndex = 0;
    update();
  }

  weekIndex() {
    selectedIndex = 1;
    update();
  }

  monthIndex() {
    selectedIndex = 2;
    update();
  }
}
