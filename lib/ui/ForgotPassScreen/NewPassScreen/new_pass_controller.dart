import 'package:foodsrestaurant/utils/common_imports.dart';

class NewPassController extends GetxController {
  TextEditingController newpassController = TextEditingController();
  TextEditingController confipassController = TextEditingController();

  bool newPasseye = true;
  bool confiPasseye = true;

  newPasshideeye() {
    newPasseye = !newPasseye;
    update();
  }

  confiPasshideeye() {
    confiPasseye = !confiPasseye;
    update();
  }
}
