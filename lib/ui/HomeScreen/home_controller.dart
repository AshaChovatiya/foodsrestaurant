import 'package:foodsrestaurant/utils/common_imports.dart';

class HomeController extends GetxController {
  final status = false.obs;

  switchOnOff(val) {
    status.value = val;
    update();
  }

  int selectedIndex = 0;
  bool ischeck = false;

  onChangedChecked(value) {
    ischeck = value!;
    update();
  }

  onTapOrderType(index) {
    selectedIndex = index;
    update();
  }

  List orderType = [
    "Pending",
    "Confirmed",
    "Cooking",
    "Ready For Handover",
  ];
}
