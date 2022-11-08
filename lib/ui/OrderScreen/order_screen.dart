import 'package:foodsrestaurant/utils/common_imports.dart';
import '../OrderDetailScreen/order_detail_screen.dart';
import 'order_controller.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({Key? key}) : super(key: key);

  OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
      builder: (controller) {
        orderController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
            margin: screenMargin,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      color: colorBGCard),
                  child: UnicornOutlineButton(
                    buttonBgColor: colorBGCard,
                    strokeWidth: 3,
                    radius: 16.r,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [colorGrey, colorBGCard]),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Today",
                                style: regular14.copyWith(
                                  color: colorTextGrey,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 3),
                                margin: EdgeInsets.symmetric(vertical: 5.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: bgColor),
                                child: Text(
                                  "Rs.500",
                                  style: regular14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                "This Week",
                                style: regular14.copyWith(
                                  color: colorTextGrey,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 3),
                                margin: EdgeInsets.symmetric(vertical: 5.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: bgColor),
                                child: Text(
                                  "Rs.1200",
                                  style: regular14,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text(
                                "This Month",
                                style: regular14.copyWith(
                                  color: colorTextGrey,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 3),
                                margin: EdgeInsets.symmetric(vertical: 5.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: bgColor),
                                child: Text(
                                  "Rs.4000",
                                  style: regular14,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15.h, 0, 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: UnicornOutlineButton(
                          buttonBgColor: orderController.selectedIndex == 0
                              ? appColor
                              : colorBGCard,
                          strokeWidth: 1,
                          radius: 8.r,
                          gradient: LinearGradient(
                              colors: orderController.selectedIndex == 0
                                  ? [colorWhite, colorBGCard]
                                  : [colorGrey, colorBGCard]),
                          child: Text('All Order', style: regular14),
                          onPressed: () {
                            orderController.allIndex();
                          },
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: UnicornOutlineButton(
                          buttonBgColor: orderController.selectedIndex == 1
                              ? appColor
                              : colorBGCard,
                          strokeWidth: 1,
                          radius: 8.r,
                          gradient: LinearGradient(
                              colors: orderController.selectedIndex == 1
                                  ? [colorWhite, colorBGCard]
                                  : [colorGrey, colorBGCard]),
                          child: Text('Delivered', style: regular14),
                          onPressed: () {
                            orderController.weekIndex();
                          },
                        ),
                      ),
                      SizedBox(width: 10.w),
                      Expanded(
                        child: UnicornOutlineButton(
                          buttonBgColor: orderController.selectedIndex == 2
                              ? appColor
                              : colorBGCard,
                          strokeWidth: 1,
                          radius: 8.r,
                          gradient: LinearGradient(
                              colors: orderController.selectedIndex == 2
                                  ? [colorWhite, colorBGCard]
                                  : [colorGrey, colorBGCard]),
                          child: Text('Returned', style: regular14),
                          onPressed: () {
                            orderController.monthIndex();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => orderItems(),
                  ),
                )
              ],
            ),
          ),
        ));
      },
    );
  }

  Column orderItems() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Order ID: #100014",
                    style: regular14,
                  ),
                  RichText(
                    text: TextSpan(
                      text: "20 Jan 2022   18:20 /",
                      style: regular14.copyWith(color: colorGrey),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' Delivery',
                            style: regular14.copyWith(color: appColor)),
                      ],
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Get.to(() => OrderDetailScreen());
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: appColor),
                  margin: EdgeInsets.fromLTRB(5.w, 10.h, 0, 10.h),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
                  alignment: Alignment.center,
                  child: Text(
                    "Delivered",
                    style: regular14,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 5.h),
          child: const Divider(
            color: colorGrey,
            indent: 20,
            endIndent: 20,
            thickness: 1,
            height: 1,
          ),
        ),
      ],
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: bgColor,
      centerTitle: true,
      title: Image.asset(
        "assets/images/orderResturent.png",
        height: 20,
        fit: BoxFit.cover,
      ),
    );
  }
}
