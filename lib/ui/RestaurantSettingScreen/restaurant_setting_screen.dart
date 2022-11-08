import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';
import 'restaurant_setting_controller.dart';

class RestaurantSettingScreen extends StatelessWidget {
  RestaurantSettingScreen({Key? key}) : super(key: key);

  RestaurantSettingController restaurantSettingController =
      Get.put(RestaurantSettingController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RestaurantSettingController>(
      builder: (controller) {
        restaurantSettingController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
            margin: screenMargin,
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Image.asset(
                    "assets/images/resimg.png",
                    height: 130.sp,
                    width: 130.sp,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 15.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Restaurant Name",
                          style: regular14.copyWith(
                              fontWeight: FontWeight.w400, color: colorGrey),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CommonTextfield(
                            controller:
                                restaurantSettingController.rnameController,
                            hintText: "Redcliff Cafe"),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Contact Number",
                          style: regular14.copyWith(
                              fontWeight: FontWeight.w400, color: colorGrey),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CommonTextfield(
                            controller:
                                restaurantSettingController.numberController,
                            hintText: "+91 25250 25250"),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Address",
                          style: regular14.copyWith(
                              fontWeight: FontWeight.w400, color: colorGrey),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CommonTextfield(
                            controller:
                                restaurantSettingController.addressController,
                            hintText:
                                "House: 00,  Road: 00, Streed: 00, Test City"),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Minimum Order Amount",
                          style: regular14.copyWith(
                              fontWeight: FontWeight.w400, color: colorGrey),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        CommonTextfield(
                            controller:
                                restaurantSettingController.amountController,
                            hintText: "100.0"),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                    SizedBox(height: 15.h),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Type",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      height: 50.h,
                      child: ListView.builder(
                        itemCount: restaurantSettingController.dataList.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Row(
                          children: [
                            Checkbox(
                              // checkColor: appColor,
                              activeColor: appColor,
                              value: restaurantSettingController.checkList
                                  .contains(restaurantSettingController
                                      .dataList[index]),
                              onChanged: (val) {
                                restaurantSettingController.onChanged(index);
                              },
                            ),
                            Text(restaurantSettingController.dataList[index],
                                style: regular16)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Gst",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CupertinoSwitch(
                      value: restaurantSettingController.switchValue,
                      activeColor: appColor,
                      onChanged: (value) {
                        restaurantSettingController.switchNOtification(value);
                      },
                    ),
                  ],
                ),
                CommonTextfield(
                    controller: restaurantSettingController.gstController,
                    hintText: "GST Rate %"),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text(
                    "Daily Schedule Time",
                    style: regular14.copyWith(
                        fontWeight: FontWeight.w400, color: colorGrey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  child: ListView.builder(
                    itemCount: restaurantSettingController.days.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) => Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              restaurantSettingController.days[index],
                              style: regular16,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 15.h, horizontal: 15.w),
                            margin: EdgeInsets.symmetric(horizontal: 20.w),
                            decoration: BoxDecoration(
                                color: colorBGCard,
                                borderRadius: BorderRadius.circular(8.r)),
                            child: Row(
                              children: [
                                Text(
                                  "00:01 - 23:59",
                                  style: regular16,
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                SvgPicture.asset(
                                  "assets/icons/redClose.svg",
                                  height: 30.sp,
                                  width: 30.sp,
                                )
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 15.h, horizontal: 10.w),
                              decoration: BoxDecoration(
                                  color: appColor,
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: const Icon(
                                Icons.add,
                                color: colorWhite,
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                  margin: EdgeInsets.symmetric(vertical: 5.h),
                  decoration: BoxDecoration(
                      color: colorBGCard,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "GST Rate %",
                        style: regular14.copyWith(
                            fontWeight: FontWeight.w400, color: colorGrey),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CupertinoSwitch(
                        value: restaurantSettingController.gstrateSwitch,
                        activeColor: appColor,
                        onChanged: (value) {
                          restaurantSettingController.gstrateSwitchon(value);
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                  margin: EdgeInsets.symmetric(vertical: 5.h),
                  decoration: BoxDecoration(
                      color: colorBGCard,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery",
                        style: regular14.copyWith(
                            fontWeight: FontWeight.w400, color: colorGrey),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CupertinoSwitch(
                        value: restaurantSettingController.deliverySwitch,
                        activeColor: appColor,
                        onChanged: (value) {
                          restaurantSettingController.deliverySwitchon(value);
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
                  margin: EdgeInsets.symmetric(vertical: 5.h),
                  decoration: BoxDecoration(
                      color: colorBGCard,
                      borderRadius: BorderRadius.circular(8.r)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Take Away",
                        style: regular14.copyWith(
                            fontWeight: FontWeight.w400, color: colorGrey),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CupertinoSwitch(
                        value: restaurantSettingController.takeSwitch,
                        activeColor: appColor,
                        onChanged: (value) {
                          restaurantSettingController.takeSwitchon(value);
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 20.h),
                    child: Image.asset(
                      "assets/images/emptyImage.png",
                      height: 240.h,
                      width: double.infinity,
                    )),
                CenterButton(
                    ontap: () {
                      // Get.to(CafeDashBoardScreen());
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

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: colorWhite,
        ),
      ),
      title:
          const Text("Restaurant Setting", style: TextStyle(color: colorWhite)),
    );
  }
}
