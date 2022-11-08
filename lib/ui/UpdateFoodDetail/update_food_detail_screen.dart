import 'package:foodsrestaurant/utils/common_imports.dart';
import 'update_food_detail_controller.dart';

class UpdateFoodDetailScreen extends StatelessWidget {
  UpdateFoodDetailScreen({Key? key}) : super(key: key);

  UpdateFoodDetailController updateFoodDetailController =
      Get.put(UpdateFoodDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UpdateFoodDetailController>(
      builder: (controller) {
        updateFoodDetailController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
            margin: screenMargin,
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Price",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    CommonTextfield(
                        controller:
                            updateFoodDetailController.foodpriceController,
                        hintText: "Rs. 00.00"),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount",
                                  style: regular14.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: colorGrey),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: colorBGCard),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 15.h, horizontal: 15.w),
                                  child: Text(
                                    "Discount",
                                    style: regular14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discount Type",
                                  style: regular14.copyWith(
                                      fontWeight: FontWeight.w400,
                                      color: colorGrey),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.r),
                                      color: colorBGCard),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 15.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Percent",
                                        style: regular14,
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        color: appColor,
                                        size: 40.sp,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Category",
                                style: regular14.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: colorGrey),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: colorBGCard),
                                padding: EdgeInsets.symmetric(
                                    vertical: 5.h, horizontal: 15.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Select",
                                      style: regular14,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: appColor,
                                      size: 40.sp,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount Type",
                                style: regular14.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: colorGrey),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: colorBGCard),
                                padding: EdgeInsets.symmetric(
                                    vertical: 5.h, horizontal: 15.w),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Select",
                                      style: regular14,
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: appColor,
                                      size: 40.sp,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Attributr",
                        style: regular14.copyWith(
                            fontWeight: FontWeight.w400, color: colorGrey),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 8.h, 0, 15.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: UnicornOutlineButton(
                                buttonBgColor:
                                    updateFoodDetailController.selectedIndex ==
                                            0
                                        ? appColor
                                        : colorBGCard,
                                strokeWidth: 1,
                                radius: 8.r,
                                gradient: LinearGradient(
                                    colors: updateFoodDetailController
                                                .selectedIndex ==
                                            0
                                        ? [colorWhite, colorBGCard]
                                        : [colorGrey, colorBGCard]),
                                child: Text('Capacity', style: regular14),
                                onPressed: () {
                                  updateFoodDetailController.capacityIndex();
                                },
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: UnicornOutlineButton(
                                buttonBgColor:
                                    updateFoodDetailController.selectedIndex ==
                                            1
                                        ? appColor
                                        : colorBGCard,
                                strokeWidth: 1,
                                radius: 8.r,
                                gradient: LinearGradient(
                                    colors: updateFoodDetailController
                                                .selectedIndex ==
                                            1
                                        ? [colorWhite, colorBGCard]
                                        : [colorGrey, colorBGCard]),
                                child: Text('Size', style: regular14),
                                onPressed: () {
                                  updateFoodDetailController.sizeIndex();
                                },
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: UnicornOutlineButton(
                                buttonBgColor:
                                    updateFoodDetailController.selectedIndex ==
                                            2
                                        ? appColor
                                        : colorBGCard,
                                strokeWidth: 1,
                                radius: 8.r,
                                gradient: LinearGradient(
                                    colors: updateFoodDetailController
                                                .selectedIndex ==
                                            2
                                        ? [colorWhite, colorBGCard]
                                        : [colorGrey, colorBGCard]),
                                child: Text('Type', style: regular14),
                                onPressed: () {
                                  updateFoodDetailController.typeIndex();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: CommonTextfield(
                          controller:
                              updateFoodDetailController.varientController,
                          hintText: "No variant added yet"),
                    ),
                    SizedBox(width: 10.w),
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
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Addons",
                        style: regular14.copyWith(
                            fontWeight: FontWeight.w400, color: colorGrey),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CommonTextfield(
                          controller:
                              updateFoodDetailController.foodpriceController,
                          hintText: "Addons"),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Restaurant Close",
                              style: regular14.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: colorGrey),
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: colorBGCard),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 15.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pick Time",
                                    style: regular14,
                                  ),
                                  const Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: colorWhite,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Restaurant Close",
                              style: regular14.copyWith(
                                  fontWeight: FontWeight.w400,
                                  color: colorGrey),
                            ),
                            SizedBox(height: 5.h),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: colorBGCard),
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 15.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Pick Time",
                                    style: regular14,
                                  ),
                                  const Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: colorWhite,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Food Image",
                      style: regular14.copyWith(
                          fontWeight: FontWeight.w400, color: colorGrey),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(vertical: 20.h),
                      child: Image.asset(
                        "assets/images/addImage.png",
                        height: 130.sp,
                        width: 130.sp,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                  ],
                ),
                CenterButton(
                    ontap: () {
                      // Get.to(CafeDashBoardScreen());
                    },
                    text: "Next Step"),
                SizedBox(height: 40.h),
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
          const Text("Update Food Detail", style: TextStyle(color: colorWhite)),
    );
  }
}
