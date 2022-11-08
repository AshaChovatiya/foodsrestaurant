import 'package:foodsrestaurant/ui/LoginScreen/login_screen.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';

import 'new_pass_controller.dart';

class NewPassScreen extends StatelessWidget {
  NewPassScreen({Key? key}) : super(key: key);

  NewPassController newPassController = Get.put(NewPassController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewPassController>(
      builder: (controller) {
        newPassController = controller;
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
                      "Set New Password",
                      style: regular14.copyWith(
                          fontSize: 25.sp,
                          color: appColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Please enter your new password & confirm\npassword",
                      style: regular14,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: CommonTextfield(
                          controller: newPassController.newpassController,
                          hintText: "Enter password",
                          prefixWidget: const Icon(
                            Icons.lock_outline_rounded,
                            color: colorWhite,
                          ),
                          maxLine: 1,
                          isSecure: newPassController.newPasseye,
                          suffixWidget: InkWell(
                            onTap: () {
                              newPassController.newPasshideeye();
                            },
                            child: Icon(
                              newPassController.newPasseye
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: colorGrey,
                              size: 24.sp,
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10.h),
                      child: CommonTextfield(
                          controller: newPassController.confipassController,
                          hintText: "Confirm password",
                          prefixWidget: const Icon(
                            Icons.lock_outline_rounded,
                            color: colorWhite,
                          ),
                          maxLine: 1,
                          isSecure: newPassController.confiPasseye,
                          suffixWidget: InkWell(
                            onTap: () {
                              newPassController.confiPasshideeye();
                            },
                            child: Icon(
                              newPassController.confiPasseye
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: colorGrey,
                              size: 24.sp,
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40.w),
                      child: CenterButton(
                        ontap: () {
                          Get.to(() => LoginScreen());
                        },
                        text: "Continue",
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
