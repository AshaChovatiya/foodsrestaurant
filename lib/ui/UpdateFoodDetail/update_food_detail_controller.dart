import 'package:foodsrestaurant/utils/common_imports.dart';

class UpdateFoodDetailController extends GetxController {
  TextEditingController foodpriceController = TextEditingController();
  TextEditingController addonController = TextEditingController();
  TextEditingController varientController = TextEditingController();

  int selectedIndex = 0;

  onTapOrderType(index) {
    selectedIndex = index;
    update();
  }

  capacityIndex() {
    selectedIndex = 0;
    update();
  }

  sizeIndex() {
    selectedIndex = 1;
    update();
  }

  typeIndex() {
    selectedIndex = 2;
    update();
  }
}
