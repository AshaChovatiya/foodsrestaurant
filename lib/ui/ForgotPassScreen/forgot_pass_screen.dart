import 'package:foodsrestaurant/utils/common_imports.dart';

import 'VerifyCodeScreen/verify_code_screen.dart';
import 'forgot_pass_controller.dart';

class ForgotPassScreen extends StatelessWidget {
  ForgotPassScreen({Key? key}) : super(key: key);

  ForgotPassController forgotPassController = Get.put(ForgotPassController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPassController>(
      builder: (controller) {
        forgotPassController = controller;
        return SafeArea(
          child: Scaffold(
            backgroundColor: bgColor,
            body: Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Forget Password",
                      style: regular14.copyWith(
                          fontSize: 25.sp,
                          color: appColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Please enter your registered mobile number to\nreset your password",
                      style: regular14,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: CommonTextfield(
                        controller: forgotPassController.mobileController,
                        hintText: "Mobile Number",
                        prefixWidget: const Icon(
                          Icons.call_outlined,
                          color: colorWhite,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40.w),
                      child: CenterButton(
                        ontap: () {
                          Get.to(() => VerifyCodeScreen());
                        },
                        text: "Send Code",
                        fontsize: 16.sp,
                        fontWeight: FontWeight.w500,
                        radius: 12.r,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
