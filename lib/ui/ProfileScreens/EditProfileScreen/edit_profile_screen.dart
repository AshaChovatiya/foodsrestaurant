import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodsrestaurant/ui/ProfileScreens/EditProfileScreen/edit_profile_controller.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  EditProfileController editProfileController =
      Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EditProfileController>(
      builder: (controller) {
        editProfileController = controller;
        return SafeArea(
            child: Scaffold(
          body: Container(
            margin: screenMargin.copyWith(top: 50),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(color: appColor, width: 2)),
                        padding: const EdgeInsets.all(10),
                        margin: EdgeInsets.only(bottom: 10.h),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.r),
                          child: Image.asset(
                            "assets/images/manIcon.png",
                            fit: BoxFit.cover,
                            height: 120.sp,
                            width: 120.sp,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 0,
                        child: SvgPicture.asset(
                          "assets/icons/camera.svg",
                          height: 30.sp,
                          width: 30.sp,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 18.h),
                Text(
                  "Food Restaurant",
                  style: regular18.copyWith(
                      fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
                Text(
                  "@deliveryman123",
                  style: regular16.copyWith(
                      fontWeight: FontWeight.w400, color: colorGrey),
                ),
                SizedBox(height: 15.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "First Name",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller: editProfileController.nameController,
                        hintText: "Enter Name"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Last Name",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller: editProfileController.lnameController,
                        hintText: "Enter Name"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller: editProfileController.emailController,
                        hintText: "@restaurant123"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Change Password",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller: editProfileController.passController,
                        hintText: "**********"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                CenterButton(
                    ontap: () {
                      // Get.to(ProfileScreen());
                    },
                    text: "Update"),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ));
      },
    );
  }
}
