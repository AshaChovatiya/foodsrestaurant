import 'package:foodsrestaurant/ui/ForgotPassScreen/NewPassScreen/new_pass_screen.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'verify_code_controller.dart';

class VerifyCodeScreen extends StatelessWidget {
  VerifyCodeScreen({Key? key}) : super(key: key);

  VerifyCodeController verifyCodeController = Get.put(VerifyCodeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerifyCodeController>(
      builder: (controller) {
        verifyCodeController = controller;
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
                      "Verify Code",
                      style: regular14.copyWith(
                          fontSize: 25.sp,
                          color: appColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Please enter your verification code send your\nmobile number.",
                      style: regular14,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    OTPTextField(
                      length: 4,
                      width: double.infinity,
                      fieldWidth: 50.w,
                      controller: verifyCodeController.otpController,
                      spaceBetween: 5.w,
                      style: TextStyle(fontSize: 16.sp, color: colorWhite),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.underline,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40.w),
                      child: CenterButton(
                        ontap: () {
                          Get.to(() => NewPassScreen());
                        },
                        text: "Verify Code",
                        fontsize: 16.sp,
                        fontWeight: FontWeight.w500,
                        radius: 12.r,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Didn’t recive a verification code ?",
                            style: regular14,
                          ),
                          Text(
                            "Resend code",
                            style: regular14.copyWith(color: appColor),
                          ),
                        ],
                      ),
                    ),
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
