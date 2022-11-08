import 'package:foodsrestaurant/utils/common_imports.dart';

import 'order_detail_controller.dart';

class OrderDetailScreen extends StatelessWidget {
  OrderDetailScreen({Key? key}) : super(key: key);

  OrderDetailController orderDetailController =
      Get.put(OrderDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderDetailController>(
      builder: (controller) {
        orderDetailController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: apBar(),
          body: SingleChildScrollView(
            child: Container(
              margin: screenMargin,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Order ID: #100014",
                                style: regular16.copyWith(color: appColor)),
                            Text("Delivery", style: regular16),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "20 Jan 2022  18:20",
                              style: regular14.copyWith(color: colorGrey),
                            ),
                            InkWell(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.r),
                                    color: appColor),
                                margin: EdgeInsets.symmetric(vertical: 10.h)
                                    .copyWith(right: 5.w),
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 20.w),
                                alignment: Alignment.center,
                                child: Text(
                                  "Cash On Delivery",
                                  style: regular14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: const Divider(
                      color: colorGrey,
                      indent: 20,
                      endIndent: 20,
                      thickness: 1,
                      height: 1,
                    ),
                  ),
                  Text(
                    "Item: 1",
                    style: regular14,
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: colorBGCard),
                    child: UnicornOutlineButton(
                      buttonBgColor: colorBGCard,
                      strokeWidth: 3,
                      radius: 16.r,
                      gradient:
                          LinearGradient(colors: [colorWhite, colorBGCard]),
                      child: Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          margin: EdgeInsets.symmetric(vertical: 20.h),
                          decoration: BoxDecoration(
                              color: colorBGCard,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 70.sp,
                                width: 70.sp,
                                decoration: const BoxDecoration(
                                    color: colorGrey, shape: BoxShape.circle),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cheese Burger",
                                      style:
                                          regular14.copyWith(color: colorGrey),
                                    ),
                                    Text(
                                      "Rs. 250",
                                      style: regular14,
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: "Quantity:",
                                      style:
                                          regular14.copyWith(color: colorGrey),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '1',
                                            style: regular14.copyWith(
                                                color: appColor)),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5.r),
                                          color: appColor),
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10.h)
                                              .copyWith(right: 5.w),
                                      padding: EdgeInsets.symmetric(
                                          vertical: 5.h, horizontal: 15.w),
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Non-veg",
                                        style:
                                            regular14.copyWith(fontSize: 10.sp),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.r),
                        color: colorBGCard),
                    child: UnicornOutlineButton(
                      buttonBgColor: colorBGCard,
                      strokeWidth: 3,
                      radius: 16.r,
                      gradient:
                          LinearGradient(colors: [colorWhite, colorBGCard]),
                      child: Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 20.h),
                          margin: EdgeInsets.symmetric(vertical: 15.h),
                          decoration: BoxDecoration(
                              color: colorBGCard,
                              borderRadius: BorderRadius.circular(5.r)),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "Customer Details",
                                  style: regular16.copyWith(color: colorGrey),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 70.sp,
                                    width: 70.sp,
                                    decoration: const BoxDecoration(
                                        color: colorGrey,
                                        shape: BoxShape.circle),
                                  ),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 20.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Customer123",
                                            style: regular14.copyWith(
                                                color: colorGrey),
                                          ),
                                          Text(
                                            "5/2582 Lucknow 2542 Gali India",
                                            maxLines: 1,
                                            style: regular14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.h),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Item Price",
                              style: regular14.copyWith(color: colorGrey),
                            ),
                            Text(
                              "Rs. 120",
                              style: regular14,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Addons",
                              style: regular14.copyWith(color: colorGrey),
                            ),
                            Text(
                              "Rs. 0",
                              style: regular14,
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15.h),
                          child: const Divider(
                            color: colorGrey,
                            indent: 20,
                            endIndent: 20,
                            thickness: 1,
                            height: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Discount",
                              style: regular14.copyWith(color: colorGrey),
                            ),
                            Text(
                              "Rs. 0",
                              style: regular14,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery man tips",
                              style: regular14.copyWith(color: colorGrey),
                            ),
                            Text(
                              "Rs. 40",
                              style: regular14,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Vat/Tax",
                              style: regular14.copyWith(color: colorGrey),
                            ),
                            Text(
                              "00%",
                              style: regular14,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Fee",
                              style: regular14.copyWith(color: colorGrey),
                            ),
                            Text(
                              "Rs. 20",
                              style: regular14,
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15.h),
                          child: const Divider(
                            color: colorGrey,
                            indent: 20,
                            endIndent: 20,
                            thickness: 1,
                            height: 1,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Amount",
                              style: regular14.copyWith(color: appColor),
                            ),
                            Text(
                              "Rs. 80",
                              style: regular14.copyWith(color: appColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
      },
    );
  }

  AppBar apBar() {
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
      title: const Text(
        "Order Details",
        style: TextStyle(color: colorWhite),
      ),
    );
  }
}
