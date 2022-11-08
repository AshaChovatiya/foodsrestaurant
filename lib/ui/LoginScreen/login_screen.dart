import 'package:foodsrestaurant/utils/common_imports.dart';
import '../BottomNavBarScreen/bottom_nav_bar.dart';
import '../ForgotPassScreen/forgot_pass_screen.dart';
import 'login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (controller) {
        loginController = controller;
        return SafeArea(
          child: Scaffold(
            backgroundColor: bgColor,
            body: _buildBodyView(),
          ),
        );
      },
    );
  }

  Widget _buildBodyView() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              "Sign in",
              style: regular14.copyWith(
                  fontSize: 25.sp,
                  color: appColor,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Please enter your register mobile number and password",
              style: regular14,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: CommonTextfield(
                controller: loginController.mobileController,
                hintText: "Mobile Number",
                prefixWidget: const Icon(
                  Icons.person,
                  color: colorWhite,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: CommonTextfield(
                  controller: loginController.passwordController,
                  hintText: "Password",
                  prefixWidget: const Icon(
                    Icons.lock_outline_rounded,
                    color: colorWhite,
                  ),
                  maxLine: 1,
                  isSecure: loginController.passeye,
                  suffixWidget: InkWell(
                    onTap: () {
                      loginController.passhideeye();
                    },
                    child: Icon(
                      loginController.passeye
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: colorGrey,
                      size: 24.sp,
                    ),
                  )),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {
                  Get.to(() => ForgotPassScreen());
                },
                child: Text(
                  "Forget password ?",
                  style: regular16.copyWith(color: const Color(0xff3F3D3D)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 40.w),
              child: CenterButton(
                ontap: () {
                  Get.off(() => const BottomNavBar());
                },
                text: "Log in",
                fontsize: 16.sp,
                fontWeight: FontWeight.w500,
                radius: 12.r,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
