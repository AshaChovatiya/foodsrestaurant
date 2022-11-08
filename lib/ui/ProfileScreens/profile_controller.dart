import 'package:foodsrestaurant/utils/common_imports.dart';

class ProfileController extends GetxController {
  bool switchValue = true;

  switchNOtification(value) {
    switchValue = value;
    update();
  }
}
