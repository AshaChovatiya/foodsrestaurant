import 'package:foodsrestaurant/utils/common_imports.dart';

import 'withdraw_history_controller.dart';

class WithdrawHistoryScreen extends StatelessWidget {
  WithdrawHistoryScreen({Key? key}) : super(key: key);

  WithdrawHistoryController withdrawHistoryController =
      Get.put(WithdrawHistoryController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WithdrawHistoryController>(
      builder: (controller) {
        withdrawHistoryController = controller;
        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Center(
            child: Text(
              "No withdraw history found",
              style: regular14.copyWith(color: colorGrey),
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
          const Text("Withdraw History", style: TextStyle(color: colorWhite)),
      actions: [
        PopupMenuButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4.r)),
          ),
          offset: const Offset(0, 40),
          itemBuilder: (_) => <PopupMenuItem<String>>[
            const PopupMenuItem<String>(
                value: 'All',
                child: Text(
                  "All",
                )),
            const PopupMenuItem<String>(
                value: 'Pending',
                child: Text(
                  "Pending",
                )),
            const PopupMenuItem<String>(
                value: 'Approved',
                child: Text(
                  "Approved",
                )),
            const PopupMenuItem<String>(
                value: 'Denied',
                child: Text(
                  "Denied",
                )),
          ],
          child: Icon(
            Icons.arrow_drop_down,
            size: 50.sp,
            color: colorWhite,
          ),
        ),
        SizedBox(width: 10.w)
      ],
    );
  }
}
