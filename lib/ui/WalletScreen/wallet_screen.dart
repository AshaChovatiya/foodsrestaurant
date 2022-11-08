import 'package:foodsrestaurant/utils/common_imports.dart';

import '../WithDrawHistoryScreen/withdraw_history_screen.dart';
import 'wallet_controller.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({Key? key}) : super(key: key);

  WalletController walletController = Get.put(WalletController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WalletController>(
      builder: (controller) {
        walletController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
            margin: screenMargin,
            child: ListView(
              children: [
                Container(
                  child: UnicornOutlineButton(
                    buttonBgColor: colorBGCard,
                    strokeWidth: 3,
                    radius: 16.r,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [colorGrey, Colors.transparent]),
                    child: Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20.h),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/walletcard.png",
                              fit: BoxFit.cover,
                              height: 100.sp,
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Withdrawable Amount",
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
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: colorBGCard),
                            child: UnicornOutlineButton(
                              buttonBgColor: colorBGCard,
                              strokeWidth: 1,
                              radius: 16.r,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [colorGrey, colorBGCard]),
                              child: Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.r),
                                      color: colorBGCard),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 25.h, horizontal: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Rs.5052",
                                        style: regular18.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: appColor,
                                        ),
                                      ),
                                      SizedBox(height: 15.h),
                                      Text(
                                        "Pen Withdraw",
                                        style: regular14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: colorBGCard),
                            child: UnicornOutlineButton(
                              buttonBgColor: colorBGCard,
                              strokeWidth: 1,
                              radius: 16.r,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [colorGrey, colorBGCard]),
                              child: Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.r),
                                      color: colorBGCard),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 25.h, horizontal: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Rs.5052",
                                        style: regular18.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: appColor,
                                        ),
                                      ),
                                      SizedBox(height: 15.h),
                                      Text(
                                        "Withdraw",
                                        style: regular14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: colorBGCard),
                            child: UnicornOutlineButton(
                              buttonBgColor: colorBGCard,
                              strokeWidth: 1,
                              radius: 16.r,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [colorGrey, colorBGCard]),
                              child: Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.r),
                                      color: colorBGCard),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 25.h, horizontal: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Rs.5052",
                                        style: regular18.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: appColor,
                                        ),
                                      ),
                                      SizedBox(height: 15.h),
                                      Text(
                                        "Collected Cash",
                                        style: regular14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(vertical: 10.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                color: colorBGCard),
                            child: UnicornOutlineButton(
                              buttonBgColor: colorBGCard,
                              strokeWidth: 1,
                              radius: 16.r,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [colorGrey, colorBGCard]),
                              child: Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16.r),
                                      color: colorBGCard),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 25.h, horizontal: 20),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Rs.5052",
                                        style: regular18.copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          color: appColor,
                                        ),
                                      ),
                                      SizedBox(height: 15.h),
                                      Text(
                                        "Total Earning",
                                        style: regular14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Withdraw History", style: regular14),
                      InkWell(
                        onTap: () {
                          Get.to(WithdrawHistoryScreen());
                        },
                        child: Text(
                          "View All",
                          style: regular14.copyWith(
                            color: appColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 100.h),
                  alignment: Alignment.center,
                  child: Text(
                    "No withdraw history found ",
                    style: regular14.copyWith(
                      color: colorGrey,
                    ),
                  ),
                ),
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
      backgroundColor: bgColor,
      centerTitle: true,
      title: Image.asset(
        "assets/images/wallet.png",
        height: 20,
        fit: BoxFit.cover,
      ),
    );
  }
}
