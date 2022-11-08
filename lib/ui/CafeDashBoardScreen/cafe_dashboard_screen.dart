import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodsrestaurant/ui/CafeDashBoardScreen/cafe_dashboard_controller.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';
import '../RestaurantSettingScreen/restaurant_setting_screen.dart';
import '../UpdateFoodScreen/update_food_screen.dart';

class CafeDashBoardScreen extends StatelessWidget {
  CafeDashBoardScreen({Key? key}) : super(key: key);

  CafeDashBoardController cafeDashBoardController =
      Get.put(CafeDashBoardController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CafeDashBoardController>(
      builder: (controller) {
        cafeDashBoardController = controller;
        return SafeArea(
            child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/images/banner.png",
                    height: 260.h,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 30.h,
                    right: 12.w,
                    child: UnicornOutlineButton(
                      buttonBgColor: appColor,
                      strokeWidth: 1,
                      radius: 8.r,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [colorWhite, appColor]),
                      onPressed: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.r),
                            color: appColor),
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        alignment: Alignment.center,
                        child: Text(
                          "Free Delivery",
                          style: regular14,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 12.w,
                    top: 12.h,
                    child: Image.asset(
                      "assets/icons/edit.png",
                      height: 50.h,
                      width: 50.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: screenMargin,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(RestaurantSettingScreen());
                            },
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100.r),
                                  child: Image.asset(
                                    "assets/images/banner.png",
                                    fit: BoxFit.cover,
                                    height: 70.sp,
                                    width: 70.sp,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 15.h, horizontal: 15.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Redcliff Cafe",
                                            style: regular14,
                                          ),
                                          Text(
                                            "House: 00, Road: 00, Stree: 00, Test City",
                                            style: regular14.copyWith(
                                                color: colorGrey,
                                                fontSize: 12.sp),
                                          ),
                                          Text(
                                            "⭐ 0.0 Rating",
                                            style: regular14.copyWith(
                                                color: colorGrey,
                                                fontSize: 12.sp),
                                          ),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 8.h, 0, 15.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: UnicornOutlineButton(
                                    buttonBgColor:
                                        cafeDashBoardController.selectedIndex ==
                                                0
                                            ? appColor
                                            : colorBGCard,
                                    strokeWidth: 1,
                                    radius: 8.r,
                                    gradient: LinearGradient(
                                        colors: cafeDashBoardController
                                                    .selectedIndex ==
                                                0
                                            ? [colorWhite, colorBGCard]
                                            : [colorGrey, colorBGCard]),
                                    child: Text('All', style: regular14),
                                    onPressed: () {
                                      cafeDashBoardController.allIndex();
                                    },
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: UnicornOutlineButton(
                                    buttonBgColor:
                                        cafeDashBoardController.selectedIndex ==
                                                1
                                            ? appColor
                                            : colorBGCard,
                                    strokeWidth: 1,
                                    radius: 8.r,
                                    gradient: LinearGradient(
                                        colors: cafeDashBoardController
                                                    .selectedIndex ==
                                                1
                                            ? [colorWhite, colorBGCard]
                                            : [colorGrey, colorBGCard]),
                                    child: Text('Veg', style: regular14),
                                    onPressed: () {
                                      cafeDashBoardController.vegIndex();
                                    },
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Expanded(
                                  child: UnicornOutlineButton(
                                    buttonBgColor:
                                        cafeDashBoardController.selectedIndex ==
                                                2
                                            ? appColor
                                            : colorBGCard,
                                    strokeWidth: 1,
                                    radius: 8.r,
                                    gradient: LinearGradient(
                                        colors: cafeDashBoardController
                                                    .selectedIndex ==
                                                2
                                            ? [colorWhite, colorBGCard]
                                            : [colorGrey, colorBGCard]),
                                    child: Text("Non-veg", style: regular14),
                                    onPressed: () {
                                      cafeDashBoardController.nvegIndex();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Add Language",
                                style: regular14,
                              ),
                              const Icon(
                                Icons.add_circle_outline,
                                color: colorWhite,
                              )
                            ],
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          ListView.builder(
                            itemCount: 3,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) =>
                                menuItems(),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
      },
    );
  }

  Widget menuItems() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r), color: colorBGCard),
      child: Row(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
                color: colorTextGrey,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5.r),
                    bottomLeft: Radius.circular(5.r))),
            child: const Icon(Icons.add_circle_outline),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Meringue",
                  style: regular16,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        unratedColor: colorGrey,
                        itemCount: 5,
                        itemSize: 16.sp,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 1),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: appColor,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "4.0",
                        style: TextStyle(color: colorGrey, fontSize: 12.sp),
                      ),
                    ],
                  ),
                ),
                Text(
                  "Rs. 200",
                  style: regular16,
                ),
              ],
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Get.to(UpdateFoodScreen());
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.w),
              child: SvgPicture.asset(
                "assets/icons/pen.svg",
                height: 20.sp,
                width: 20.sp,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: SvgPicture.asset(
              "assets/icons/delete.svg",
              height: 20.sp,
              width: 20.sp,
            ),
          )
        ],
      ),
    );
  }
}
