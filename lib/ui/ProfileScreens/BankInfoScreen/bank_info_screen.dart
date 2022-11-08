import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';

import 'bank_info_controller.dart';

class BankInfoScreen extends StatelessWidget {
  BankInfoScreen({Key? key}) : super(key: key);

  BankInfoController bankInfoController = Get.put(BankInfoController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BankInfoController>(
      builder: (controller) {
        bankInfoController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
            margin: screenMargin.copyWith(left: 20, right: 20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  "assets/images/bankinfo_v1.svg",
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.h, bottom: 15.h),
                  child: Text(
                    "Currently you have not yet added any bank account. Please add bank account",
                    textAlign: TextAlign.center,
                    style:
                        regular14.copyWith(fontSize: 12.sp, color: colorGrey),
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
      leading: InkWell(
        onTap: () {
          Get.back();
        },
        child: const Icon(
          Icons.arrow_back_ios_new,
          color: colorWhite,
        ),
      ),
      title: const Text("Bank Info", style: TextStyle(color: colorWhite)),
    );
  }
}
