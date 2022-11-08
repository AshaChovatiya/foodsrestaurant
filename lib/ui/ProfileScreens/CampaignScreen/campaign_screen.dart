import 'package:foodsrestaurant/ui/ProfileScreens/CampaignScreen/campaign_controller.dart';
import 'package:foodsrestaurant/utils/common_imports.dart';

import '../CampaignDetailScreen/campaign_detail_screen.dart';

class CampaignScreen extends StatelessWidget {
  CampaignScreen({Key? key}) : super(key: key);

  CampaignController campaignController = Get.put(CampaignController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CampaignController>(
      builder: (controller) {
        campaignController = controller;

        return SafeArea(
            child: Scaffold(
          appBar: appBar(),
          body: Container(
            margin: screenMargin,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: colorBGCard),
                  child: UnicornOutlineButton(
                    buttonBgColor: colorBGCard,
                    strokeWidth: 3,
                    radius: 5.r,
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [colorGrey, colorBGCard]),
                    child: Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: colorBGCard,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/f1.png",
                              width: 105.sp,
                              fit: BoxFit.cover,
                            ),
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 15.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mega Sale",
                                        style: regular14,
                                      ),
                                      Text(
                                        "This is a test campain by admin. You can join for testing purposes only.",
                                        style: regular14.copyWith(
                                            color: colorGrey, fontSize: 10.sp),
                                      ),
                                      Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Get.to(CampaignDetailScreen());
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.r),
                                                  color: appColor),
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 10.h),
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 5.h,
                                                  horizontal: 10.w),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Join Now",
                                                style: regular14.copyWith(
                                                    fontSize: 12.sp),
                                              ),
                                            ),
                                          ),
                                          const Spacer(),
                                          Icon(
                                            Icons.add_circle_outline,
                                            color: colorWhite,
                                            size: 18.sp,
                                          ),
                                          SizedBox(width: 5.w),
                                          Text(
                                            "20 Aug 2022",
                                            style: regular14.copyWith(
                                                fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    onPressed: () {},
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
      title: const Text("Campaign", style: TextStyle(color: colorWhite)),
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
