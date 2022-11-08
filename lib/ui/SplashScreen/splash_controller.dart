import 'dart:async';
import 'package:foodsrestaurant/utils/common_imports.dart';
import '../LoginScreen/login_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () => Get.offAll(LoginScreen()));
  }
}
