import 'package:foodsrestaurant/utils/common_imports.dart';

class LoginController extends GetxController {
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool passeye = true;
  passhideeye() {
    passeye = !passeye;
    update();
  }
}
