import 'package:foodsrestaurant/utils/common_imports.dart';

import 'campaign_detail_controller.dart';

class CampaignDetailScreen extends StatelessWidget {
  CampaignDetailScreen({Key? key}) : super(key: key);

  CampaignDetailController campaignDetailController =
      Get.put(CampaignDetailController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CampaignDetailController>(
      builder: (controller) {
        campaignDetailController = controller;
        return SafeArea(
            child: Scaffold(
          body: Column(
            children: [
              Image.asset(
                "assets/images/banner1.png",
                height: 260.h,
                width: double.infinity,
              ),
              Container(
                margin: screenMargin,
                child: Column(
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100.r),
                          child: Image.asset(
                            "assets/images/f1.png",
                            height: 70.sp,
                            width: 70.sp,
                          ),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 15.h, horizontal: 15.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mega Sale",
                                    style: regular14,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Date  ",
                                      style: regular14.copyWith(
                                          color: colorGrey, fontSize: 12.sp),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '20 Aug 2022 - 20 Feb 2023',
                                            style: regular14.copyWith(
                                                color: appColor,
                                                fontSize: 12.sp)),
                                      ],
                                    ),
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: "Daily Time  ",
                                      style: regular14.copyWith(
                                          color: colorGrey, fontSize: 12.sp),
                                      children: <TextSpan>[
                                        TextSpan(
                                            text: '00:01 - 23:59',
                                            style: regular14.copyWith(
                                                color: appColor,
                                                fontSize: 12.sp)),
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ],
                    ),
                    Text(
                      "This is a test campain by admin. You can join for testing purposes only.Offer your best food and.This is a test campain by admin. You can join for testing purposes only. Offer your best food and..",
                      style:
                          regular14.copyWith(color: colorGrey, fontSize: 12.sp),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30),
                child: CenterButton(
                    ontap: () {
                      //  Get.to(ProfileScreen());
                    },
                    text: "Join Now"),
              ),
            ],
          ),
        ));
      },
    );
  }
}
