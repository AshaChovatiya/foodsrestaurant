import 'package:foodsrestaurant/utils/common_imports.dart';

class RestaurantSettingController extends GetxController {
  TextEditingController rnameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController amountController = TextEditingController();
  TextEditingController gstController = TextEditingController();

  List<String> checkList = [];

  List<String> dataList = [
    "Veg",
    "Non-Veg",
  ];

  onChanged(index) {
    if (checkList.contains(dataList[index])) {
      checkList.remove(dataList[index]);
    } else {
      checkList.add(dataList[index]);
    }
    update();
  }

  bool switchValue = true;
  bool gstrateSwitch = true;
  bool deliverySwitch = true;
  bool takeSwitch = true;

  switchNOtification(value) {
    switchValue = value;
    update();
  }

  gstrateSwitchon(value) {
    gstrateSwitch = value;
    update();
  }

  deliverySwitchon(value) {
    deliverySwitch = value;
    update();
  }

  takeSwitchon(value) {
    takeSwitch = value;
    update();
  }

  List days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Sutrday",
  ];
}
