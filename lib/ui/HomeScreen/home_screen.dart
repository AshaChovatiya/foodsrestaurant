import 'package:foodsrestaurant/ui/HomeScreen/home_controller.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';

import 'package:flutter_switch/flutter_switch.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  HomeController homeController = Get.put(HomeController());

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.linear,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      homeController = controller;

      return SafeArea(
        child: Scaffold(
          appBar: appBar(),
          body: SingleChildScrollView(
            child: Container(
              margin: screenMargin,
              child: Column(
                children: [
                  orderDetailCard(),
                  Container(
                    height: 65,
                    margin: EdgeInsets.only(top: 10.h),
                    child: ListView.builder(
                      itemCount: homeController.orderType.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) =>
                          catItemView(index),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.h),
                    child: Row(
                      children: [
                        Checkbox(
                          side: const BorderSide(
                              width: 1,
                              color: colorWhite,
                              style: BorderStyle.solid),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.r)),
                          value: homeController.ischeck,
                          onChanged: homeController.onChangedChecked,
                          activeColor: appColor,
                        ),
                        Expanded(
                          child: Text(
                            "Campaign Order",
                            style: regular14,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100.h,
                  ),
                  Text(
                    "No order found ",
                    style: regular16,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget orderDetailCard() {
    return Container(
      width: double.infinity,
      child: UnicornOutlineButton(
        buttonBgColor: colorBGCard,
        strokeWidth: 3,
        radius: 16.r,
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [colorGrey, colorBGCard]),
        child: Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r), color: colorBGCard),
            margin: EdgeInsets.all(2),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/walletcard.png",
                      fit: BoxFit.cover,
                      height: 112.sp,
                      // width: 112.sp,
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Balance",
                          style: regular14.copyWith(
                            color: colorTextGrey,
                          ),
                        ),
                        Text(
                          "Rs.5000",
                          style: regular14.copyWith(
                              fontSize: 25.sp,
                              color: appColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 15.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                horizontal: 15.h, vertical: 5),
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
                                horizontal: 15.h, vertical: 5),
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
                                horizontal: 15.h, vertical: 5),
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
                )
              ],
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget catItemView(int index) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h).copyWith(right: 10.w),
      child: UnicornOutlineButton(
        buttonBgColor:
            homeController.selectedIndex == index ? appColor : colorBGCard,
        strokeWidth: 1,
        radius: 8.r,
        gradient: LinearGradient(
            colors: homeController.selectedIndex == index
                ? [colorWhite, colorBGCard]
                : [colorGrey, colorBGCard]),
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 10.w),
            child: Text(homeController.orderType[index], style: regular14)),
        onPressed: () {
          homeController.onTapOrderType(index);
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: bgColor,
      title: Image.asset(
        "assets/images/appBarlogo.png",
        fit: BoxFit.cover,
      ),
      actions: [
        SizedBox(width: 30.sp),
        Icon(
          Icons.notifications,
          color: colorWhite,
          size: 30.sp,
        ),
        Container(
          margin: EdgeInsets.only(left: 10.w, right: 10.w),
          child: FlutterSwitch(
            height: 25.h,
            width: 60.w,
            valueFontSize: 10,
            toggleSize: 16,
            borderRadius: 30.r,
            activeColor: appColor,
            value: homeController.status.value,
            activeText: 'open',
            inactiveText: 'close',
            activeTextColor: Colors.white,
            inactiveTextColor: Colors.white,
            padding: 2.5,
            showOnOff: true,
            onToggle: (val) {
              homeController.switchOnOff(val);

              showDialog(
                  context: Get.context!, builder: (context) => openCloseBoxe());
            },
          ),
        ),
      ],
    );
  }

  Widget openCloseBoxe() {
    return AlertDialog(
      backgroundColor: colorBGCard,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.r))),
      actionsPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      alignment: Alignment.center,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/manIcon.png",
            height: 125.h,
            width: 100.w,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30.h),
            child: Text(
              "Are you sure want to change the active status to close for this restaurant temporary ?",
              textAlign: TextAlign.center,
              style: regular14,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: UnicornOutlineButton(
                  buttonBgColor: colorBGCard,
                  strokeWidth: 1,
                  radius: 8.r,
                  gradient: LinearGradient(colors: [colorWhite, colorBGCard]),
                  child: Text('No', style: regular14),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              SizedBox(width: 15.h),
              Expanded(
                child: UnicornOutlineButton(
                  buttonBgColor: appColor,
                  strokeWidth: 1,
                  radius: 8.r,
                  gradient: LinearGradient(colors: [colorWhite, colorBGCard]),
                  child: Text('Yes', style: regular14),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
