import 'package:flutter/cupertino.dart';
import 'package:foodsrestaurant/ui/ProfileScreens/AddFoodScreen/add_food_screen.dart';
import 'package:foodsrestaurant/ui/ProfileScreens/BankInfoScreen/bank_info_screen.dart';
import 'package:foodsrestaurant/ui/ProfileScreens/CampaignScreen/campaign_screen.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';
import 'AddonsScreen/addons_screen.dart';
import 'EditProfileScreen/edit_profile_screen.dart';
import 'profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (controller) {
        profileController = controller;
        return SafeArea(
            child: Scaffold(
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(color: appColor, width: 2)),
                        padding: const EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100.r),
                          child: Image.asset(
                            "assets/images/manIcon.png",
                            fit: BoxFit.cover,
                            height: 100.sp,
                            width: 100.sp,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 100.h,
                        margin: EdgeInsets.zero,
                        child: const VerticalDivider(
                          color: colorWhite,
                          indent: 5,
                          endIndent: 5,
                          width: 1,
                          thickness: 1,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Since Joining",
                            style: regular14.copyWith(
                              color: colorGrey,
                            ),
                          ),
                          Text(
                            "50 Days",
                            style: regular14.copyWith(
                              color: appColor,
                            ),
                          ),
                          Text(
                            "150 Orders",
                            style: regular14.copyWith(
                              color: appColor,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Food",
                              style: regular18.copyWith(
                                  color: colorGrey, fontSize: 28.sp),
                            ),
                            Text(
                              "Restaurant",
                              style: regular18.copyWith(
                                  color: appColor, fontSize: 28.sp),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Image.asset(
                          "assets/images/signout.png",
                          height: 45.h,
                          // width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ListTile(
                        title: Text(
                          "Notification",
                          style: regular18,
                        ),
                        contentPadding: EdgeInsets.zero,
                        trailing: CupertinoSwitch(
                          value: profileController.switchValue,
                          activeColor: appColor,
                          onChanged: (value) {
                            profileController.switchNOtification(value);
                          },
                        ),
                      ),
                      const Divider(
                        color: colorGrey,
                        endIndent: 15,
                        indent: 15,
                        thickness: 1,
                      ),
                      commonProfileListTile(
                        onTaped: EditProfileScreen(),
                        title: "Edit Profile",
                      ),
                      commonProfileListTile(
                        onTaped: BankInfoScreen(),
                        title: "Bank Info",
                      ),
                      commonProfileListTile(
                        onTaped: AddFoodScreen(),
                        title: "Add Food",
                      ),
                      commonProfileListTile(
                        onTaped: CampaignScreen(),
                        title: "Campaign",
                      ),
                      commonProfileListTile(
                        onTaped: AddonsScreen(),
                        title: "Addons",
                      ),
                      commonProfileListTile(
                        // onTaped: OrderScreen(),
                        title: "Language",
                      ),
                      commonProfileListTile(
                        // onTaped: OrderScreen(),
                        title: "Other Option",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
      },
    );
  }

  Widget commonProfileListTile({context, var onTaped, var title}) {
    return Column(
      children: [
        ListTile(
            onTap: () {
              Get.to(onTaped);
            },
            contentPadding: EdgeInsets.zero,
            title: Text(
              title,
              style: regular18,
            ),
            trailing: Container(
              padding: EdgeInsets.all(8.sp),
              decoration: BoxDecoration(
                  color: colorBGCard,
                  borderRadius: BorderRadius.circular(10.r)),
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
                color: colorWhite,
              ),
            )),
        const Divider(
          color: colorGrey,
          endIndent: 15,
          indent: 15,
          thickness: 1,
        ),
      ],
    );
  }
}
